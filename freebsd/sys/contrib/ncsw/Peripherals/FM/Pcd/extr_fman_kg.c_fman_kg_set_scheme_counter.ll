; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_set_scheme_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_set_scheme_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_kg_regs = type { i32* }
%struct.fman_kg_scheme_regs = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_kg_set_scheme_counter(%struct.fman_kg_regs* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fman_kg_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fman_kg_scheme_regs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fman_kg_regs* %0, %struct.fman_kg_regs** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %6, align 8
  %14 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = bitcast i32* %16 to %struct.fman_kg_scheme_regs*
  store %struct.fman_kg_scheme_regs* %17, %struct.fman_kg_scheme_regs** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @TRUE, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @build_ar_scheme(i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @fman_kg_write_ar_wait(%struct.fman_kg_regs* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %5, align 4
  br label %44

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %10, align 8
  %33 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %32, i32 0, i32 0
  %34 = call i32 @iowrite32be(i32 %31, i32* %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @TRUE, align 4
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @build_ar_scheme(i32 %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @fman_kg_write_ar_wait(%struct.fman_kg_regs* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %30, %28
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @build_ar_scheme(i32, i32, i32, i32) #1

declare dso_local i32 @fman_kg_write_ar_wait(%struct.fman_kg_regs*, i32) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
