; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_ccu.c_aw_ccu_modify_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_ccu.c_aw_ccu_modify_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_ccu_softc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @aw_ccu_modify_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_ccu_modify_4(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aw_ccu_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.aw_ccu_softc* @device_get_softc(i32 %14)
  store %struct.aw_ccu_softc* %15, %struct.aw_ccu_softc** %10, align 8
  %16 = load %struct.aw_ccu_softc*, %struct.aw_ccu_softc** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @aw_ccu_check_addr(%struct.aw_ccu_softc* %16, i32 %17, i32* %11, i32* %12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %47

22:                                               ; preds = %4
  %23 = load %struct.aw_ccu_softc*, %struct.aw_ccu_softc** %10, align 8
  %24 = getelementptr inbounds %struct.aw_ccu_softc, %struct.aw_ccu_softc* %23, i32 0, i32 1
  %25 = load i32, i32* @MA_OWNED, align 4
  %26 = call i32 @mtx_assert(i32* %24, i32 %25)
  %27 = load %struct.aw_ccu_softc*, %struct.aw_ccu_softc** %10, align 8
  %28 = getelementptr inbounds %struct.aw_ccu_softc, %struct.aw_ccu_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @bus_space_read_4(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %8, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %13, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %13, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %13, align 4
  %40 = load %struct.aw_ccu_softc*, %struct.aw_ccu_softc** %10, align 8
  %41 = getelementptr inbounds %struct.aw_ccu_softc, %struct.aw_ccu_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @bus_space_write_4(i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %22, %20
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.aw_ccu_softc* @device_get_softc(i32) #1

declare dso_local i64 @aw_ccu_check_addr(%struct.aw_ccu_softc*, i32, i32*, i32*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
