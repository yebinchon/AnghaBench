; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec_mii_acc.c_fman_dtsec_mii_read_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec_mii_acc.c_fman_dtsec_mii_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_mii_reg = type { i32, i32, i32, i32, i32 }

@MIIMADD_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@MIIMCOM_READ_CYCLE = common dso_local global i32 0, align 4
@MIIMIND_BUSY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_dtsec_mii_read_reg(%struct.dtsec_mii_reg* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dtsec_mii_reg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dtsec_mii_reg* %0, %struct.dtsec_mii_reg** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = call i64 @dtsec_mii_get_div(i32 %13)
  %15 = trunc i64 %14 to i32
  %16 = load %struct.dtsec_mii_reg*, %struct.dtsec_mii_reg** %7, align 8
  %17 = getelementptr inbounds %struct.dtsec_mii_reg, %struct.dtsec_mii_reg* %16, i32 0, i32 4
  %18 = call i32 @iowrite32be(i32 %15, i32* %17)
  %19 = call i32 (...) @wmb()
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MIIMADD_PHY_ADDR_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.dtsec_mii_reg*, %struct.dtsec_mii_reg** %7, align 8
  %27 = getelementptr inbounds %struct.dtsec_mii_reg, %struct.dtsec_mii_reg* %26, i32 0, i32 3
  %28 = call i32 @iowrite32be(i32 %25, i32* %27)
  %29 = call i32 (...) @wmb()
  %30 = load i32, i32* @MIIMCOM_READ_CYCLE, align 4
  %31 = load %struct.dtsec_mii_reg*, %struct.dtsec_mii_reg** %7, align 8
  %32 = getelementptr inbounds %struct.dtsec_mii_reg, %struct.dtsec_mii_reg* %31, i32 0, i32 0
  %33 = call i32 @iowrite32be(i32 %30, i32* %32)
  %34 = load %struct.dtsec_mii_reg*, %struct.dtsec_mii_reg** %7, align 8
  %35 = getelementptr inbounds %struct.dtsec_mii_reg, %struct.dtsec_mii_reg* %34, i32 0, i32 0
  %36 = call i32 @ioread32be(i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = call i32 (...) @wmb()
  br label %38

38:                                               ; preds = %45, %5
  %39 = load %struct.dtsec_mii_reg*, %struct.dtsec_mii_reg** %7, align 8
  %40 = getelementptr inbounds %struct.dtsec_mii_reg, %struct.dtsec_mii_reg* %39, i32 0, i32 2
  %41 = call i32 @ioread32be(i32* %40)
  %42 = load i32, i32* @MIIMIND_BUSY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %38

46:                                               ; preds = %38
  %47 = load %struct.dtsec_mii_reg*, %struct.dtsec_mii_reg** %7, align 8
  %48 = getelementptr inbounds %struct.dtsec_mii_reg, %struct.dtsec_mii_reg* %47, i32 0, i32 1
  %49 = call i32 @ioread32be(i32* %48)
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  %51 = call i32 (...) @wmb()
  %52 = load %struct.dtsec_mii_reg*, %struct.dtsec_mii_reg** %7, align 8
  %53 = getelementptr inbounds %struct.dtsec_mii_reg, %struct.dtsec_mii_reg* %52, i32 0, i32 0
  %54 = call i32 @iowrite32be(i32 0, i32* %53)
  %55 = load %struct.dtsec_mii_reg*, %struct.dtsec_mii_reg** %7, align 8
  %56 = getelementptr inbounds %struct.dtsec_mii_reg, %struct.dtsec_mii_reg* %55, i32 0, i32 0
  %57 = call i32 @ioread32be(i32* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 65535
  br i1 %60, label %61, label %64

61:                                               ; preds = %46
  %62 = load i32, i32* @ENXIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %65

64:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i64 @dtsec_mii_get_div(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
