; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_get_desc_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_get_desc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_get_desc_info(%struct.ath_hal* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %6 = call i32 @TXCTL_NUMWORDS(%struct.ath_hal* %5)
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 7
  store i32 %6, i32* %8, align 4
  %9 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %10 = call i32 @TXCTL_OFFSET(%struct.ath_hal* %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %14 = call i32 @TXSTATUS_NUMWORDS(%struct.ath_hal* %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %18 = call i32 @TXSTATUS_OFFSET(%struct.ath_hal* %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %22 = call i32 @RXCTL_NUMWORDS(%struct.ath_hal* %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %26 = call i32 @RXCTL_OFFSET(%struct.ath_hal* %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %30 = call i32 @RXSTATUS_NUMWORDS(%struct.ath_hal* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %34 = call i32 @RXSTATUS_OFFSET(%struct.ath_hal* %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i32 @TXCTL_NUMWORDS(%struct.ath_hal*) #1

declare dso_local i32 @TXCTL_OFFSET(%struct.ath_hal*) #1

declare dso_local i32 @TXSTATUS_NUMWORDS(%struct.ath_hal*) #1

declare dso_local i32 @TXSTATUS_OFFSET(%struct.ath_hal*) #1

declare dso_local i32 @RXCTL_NUMWORDS(%struct.ath_hal*) #1

declare dso_local i32 @RXCTL_OFFSET(%struct.ath_hal*) #1

declare dso_local i32 @RXSTATUS_NUMWORDS(%struct.ath_hal*) #1

declare dso_local i32 @RXSTATUS_OFFSET(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
