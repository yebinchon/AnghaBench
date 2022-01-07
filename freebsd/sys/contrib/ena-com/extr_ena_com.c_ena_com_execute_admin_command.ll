; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_execute_admin_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_execute_admin_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_admin_queue = type { i64 }
%struct.ena_admin_aq_entry = type { i32 }
%struct.ena_admin_acq_entry = type { i32 }
%struct.ena_comp_ctx = type { i32 }

@ENA_COM_NO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to submit command [%ld]\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to process command. ret = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue* %0, %struct.ena_admin_aq_entry* %1, i64 %2, %struct.ena_admin_acq_entry* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ena_com_admin_queue*, align 8
  %8 = alloca %struct.ena_admin_aq_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ena_admin_acq_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ena_comp_ctx*, align 8
  %13 = alloca i32, align 4
  store %struct.ena_com_admin_queue* %0, %struct.ena_com_admin_queue** %7, align 8
  store %struct.ena_admin_aq_entry* %1, %struct.ena_admin_aq_entry** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ena_admin_acq_entry* %3, %struct.ena_admin_acq_entry** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %15 = load %struct.ena_admin_aq_entry*, %struct.ena_admin_aq_entry** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.ena_admin_acq_entry*, %struct.ena_admin_acq_entry** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call %struct.ena_comp_ctx* @ena_com_submit_admin_cmd(%struct.ena_com_admin_queue* %14, %struct.ena_admin_aq_entry* %15, i64 %16, %struct.ena_admin_acq_entry* %17, i64 %18)
  store %struct.ena_comp_ctx* %19, %struct.ena_comp_ctx** %12, align 8
  %20 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %21 = call i64 @IS_ERR(%struct.ena_comp_ctx* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %5
  %24 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %25 = load i32, i32* @ENA_COM_NO_DEVICE, align 4
  %26 = call %struct.ena_comp_ctx* @ERR_PTR(i32 %25)
  %27 = icmp eq %struct.ena_comp_ctx* %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %30 = call i32 @PTR_ERR(%struct.ena_comp_ctx* %29)
  %31 = call i32 @ena_trc_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %34 = call i32 @PTR_ERR(%struct.ena_comp_ctx* %33)
  %35 = call i32 @ena_trc_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %38 = call i32 @PTR_ERR(%struct.ena_comp_ctx* %37)
  store i32 %38, i32* %6, align 4
  br label %60

39:                                               ; preds = %5
  %40 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %41 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %42 = call i32 @ena_com_wait_and_process_admin_cq(%struct.ena_comp_ctx* %40, %struct.ena_com_admin_queue* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %48 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @ena_trc_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @ena_trc_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %39
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %36
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.ena_comp_ctx* @ena_com_submit_admin_cmd(%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i64, %struct.ena_admin_acq_entry*, i64) #1

declare dso_local i64 @IS_ERR(%struct.ena_comp_ctx*) #1

declare dso_local %struct.ena_comp_ctx* @ERR_PTR(i32) #1

declare dso_local i32 @ena_trc_dbg(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.ena_comp_ctx*) #1

declare dso_local i32 @ena_trc_err(i8*, i32) #1

declare dso_local i32 @ena_com_wait_and_process_admin_cq(%struct.ena_comp_ctx*, %struct.ena_com_admin_queue*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
