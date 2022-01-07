; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_set_ports_bandwidth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_set_ports_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_bmi_regs = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_set_ports_bandwidth(%struct.fman_bmi_regs* %0, i32* %1) #0 {
  %3 = alloca %struct.fman_bmi_regs*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fman_bmi_regs* %0, %struct.fman_bmi_regs** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %49, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 64
  br i1 %10, label %11, label %52

11:                                               ; preds = %8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %34

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = srem i32 %19, 8
  %21 = add nsw i32 %20, 1
  %22 = mul nsw i32 4, %21
  %23 = sub nsw i32 32, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %18, %11
  %35 = load i32, i32* %5, align 4
  %36 = srem i32 %35, 8
  %37 = icmp eq i32 %36, 7
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %3, align 8
  %41 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sdiv i32 %43, 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = call i32 @iowrite32be(i32 %39, i32* %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %38, %34
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %8

52:                                               ; preds = %8
  ret void
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
