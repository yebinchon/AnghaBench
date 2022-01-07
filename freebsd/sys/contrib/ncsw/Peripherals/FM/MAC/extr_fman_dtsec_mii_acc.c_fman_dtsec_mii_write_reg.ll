; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec_mii_acc.c_fman_dtsec_mii_write_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec_mii_acc.c_fman_dtsec_mii_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_mii_reg = type { i32, i32, i32, i32, i32 }

@MIIMADD_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@MIIMIND_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_dtsec_mii_write_reg(%struct.dtsec_mii_reg* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dtsec_mii_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dtsec_mii_reg* %0, %struct.dtsec_mii_reg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %10, align 8
  %13 = call i64 @dtsec_mii_get_div(i64 %12)
  %14 = trunc i64 %13 to i32
  %15 = load %struct.dtsec_mii_reg*, %struct.dtsec_mii_reg** %6, align 8
  %16 = getelementptr inbounds %struct.dtsec_mii_reg, %struct.dtsec_mii_reg* %15, i32 0, i32 4
  %17 = call i32 @iowrite32be(i32 %14, i32* %16)
  %18 = call i32 (...) @wmb()
  %19 = load %struct.dtsec_mii_reg*, %struct.dtsec_mii_reg** %6, align 8
  %20 = getelementptr inbounds %struct.dtsec_mii_reg, %struct.dtsec_mii_reg* %19, i32 0, i32 3
  %21 = call i32 @iowrite32be(i32 0, i32* %20)
  %22 = load %struct.dtsec_mii_reg*, %struct.dtsec_mii_reg** %6, align 8
  %23 = getelementptr inbounds %struct.dtsec_mii_reg, %struct.dtsec_mii_reg* %22, i32 0, i32 3
  %24 = call i32 @ioread32be(i32* %23)
  store i32 %24, i32* %11, align 4
  %25 = call i32 (...) @wmb()
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MIIMADD_PHY_ADDR_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.dtsec_mii_reg*, %struct.dtsec_mii_reg** %6, align 8
  %33 = getelementptr inbounds %struct.dtsec_mii_reg, %struct.dtsec_mii_reg* %32, i32 0, i32 2
  %34 = call i32 @iowrite32be(i32 %31, i32* %33)
  %35 = call i32 (...) @wmb()
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.dtsec_mii_reg*, %struct.dtsec_mii_reg** %6, align 8
  %39 = getelementptr inbounds %struct.dtsec_mii_reg, %struct.dtsec_mii_reg* %38, i32 0, i32 1
  %40 = call i32 @iowrite32be(i32 %37, i32* %39)
  %41 = load %struct.dtsec_mii_reg*, %struct.dtsec_mii_reg** %6, align 8
  %42 = getelementptr inbounds %struct.dtsec_mii_reg, %struct.dtsec_mii_reg* %41, i32 0, i32 1
  %43 = call i32 @ioread32be(i32* %42)
  store i32 %43, i32* %11, align 4
  %44 = call i32 (...) @wmb()
  br label %45

45:                                               ; preds = %52, %5
  %46 = load %struct.dtsec_mii_reg*, %struct.dtsec_mii_reg** %6, align 8
  %47 = getelementptr inbounds %struct.dtsec_mii_reg, %struct.dtsec_mii_reg* %46, i32 0, i32 0
  %48 = call i32 @ioread32be(i32* %47)
  %49 = load i32, i32* @MIIMIND_BUSY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %45

53:                                               ; preds = %45
  ret i32 0
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i64 @dtsec_mii_get_div(i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
