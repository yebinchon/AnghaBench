; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_set_bucket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_set_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_regs = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_dtsec_set_bucket(%struct.dtsec_regs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dtsec_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.dtsec_regs* %0, %struct.dtsec_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = ashr i32 %11, 5
  %13 = and i32 %12, 15
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 31
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = lshr i32 -2147483648, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 7
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %22 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32* %27, i32** %10, align 8
  br label %35

28:                                               ; preds = %3
  %29 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %30 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %10, align 8
  br label %35

35:                                               ; preds = %28, %20
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @ioread32be(i32* %39)
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %40, %41
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @iowrite32be(i32 %42, i32* %43)
  br label %53

45:                                               ; preds = %35
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @ioread32be(i32* %46)
  %48 = load i32, i32* %9, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @iowrite32be(i32 %50, i32* %51)
  br label %53

53:                                               ; preds = %45, %38
  ret void
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
