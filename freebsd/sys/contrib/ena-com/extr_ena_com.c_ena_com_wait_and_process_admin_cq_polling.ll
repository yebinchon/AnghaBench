; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_wait_and_process_admin_cq_polling.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_wait_and_process_admin_cq_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_comp_ctx = type { i64, i32 }
%struct.ena_com_admin_queue = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENA_CMD_SUBMITTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Wait for completion (polling) timeout\0A\00", align 1
@ENA_COM_TIMER_EXPIRED = common dso_local global i32 0, align 4
@ENA_POLL_MS = common dso_local global i32 0, align 4
@ENA_CMD_ABORTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Command was aborted\0A\00", align 1
@ENA_COM_NO_DEVICE = common dso_local global i32 0, align 4
@ENA_CMD_COMPLETED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid comp status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_comp_ctx*, %struct.ena_com_admin_queue*)* @ena_com_wait_and_process_admin_cq_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_wait_and_process_admin_cq_polling(%struct.ena_comp_ctx* %0, %struct.ena_com_admin_queue* %1) #0 {
  %3 = alloca %struct.ena_comp_ctx*, align 8
  %4 = alloca %struct.ena_com_admin_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ena_comp_ctx* %0, %struct.ena_comp_ctx** %3, align 8
  store %struct.ena_com_admin_queue* %1, %struct.ena_com_admin_queue** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %9 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @ENA_GET_SYSTEM_TIMEOUT(i32 %10)
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %2, %55
  %13 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %14 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @ENA_SPINLOCK_LOCK(i32 %15, i64 %16)
  %18 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %19 = call i32 @ena_com_handle_admin_completion(%struct.ena_com_admin_queue* %18)
  %20 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %21 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @ENA_SPINLOCK_UNLOCK(i32 %22, i64 %23)
  %25 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ENA_CMD_SUBMITTED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %12
  br label %58

31:                                               ; preds = %12
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @ENA_TIME_EXPIRE(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = call i32 @ena_trc_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %38 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @ENA_SPINLOCK_LOCK(i32 %39, i64 %40)
  %42 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %43 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %48 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %50 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @ENA_SPINLOCK_UNLOCK(i32 %51, i64 %52)
  %54 = load i32, i32* @ENA_COM_TIMER_EXPIRED, align 4
  store i32 %54, i32* %7, align 4
  br label %100

55:                                               ; preds = %31
  %56 = load i32, i32* @ENA_POLL_MS, align 4
  %57 = call i32 @ENA_MSLEEP(i32 %56)
  br label %12

58:                                               ; preds = %30
  %59 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ENA_CMD_ABORTED, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %58
  %68 = call i32 @ena_trc_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %70 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @ENA_SPINLOCK_LOCK(i32 %71, i64 %72)
  %74 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %75 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %80 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @ENA_SPINLOCK_UNLOCK(i32 %81, i64 %82)
  %84 = load i32, i32* @ENA_COM_NO_DEVICE, align 4
  store i32 %84, i32* %7, align 4
  br label %100

85:                                               ; preds = %58
  %86 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %87 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ENA_CMD_COMPLETED, align 8
  %90 = icmp ne i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %93 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @ENA_WARN(i32 %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %94)
  %96 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ena_com_comp_status_to_errno(i32 %98)
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %85, %67, %35
  %101 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %102 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %103 = call i32 @comp_ctxt_release(%struct.ena_com_admin_queue* %101, %struct.ena_comp_ctx* %102)
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i64 @ENA_GET_SYSTEM_TIMEOUT(i32) #1

declare dso_local i32 @ENA_SPINLOCK_LOCK(i32, i64) #1

declare dso_local i32 @ena_com_handle_admin_completion(%struct.ena_com_admin_queue*) #1

declare dso_local i32 @ENA_SPINLOCK_UNLOCK(i32, i64) #1

declare dso_local i64 @ENA_TIME_EXPIRE(i64) #1

declare dso_local i32 @ena_trc_err(i8*) #1

declare dso_local i32 @ENA_MSLEEP(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ENA_WARN(i32, i8*, i64) #1

declare dso_local i32 @ena_com_comp_status_to_errno(i32) #1

declare dso_local i32 @comp_ctxt_release(%struct.ena_com_admin_queue*, %struct.ena_comp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
