; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_find_line_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_find_line_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i32 }
%struct.linetable = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_line_pc(%struct.symtab* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.symtab*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.linetable*, align 8
  %9 = alloca i32, align 4
  store %struct.symtab* %0, %struct.symtab** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.symtab*, %struct.symtab** %5, align 8
  %12 = icmp eq %struct.symtab* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

14:                                               ; preds = %3
  %15 = load %struct.symtab*, %struct.symtab** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.symtab* @find_line_symtab(%struct.symtab* %15, i32 %16, i32* %9, i32* null)
  store %struct.symtab* %17, %struct.symtab** %5, align 8
  %18 = load %struct.symtab*, %struct.symtab** %5, align 8
  %19 = icmp ne %struct.symtab* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.symtab*, %struct.symtab** %5, align 8
  %22 = call %struct.linetable* @LINETABLE(%struct.symtab* %21)
  store %struct.linetable* %22, %struct.linetable** %8, align 8
  %23 = load %struct.linetable*, %struct.linetable** %8, align 8
  %24 = getelementptr inbounds %struct.linetable, %struct.linetable* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  store i32 1, i32* %4, align 4
  br label %33

32:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %20, %13
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.symtab* @find_line_symtab(%struct.symtab*, i32, i32*, i32*) #1

declare dso_local %struct.linetable* @LINETABLE(%struct.symtab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
