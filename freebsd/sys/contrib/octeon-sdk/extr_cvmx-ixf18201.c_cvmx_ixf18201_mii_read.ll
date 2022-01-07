; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-ixf18201.c_cvmx_ixf18201_mii_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-ixf18201.c_cvmx_ixf18201_mii_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IXF_REG_MDI_CMD_ADDR1 = common dso_local global i32 0, align 4
@IXF_REG_MDI_RD_WR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_ixf18201_mii_read(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 31
  %12 = shl i32 %11, 21
  %13 = load i32, i32* %7, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 31
  %17 = shl i32 %16, 16
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, 1073741824
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, -2147483648
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @IXF_REG_MDI_CMD_ADDR1, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @cvmx_ixf18201_write32(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %32, %3
  %28 = load i32, i32* @IXF_REG_MDI_CMD_ADDR1, align 4
  %29 = call i32 @cvmx_ixf18201_read32(i32 %28)
  %30 = and i32 %29, 1073741824
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %27

33:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, 201326592
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 31
  %38 = shl i32 %37, 21
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 31
  %43 = shl i32 %42, 16
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, 1073741824
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, -2147483648
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @IXF_REG_MDI_CMD_ADDR1, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @cvmx_ixf18201_write32(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %58, %33
  %54 = load i32, i32* @IXF_REG_MDI_CMD_ADDR1, align 4
  %55 = call i32 @cvmx_ixf18201_read32(i32 %54)
  %56 = and i32 %55, 1073741824
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %53

59:                                               ; preds = %53
  %60 = load i32, i32* @IXF_REG_MDI_RD_WR1, align 4
  %61 = call i32 @cvmx_ixf18201_read32(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 16
  ret i32 %63
}

declare dso_local i32 @cvmx_ixf18201_write32(i32, i32) #1

declare dso_local i32 @cvmx_ixf18201_read32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
