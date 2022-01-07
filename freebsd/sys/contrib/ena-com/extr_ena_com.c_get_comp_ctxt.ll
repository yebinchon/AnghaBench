; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_get_comp_ctxt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_get_comp_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_comp_ctx = type { i32 }
%struct.ena_com_admin_queue = type { i64, %struct.ena_comp_ctx*, i32 }

@.str = private unnamed_addr constant [68 x i8] c"command id is larger than the queue size. cmd_id: %u queue size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Completion context is occupied\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ena_comp_ctx* (%struct.ena_com_admin_queue*, i64, i32)* @get_comp_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ena_comp_ctx* @get_comp_ctxt(%struct.ena_com_admin_queue* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ena_comp_ctx*, align 8
  %5 = alloca %struct.ena_com_admin_queue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ena_com_admin_queue* %0, %struct.ena_com_admin_queue** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %5, align 8
  %10 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp uge i64 %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %5, align 8
  %19 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i8*, ...) @ena_trc_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %20)
  store %struct.ena_comp_ctx* null, %struct.ena_comp_ctx** %4, align 8
  br label %60

22:                                               ; preds = %3
  %23 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %5, align 8
  %24 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %23, i32 0, i32 1
  %25 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %25, i64 %26
  %28 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %31, %22
  %35 = phi i1 [ false, %22 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @ena_trc_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store %struct.ena_comp_ctx* null, %struct.ena_comp_ctx** %4, align 8
  br label %60

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %5, align 8
  %46 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %45, i32 0, i32 2
  %47 = call i32 @ATOMIC32_INC(i32* %46)
  %48 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %5, align 8
  %49 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %48, i32 0, i32 1
  %50 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %50, i64 %51
  %53 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %44, %41
  %55 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %5, align 8
  %56 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %55, i32 0, i32 1
  %57 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %57, i64 %58
  store %struct.ena_comp_ctx* %59, %struct.ena_comp_ctx** %4, align 8
  br label %60

60:                                               ; preds = %54, %39, %16
  %61 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %4, align 8
  ret %struct.ena_comp_ctx* %61
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trc_err(i8*, ...) #1

declare dso_local i32 @ATOMIC32_INC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
