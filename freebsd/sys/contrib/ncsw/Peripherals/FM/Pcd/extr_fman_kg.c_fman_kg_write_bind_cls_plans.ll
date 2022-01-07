; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_write_bind_cls_plans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_write_bind_cls_plans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_kg_regs = type { i32* }
%struct.fman_kg_pe_regs = type { i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_kg_write_bind_cls_plans(%struct.fman_kg_regs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fman_kg_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fman_kg_pe_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fman_kg_regs* %0, %struct.fman_kg_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %11 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = bitcast i32* %13 to %struct.fman_kg_pe_regs*
  store %struct.fman_kg_pe_regs* %14, %struct.fman_kg_pe_regs** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.fman_kg_pe_regs*, %struct.fman_kg_pe_regs** %7, align 8
  %17 = getelementptr inbounds %struct.fman_kg_pe_regs, %struct.fman_kg_pe_regs* %16, i32 0, i32 0
  %18 = call i32 @iowrite32be(i32 %15, i32* %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i32 @build_ar_bind_cls_plan(i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @fman_kg_write_ar_wait(%struct.fman_kg_regs* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  ret i32 %25
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @build_ar_bind_cls_plan(i32, i32) #1

declare dso_local i32 @fman_kg_write_ar_wait(%struct.fman_kg_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
