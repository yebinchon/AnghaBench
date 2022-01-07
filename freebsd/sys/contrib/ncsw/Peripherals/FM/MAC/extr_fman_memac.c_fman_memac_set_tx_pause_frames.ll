; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac.c_fman_memac_set_tx_pause_frames.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac.c_fman_memac_set_tx_pause_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memac_regs = type { i32*, i32*, i32, i32 }

@CMD_CFG_PFC_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_memac_set_tx_pause_frames(%struct.memac_regs* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.memac_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.memac_regs* %0, %struct.memac_regs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.memac_regs*, %struct.memac_regs** %5, align 8
  %11 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %10, i32 0, i32 3
  %12 = call i32 @ioread32be(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 255
  br i1 %14, label %15, label %29

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @GET_TX_EMPTY_DEFAULT_VALUE(i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.memac_regs*, %struct.memac_regs** %5, align 8
  %20 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %19, i32 0, i32 3
  %21 = call i32 @iowrite32be(i32 %18, i32* %20)
  %22 = load %struct.memac_regs*, %struct.memac_regs** %5, align 8
  %23 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %22, i32 0, i32 2
  %24 = call i32 @ioread32be(i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @CMD_CFG_PFC_MODE, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %42

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @GET_TX_EMPTY_PFC_VALUE(i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.memac_regs*, %struct.memac_regs** %5, align 8
  %34 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %33, i32 0, i32 3
  %35 = call i32 @iowrite32be(i32 %32, i32* %34)
  %36 = load %struct.memac_regs*, %struct.memac_regs** %5, align 8
  %37 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %36, i32 0, i32 2
  %38 = call i32 @ioread32be(i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @CMD_CFG_PFC_MODE, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %29, %15
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.memac_regs*, %struct.memac_regs** %5, align 8
  %45 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %44, i32 0, i32 2
  %46 = call i32 @iowrite32be(i32 %43, i32* %45)
  %47 = load %struct.memac_regs*, %struct.memac_regs** %5, align 8
  %48 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sdiv i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = call i32 @ioread32be(i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %6, align 4
  %56 = srem i32 %55, 2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %42
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 65535
  store i32 %60, i32* %9, align 4
  br label %64

61:                                               ; preds = %42
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, -65536
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i64, i64* %7, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* %6, align 4
  %68 = srem i32 %67, 2
  %69 = mul nsw i32 16, %68
  %70 = shl i32 %66, %69
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.memac_regs*, %struct.memac_regs** %5, align 8
  %75 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sdiv i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = call i32 @iowrite32be(i32 %73, i32* %80)
  %82 = load %struct.memac_regs*, %struct.memac_regs** %5, align 8
  %83 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sdiv i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = call i32 @ioread32be(i32* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %6, align 4
  %91 = srem i32 %90, 2
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %64
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, 65535
  store i32 %95, i32* %9, align 4
  br label %99

96:                                               ; preds = %64
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, -65536
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i64, i64* %8, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* %6, align 4
  %103 = srem i32 %102, 2
  %104 = mul nsw i32 16, %103
  %105 = shl i32 %101, %104
  %106 = load i32, i32* %9, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.memac_regs*, %struct.memac_regs** %5, align 8
  %110 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sdiv i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = call i32 @iowrite32be(i32 %108, i32* %115)
  ret void
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @GET_TX_EMPTY_DEFAULT_VALUE(i32) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @GET_TX_EMPTY_PFC_VALUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
