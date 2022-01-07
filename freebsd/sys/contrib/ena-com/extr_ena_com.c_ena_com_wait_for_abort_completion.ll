; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_wait_for_abort_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_wait_for_abort_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_admin_queue }
%struct.ena_com_admin_queue = type { i32, i32 }

@ENA_POLL_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_com_wait_for_abort_completion(%struct.ena_com_dev* %0) #0 {
  %2 = alloca %struct.ena_com_dev*, align 8
  %3 = alloca %struct.ena_com_admin_queue*, align 8
  %4 = alloca i64, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %2, align 8
  %5 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %6 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %5, i32 0, i32 0
  store %struct.ena_com_admin_queue* %6, %struct.ena_com_admin_queue** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %8 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @ENA_SPINLOCK_LOCK(i32 %9, i64 %10)
  br label %12

12:                                               ; preds = %17, %1
  %13 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %14 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %13, i32 0, i32 1
  %15 = call i64 @ATOMIC32_READ(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %19 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @ENA_SPINLOCK_UNLOCK(i32 %20, i64 %21)
  %23 = load i32, i32* @ENA_POLL_MS, align 4
  %24 = call i32 @ENA_MSLEEP(i32 %23)
  %25 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %26 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @ENA_SPINLOCK_LOCK(i32 %27, i64 %28)
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %32 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @ENA_SPINLOCK_UNLOCK(i32 %33, i64 %34)
  ret void
}

declare dso_local i32 @ENA_SPINLOCK_LOCK(i32, i64) #1

declare dso_local i64 @ATOMIC32_READ(i32*) #1

declare dso_local i32 @ENA_SPINLOCK_UNLOCK(i32, i64) #1

declare dso_local i32 @ENA_MSLEEP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
