; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac.c_fman_memac_adjust_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac.c_fman_memac_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memac_regs = type { i32 }

@IF_MODE_HD = common dso_local global i32 0, align 4
@E_ENET_IF_RGMII = common dso_local global i32 0, align 4
@IF_MODE_RGMII_AUTO = common dso_local global i32 0, align 4
@IF_MODE_RGMII_SP_MASK = common dso_local global i32 0, align 4
@IF_MODE_RGMII_FD = common dso_local global i32 0, align 4
@IF_MODE_RGMII_1000 = common dso_local global i32 0, align 4
@IF_MODE_RGMII_100 = common dso_local global i32 0, align 4
@IF_MODE_RGMII_10 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_memac_adjust_link(%struct.memac_regs* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.memac_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.memac_regs* %0, %struct.memac_regs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.memac_regs*, %struct.memac_regs** %5, align 8
  %11 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %10, i32 0, i32 0
  %12 = call i32 @ioread32be(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32, i32* @IF_MODE_HD, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %9, align 4
  br label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @IF_MODE_HD, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @E_ENET_IF_RGMII, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %24
  %29 = load i32, i32* @IF_MODE_RGMII_AUTO, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @IF_MODE_RGMII_SP_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load i32, i32* @IF_MODE_RGMII_FD, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %48

43:                                               ; preds = %28
  %44 = load i32, i32* @IF_MODE_RGMII_FD, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %62 [
    i32 128, label %50
    i32 129, label %54
    i32 130, label %58
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* @IF_MODE_RGMII_1000, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %63

54:                                               ; preds = %48
  %55 = load i32, i32* @IF_MODE_RGMII_100, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %63

58:                                               ; preds = %48
  %59 = load i32, i32* @IF_MODE_RGMII_10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %63

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %58, %54, %50
  br label %64

64:                                               ; preds = %63, %24
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.memac_regs*, %struct.memac_regs** %5, align 8
  %67 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %66, i32 0, i32 0
  %68 = call i32 @iowrite32be(i32 %65, i32* %67)
  ret void
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
