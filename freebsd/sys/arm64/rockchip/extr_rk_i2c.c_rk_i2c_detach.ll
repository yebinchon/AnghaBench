; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_i2c_softc = type { i32, i32*, i32*, i32, i32*, i32*, i32* }

@rk_i2c_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rk_i2c_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_i2c_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rk_i2c_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.rk_i2c_softc* @device_get_softc(i32 %6)
  store %struct.rk_i2c_softc* %7, %struct.rk_i2c_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @bus_generic_detach(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %76

13:                                               ; preds = %1
  %14 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %15 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %21 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @device_delete_child(i32 %19, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %76

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %13
  %29 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %30 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %35 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @clk_release(i32* %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %40 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %45 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @clk_release(i32* %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %50 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %55 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %58 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %63 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @bus_teardown_intr(i32 %56, i32 %61, i32* %64)
  br label %66

66:                                               ; preds = %53, %48
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @rk_i2c_spec, align 4
  %69 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %70 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @bus_release_resources(i32 %67, i32 %68, i32* %71)
  %73 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %74 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %73, i32 0, i32 0
  %75 = call i32 @mtx_destroy(i32* %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %66, %25, %11
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.rk_i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
