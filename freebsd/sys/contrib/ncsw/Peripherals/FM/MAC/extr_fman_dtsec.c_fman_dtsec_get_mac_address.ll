; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_get_mac_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_get_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_regs = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_dtsec_get_mac_address(%struct.dtsec_regs* %0, i64* %1) #0 {
  %3 = alloca %struct.dtsec_regs*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dtsec_regs* %0, %struct.dtsec_regs** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %8 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %7, i32 0, i32 1
  %9 = call i32 @ioread32be(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %11 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %10, i32 0, i32 0
  %12 = call i32 @ioread32be(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 16711680
  %15 = ashr i32 %14, 16
  %16 = sext i32 %15 to i64
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, -16777216
  %21 = lshr i32 %20, 24
  %22 = zext i32 %21 to i64
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 255
  %27 = sext i32 %26 to i64
  %28 = load i64*, i64** %4, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 65280
  %32 = ashr i32 %31, 8
  %33 = sext i32 %32 to i64
  %34 = load i64*, i64** %4, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 3
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 16711680
  %38 = ashr i32 %37, 16
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %4, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 4
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, -16777216
  %44 = lshr i32 %43, 24
  %45 = zext i32 %44 to i64
  %46 = load i64*, i64** %4, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 5
  store i64 %45, i64* %47, align 8
  ret void
}

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
