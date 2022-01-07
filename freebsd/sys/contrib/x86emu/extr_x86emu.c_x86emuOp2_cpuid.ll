; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp2_cpuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp2_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp2_cpuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp2_cpuid(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %3 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %4 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %7 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %10 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %13 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = call i32 @hw_cpuid(i32* %5, i32* %8, i32* %11, i32* %14)
  %16 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %17 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %30 [
    i32 0, label %20
    i32 1, label %24
  ]

20:                                               ; preds = %1
  %21 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %22 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %43

24:                                               ; preds = %1
  %25 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %26 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 18
  store i32 %29, i32* %27, align 4
  br label %43

30:                                               ; preds = %1
  %31 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %32 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 0, i32* %33, align 4
  %34 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %35 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 0, i32* %36, align 4
  %37 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %38 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %41 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %30, %24, %20
  ret void
}

declare dso_local i32 @hw_cpuid(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
