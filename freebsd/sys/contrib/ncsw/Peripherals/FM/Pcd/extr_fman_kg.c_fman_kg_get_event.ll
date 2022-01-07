; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_get_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_kg_regs = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_kg_get_event(%struct.fman_kg_regs* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.fman_kg_regs*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fman_kg_regs* %0, %struct.fman_kg_regs** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %10 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %9, i32 0, i32 1
  %11 = call i32 @ioread32be(i32* %10)
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %14 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %13, i32 0, i32 4
  %15 = call i32 @ioread32be(i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %17 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %16, i32 0, i32 0
  %18 = call i32 @ioread32be(i32* %17)
  %19 = load i32*, i32** %6, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %21 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %20, i32 0, i32 3
  %22 = call i32 @ioread32be(i32* %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %31 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %30, i32 0, i32 2
  %32 = call i32 @ioread32be(i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %3
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %39, %42
  %44 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %45 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %44, i32 0, i32 2
  %46 = call i32 @iowrite32be(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %38, %3
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %51 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %50, i32 0, i32 1
  %52 = call i32 @iowrite32be(i32 %49, i32* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %56 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %55, i32 0, i32 0
  %57 = call i32 @iowrite32be(i32 %54, i32* %56)
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
