; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_handle_single_admin_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_handle_single_admin_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_admin_queue = type { i32, i32 }
%struct.ena_admin_acq_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ena_comp_ctx = type { i32, i32, i64, i32, i32 }

@ENA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"comp_ctx is NULL. Changing the admin queue running state\0A\00", align 1
@ENA_CMD_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_com_admin_queue*, %struct.ena_admin_acq_entry*)* @ena_com_handle_single_admin_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_com_handle_single_admin_completion(%struct.ena_com_admin_queue* %0, %struct.ena_admin_acq_entry* %1) #0 {
  %3 = alloca %struct.ena_com_admin_queue*, align 8
  %4 = alloca %struct.ena_admin_acq_entry*, align 8
  %5 = alloca %struct.ena_comp_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.ena_com_admin_queue* %0, %struct.ena_com_admin_queue** %3, align 8
  store %struct.ena_admin_acq_entry* %1, %struct.ena_admin_acq_entry** %4, align 8
  %7 = load %struct.ena_admin_acq_entry*, %struct.ena_admin_acq_entry** %4, align 8
  %8 = getelementptr inbounds %struct.ena_admin_acq_entry, %struct.ena_admin_acq_entry* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ENA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.ena_comp_ctx* @get_comp_ctxt(%struct.ena_com_admin_queue* %13, i32 %14, i32 0)
  store %struct.ena_comp_ctx* %15, %struct.ena_comp_ctx** %5, align 8
  %16 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %5, align 8
  %17 = icmp ne %struct.ena_comp_ctx* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = call i32 @ena_trc_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %25 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %60

26:                                               ; preds = %2
  %27 = load i32, i32* @ENA_CMD_COMPLETED, align 4
  %28 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ena_admin_acq_entry*, %struct.ena_admin_acq_entry** %4, align 8
  %31 = getelementptr inbounds %struct.ena_admin_acq_entry, %struct.ena_admin_acq_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %26
  %41 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ena_admin_acq_entry*, %struct.ena_admin_acq_entry** %4, align 8
  %45 = bitcast %struct.ena_admin_acq_entry* %44 to i8*
  %46 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i64 %43, i8* %45, i32 %48)
  br label %50

50:                                               ; preds = %40, %26
  %51 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %52 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %5, align 8
  %57 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ENA_WAIT_EVENT_SIGNAL(i32 %58)
  br label %60

60:                                               ; preds = %22, %55, %50
  ret void
}

declare dso_local %struct.ena_comp_ctx* @get_comp_ctxt(%struct.ena_com_admin_queue*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trc_err(i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @ENA_WAIT_EVENT_SIGNAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
