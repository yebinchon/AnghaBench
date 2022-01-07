; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emu_exec_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emu_exec_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__, i32 (%struct.x86emu*, i32)* }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@F_IF = common dso_local global i32 0, align 4
@F_TF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x86emu_exec_intr(%struct.x86emu* %0, i32 %1) #0 {
  %3 = alloca %struct.x86emu*, align 8
  %4 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %6 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %7 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @push_word(%struct.x86emu* %5, i32 %9)
  %11 = load i32, i32* @F_IF, align 4
  %12 = call i32 @CLEAR_FLAG(i32 %11)
  %13 = load i32, i32* @F_TF, align 4
  %14 = call i32 @CLEAR_FLAG(i32 %13)
  %15 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %16 = call i32 @push_word(%struct.x86emu* %15, i32 0)
  %17 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %18 = call i32 @push_word(%struct.x86emu* %17, i32 0)
  %19 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %20 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %19, i32 0, i32 1
  %21 = load i32 (%struct.x86emu*, i32)*, i32 (%struct.x86emu*, i32)** %20, align 8
  %22 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 %23, 4
  %25 = add nsw i32 %24, 2
  %26 = call i32 %21(%struct.x86emu* %22, i32 %25)
  %27 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %28 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %31 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %30, i32 0, i32 1
  %32 = load i32 (%struct.x86emu*, i32)*, i32 (%struct.x86emu*, i32)** %31, align 8
  %33 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 %34, 4
  %36 = call i32 %32(%struct.x86emu* %33, i32 %35)
  %37 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %38 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %41 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %44 = call i32 @x86emu_exec(%struct.x86emu* %43)
  ret void
}

declare dso_local i32 @push_word(%struct.x86emu*, i32) #1

declare dso_local i32 @CLEAR_FLAG(i32) #1

declare dso_local i32 @x86emu_exec(%struct.x86emu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
