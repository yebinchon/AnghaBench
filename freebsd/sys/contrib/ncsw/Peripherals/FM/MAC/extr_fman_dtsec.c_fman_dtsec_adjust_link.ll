; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_adjust_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_regs = type { i32, i32 }

@E_ENET_SPEED_1000 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MACCFG2_FULL_DUPLEX = common dso_local global i32 0, align 4
@MACCFG2_NIBBLE_MODE = common dso_local global i32 0, align 4
@MACCFG2_BYTE_MODE = common dso_local global i32 0, align 4
@E_ENET_SPEED_100 = common dso_local global i32 0, align 4
@DTSEC_ECNTRL_R100M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_dtsec_adjust_link(%struct.dtsec_regs* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dtsec_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dtsec_regs* %0, %struct.dtsec_regs** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @UNUSED(i32 %11)
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @E_ENET_SPEED_1000, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %85

22:                                               ; preds = %16, %4
  %23 = load %struct.dtsec_regs*, %struct.dtsec_regs** %6, align 8
  %24 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %23, i32 0, i32 1
  %25 = call i32 @ioread32be(i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @MACCFG2_FULL_DUPLEX, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %10, align 4
  br label %37

33:                                               ; preds = %22
  %34 = load i32, i32* @MACCFG2_FULL_DUPLEX, align 4
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* @MACCFG2_NIBBLE_MODE, align 4
  %39 = load i32, i32* @MACCFG2_BYTE_MODE, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @E_ENET_SPEED_1000, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i32, i32* @MACCFG2_NIBBLE_MODE, align 4
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %60

51:                                               ; preds = %37
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @E_ENET_SPEED_1000, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @MACCFG2_BYTE_MODE, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.dtsec_regs*, %struct.dtsec_regs** %6, align 8
  %63 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %62, i32 0, i32 1
  %64 = call i32 @iowrite32be(i32 %61, i32* %63)
  %65 = load %struct.dtsec_regs*, %struct.dtsec_regs** %6, align 8
  %66 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %65, i32 0, i32 0
  %67 = call i32 @ioread32be(i32* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @E_ENET_SPEED_100, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load i32, i32* @DTSEC_ECNTRL_R100M, align 4
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %80

75:                                               ; preds = %60
  %76 = load i32, i32* @DTSEC_ECNTRL_R100M, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %75, %71
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.dtsec_regs*, %struct.dtsec_regs** %6, align 8
  %83 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %82, i32 0, i32 0
  %84 = call i32 @iowrite32be(i32 %81, i32* %83)
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %19
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
