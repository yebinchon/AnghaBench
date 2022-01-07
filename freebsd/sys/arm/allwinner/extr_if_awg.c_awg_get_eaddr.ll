; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_get_eaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_get_eaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { i32 }

@AW_SID_FUSE_ROOTKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @awg_get_eaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @awg_get_eaddr(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.awg_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.awg_softc* @device_get_softc(i32 %11)
  store %struct.awg_softc* %12, %struct.awg_softc** %5, align 8
  %13 = load %struct.awg_softc*, %struct.awg_softc** %5, align 8
  %14 = call i32 @EMAC_ADDR_HIGH(i32 0)
  %15 = call i32 @RD4(%struct.awg_softc* %13, i32 %14)
  %16 = and i32 %15, 65535
  store i32 %16, i32* %7, align 4
  %17 = load %struct.awg_softc*, %struct.awg_softc** %5, align 8
  %18 = call i32 @EMAC_ADDR_LOW(i32 0)
  %19 = call i32 @RD4(%struct.awg_softc* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  store i32 64, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %73

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 65535
  br i1 %24, label %25, label %73

25:                                               ; preds = %22
  %26 = load i32, i32* @AW_SID_FUSE_ROOTKEY, align 4
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %28 = call i64 @aw_sid_get_fuse(i32 %26, i32* %27, i32* %10)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %25
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 12
  %34 = load i32, i32* %33, align 16
  %35 = or i32 %32, %34
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 13
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %35, %37
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 14
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %38, %40
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 15
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %30
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 13
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 24
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 12
  %51 = load i32, i32* %50, align 16
  %52 = shl i32 %51, 16
  %53 = or i32 %49, %52
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = or i32 %53, %56
  %58 = or i32 %57, 2
  store i32 %58, i32* %6, align 4
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 15
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 8
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 14
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %61, %63
  store i32 %64, i32* %7, align 4
  br label %72

65:                                               ; preds = %30, %25
  %66 = call i32 (...) @arc4random()
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, -65536
  %69 = or i32 242, %68
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, 65535
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %65, %46
  br label %73

73:                                               ; preds = %72, %22, %2
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, 255
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %6, align 4
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 255
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = ashr i32 %83, 16
  %85 = and i32 %84, 255
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %6, align 4
  %89 = ashr i32 %88, 24
  %90 = and i32 %89, 255
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, 255
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %7, align 4
  %98 = ashr i32 %97, 8
  %99 = and i32 %98, 255
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 5
  store i32 %99, i32* %101, align 4
  ret void
}

declare dso_local %struct.awg_softc* @device_get_softc(i32) #1

declare dso_local i32 @RD4(%struct.awg_softc*, i32) #1

declare dso_local i32 @EMAC_ADDR_HIGH(i32) #1

declare dso_local i32 @EMAC_ADDR_LOW(i32) #1

declare dso_local i64 @aw_sid_get_fuse(i32, i32*, i32*) #1

declare dso_local i32 @arc4random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
