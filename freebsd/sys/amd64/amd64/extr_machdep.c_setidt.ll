; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_setidt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_setidt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gate_descriptor = type { i64, i32, i32, i32, i32, i64, i64, i32 }

@idt = common dso_local global %struct.gate_descriptor* null, align 8
@GCODE_SEL = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setidt(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gate_descriptor*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.gate_descriptor*, %struct.gate_descriptor** @idt, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %12, i64 %14
  store %struct.gate_descriptor* %15, %struct.gate_descriptor** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = ptrtoint i32* %16 to i64
  %18 = load %struct.gate_descriptor*, %struct.gate_descriptor** %11, align 8
  %19 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @GCODE_SEL, align 4
  %21 = load i32, i32* @SEL_KPL, align 4
  %22 = call i32 @GSEL(i32 %20, i32 %21)
  %23 = load %struct.gate_descriptor*, %struct.gate_descriptor** %11, align 8
  %24 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.gate_descriptor*, %struct.gate_descriptor** %11, align 8
  %27 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.gate_descriptor*, %struct.gate_descriptor** %11, align 8
  %29 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.gate_descriptor*, %struct.gate_descriptor** %11, align 8
  %32 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.gate_descriptor*, %struct.gate_descriptor** %11, align 8
  %35 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.gate_descriptor*, %struct.gate_descriptor** %11, align 8
  %37 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %36, i32 0, i32 4
  store i32 1, i32* %37, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = ptrtoint i32* %38 to i64
  %40 = lshr i64 %39, 16
  %41 = load %struct.gate_descriptor*, %struct.gate_descriptor** %11, align 8
  %42 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %41, i32 0, i32 5
  store i64 %40, i64* %42, align 8
  ret void
}

declare dso_local i32 @GSEL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
