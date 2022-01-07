; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fm_mac.c_FM_MAC_ConfigLoopback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fm_mac.c_FM_MAC_ConfigLoopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i64, i32)* }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_MAC_ConfigLoopback(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = load i32, i32* @E_INVALID_HANDLE, align 4
  %11 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_3__* %9, i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (i64, i32)*, i32 (i64, i32)** %13, align 8
  %15 = icmp ne i32 (i64, i32)* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (i64, i32)*, i32 (i64, i32)** %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 %19(i64 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %28

23:                                               ; preds = %2
  %24 = load i32, i32* @MINOR, align 4
  %25 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %26 = load i32, i32* @NO_MSG, align 4
  %27 = call i32 @RETURN_ERROR(i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
