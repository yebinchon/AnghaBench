; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-ixf18201.c_cvmx_ixf18201_mii_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-ixf18201.c_cvmx_ixf18201_mii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IXF_REG_MDI_CMD_ADDR1 = common dso_local global i32 0, align 4
@IXF_REG_MDI_RD_WR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_ixf18201_mii_write(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 31
  %14 = shl i32 %13, 21
  %15 = load i32, i32* %9, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 31
  %19 = shl i32 %18, 16
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, 1073741824
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, -2147483648
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @IXF_REG_MDI_CMD_ADDR1, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @cvmx_ixf18201_write32(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %34, %4
  %30 = load i32, i32* @IXF_REG_MDI_CMD_ADDR1, align 4
  %31 = call i32 @cvmx_ixf18201_read32(i32 %30)
  %32 = and i32 %31, 1073741824
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %29

35:                                               ; preds = %29
  %36 = load i32, i32* @IXF_REG_MDI_RD_WR1, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @cvmx_ixf18201_write32(i32 %36, i32 %37)
  store i32 0, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, 67108864
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 31
  %43 = shl i32 %42, 21
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 31
  %48 = shl i32 %47, 16
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, 1073741824
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, -2147483648
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @IXF_REG_MDI_CMD_ADDR1, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @cvmx_ixf18201_write32(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %63, %35
  %59 = load i32, i32* @IXF_REG_MDI_CMD_ADDR1, align 4
  %60 = call i32 @cvmx_ixf18201_read32(i32 %59)
  %61 = and i32 %60, 1073741824
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %58

64:                                               ; preds = %58
  ret void
}

declare dso_local i32 @cvmx_ixf18201_write32(i32, i32) #1

declare dso_local i32 @cvmx_ixf18201_read32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
