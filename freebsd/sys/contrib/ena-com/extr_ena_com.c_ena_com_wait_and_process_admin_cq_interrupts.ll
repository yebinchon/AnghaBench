; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_wait_and_process_admin_cq_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_wait_and_process_admin_cq_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_comp_ctx = type { i64, i32, i32, i32 }
%struct.ena_com_admin_queue = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ENA_CMD_SUBMITTED = common dso_local global i64 0, align 8
@ENA_CMD_COMPLETED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [91 x i8] c"The ena device have completion but the driver didn't receive any MSI-X interrupt (cmd %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"The ena device doesn't send any completion for the admin cmd %d status %d\0A\00", align 1
@ENA_COM_TIMER_EXPIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_comp_ctx*, %struct.ena_com_admin_queue*)* @ena_com_wait_and_process_admin_cq_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_wait_and_process_admin_cq_interrupts(%struct.ena_comp_ctx* %0, %struct.ena_com_admin_queue* %1) #0 {
  %3 = alloca %struct.ena_comp_ctx*, align 8
  %4 = alloca %struct.ena_com_admin_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ena_comp_ctx* %0, %struct.ena_comp_ctx** %3, align 8
  store %struct.ena_com_admin_queue* %1, %struct.ena_com_admin_queue** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %11 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ENA_WAIT_EVENT_WAIT(i32 %9, i32 %12)
  %14 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ENA_CMD_SUBMITTED, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %2
  %23 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %24 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @ENA_SPINLOCK_LOCK(i32 %25, i64 %26)
  %28 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %29 = call i32 @ena_com_handle_admin_completion(%struct.ena_com_admin_queue* %28)
  %30 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %31 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %36 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @ENA_SPINLOCK_UNLOCK(i32 %37, i64 %38)
  %40 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ENA_CMD_COMPLETED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %22
  %46 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i32, ...) @ena_trc_err(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %58

50:                                               ; preds = %22
  %51 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i8*, i32, ...) @ena_trc_err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %53, i64 %56)
  br label %58

58:                                               ; preds = %50, %45
  %59 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %60 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* @ENA_COM_TIMER_EXPIRED, align 4
  store i32 %61, i32* %6, align 4
  br label %67

62:                                               ; preds = %2
  %63 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ena_com_comp_status_to_errno(i32 %65)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %69 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %70 = call i32 @comp_ctxt_release(%struct.ena_com_admin_queue* %68, %struct.ena_comp_ctx* %69)
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @ENA_WAIT_EVENT_WAIT(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ENA_SPINLOCK_LOCK(i32, i64) #1

declare dso_local i32 @ena_com_handle_admin_completion(%struct.ena_com_admin_queue*) #1

declare dso_local i32 @ENA_SPINLOCK_UNLOCK(i32, i64) #1

declare dso_local i32 @ena_trc_err(i8*, i32, ...) #1

declare dso_local i32 @ena_com_comp_status_to_errno(i32) #1

declare dso_local i32 @comp_ctxt_release(%struct.ena_com_admin_queue*, %struct.ena_comp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
