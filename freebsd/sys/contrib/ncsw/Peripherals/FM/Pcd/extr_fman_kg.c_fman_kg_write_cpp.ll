; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_write_cpp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_write_cpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_kg_regs = type { i32* }
%struct.fman_kg_pe_regs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_kg_write_cpp(%struct.fman_kg_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.fman_kg_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fman_kg_pe_regs*, align 8
  store %struct.fman_kg_regs* %0, %struct.fman_kg_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %3, align 8
  %7 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = bitcast i32* %9 to %struct.fman_kg_pe_regs*
  store %struct.fman_kg_pe_regs* %10, %struct.fman_kg_pe_regs** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.fman_kg_pe_regs*, %struct.fman_kg_pe_regs** %5, align 8
  %13 = getelementptr inbounds %struct.fman_kg_pe_regs, %struct.fman_kg_pe_regs* %12, i32 0, i32 0
  %14 = call i32 @iowrite32be(i32 %11, i32* %13)
  ret void
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
