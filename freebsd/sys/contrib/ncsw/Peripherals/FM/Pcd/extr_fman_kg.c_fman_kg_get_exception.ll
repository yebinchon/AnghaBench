; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_get_exception.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_get_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_kg_regs = type { i32, i32, i32, i32 }

@FM_EX_KG_KEYSIZE_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_kg_get_exception(%struct.fman_kg_regs* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.fman_kg_regs*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fman_kg_regs* %0, %struct.fman_kg_regs** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %5, align 8
  %11 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %10, i32 0, i32 0
  %12 = call i32 @ioread32be(i32* %11)
  %13 = load i32*, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %5, align 8
  %15 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %14, i32 0, i32 3
  %16 = call i32 @ioread32be(i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %17
  store i32 %20, i32* %18, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FM_EX_KG_KEYSIZE_OVERFLOW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %4
  %28 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %5, align 8
  %29 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %28, i32 0, i32 1
  %30 = call i32 @ioread32be(i32* %29)
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %5, align 8
  %33 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %32, i32 0, i32 2
  %34 = call i32 @ioread32be(i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %27, %4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %5, align 8
  %46 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %45, i32 0, i32 1
  %47 = call i32 @iowrite32be(i32 %44, i32* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %5, align 8
  %51 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %50, i32 0, i32 0
  %52 = call i32 @iowrite32be(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %42, %39
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
