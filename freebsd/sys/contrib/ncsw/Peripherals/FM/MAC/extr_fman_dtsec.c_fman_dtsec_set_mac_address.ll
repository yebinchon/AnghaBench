; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_regs = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_dtsec_set_mac_address(%struct.dtsec_regs* %0, i32* %1) #0 {
  %3 = alloca %struct.dtsec_regs*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.dtsec_regs* %0, %struct.dtsec_regs** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 5
  %8 = load i32, i32* %7, align 4
  %9 = shl i32 %8, 24
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 4
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 16
  %14 = or i32 %9, %13
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 8
  %19 = or i32 %14, %18
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %19, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %27 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %26, i32 0, i32 1
  %28 = call i32 @iowrite32be(i64 %25, i32* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 24
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 16
  %37 = or i32 %32, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %41 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %40, i32 0, i32 0
  %42 = call i32 @iowrite32be(i64 %39, i32* %41)
  ret void
}

declare dso_local i32 @iowrite32be(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
