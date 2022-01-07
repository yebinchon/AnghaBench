; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_find_line_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_find_line_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linetable = type { i32, %struct.linetable_entry* }
%struct.linetable_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linetable*, i32, i32*)* @find_line_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_line_common(%struct.linetable* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.linetable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.linetable_entry*, align 8
  store %struct.linetable* %0, %struct.linetable** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %70

16:                                               ; preds = %3
  %17 = load %struct.linetable*, %struct.linetable** %5, align 8
  %18 = icmp eq %struct.linetable* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %70

20:                                               ; preds = %16
  %21 = load %struct.linetable*, %struct.linetable** %5, align 8
  %22 = getelementptr inbounds %struct.linetable, %struct.linetable* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %64, %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load %struct.linetable*, %struct.linetable** %5, align 8
  %30 = getelementptr inbounds %struct.linetable, %struct.linetable* %29, i32 0, i32 1
  %31 = load %struct.linetable_entry*, %struct.linetable_entry** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %31, i64 %33
  store %struct.linetable_entry* %34, %struct.linetable_entry** %12, align 8
  %35 = load %struct.linetable_entry*, %struct.linetable_entry** %12, align 8
  %36 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32*, i32** %7, align 8
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %70

43:                                               ; preds = %28
  %44 = load %struct.linetable_entry*, %struct.linetable_entry** %12, align 8
  %45 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load %struct.linetable_entry*, %struct.linetable_entry** %12, align 8
  %54 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52, %49
  %59 = load %struct.linetable_entry*, %struct.linetable_entry** %12, align 8
  %60 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %58, %52, %43
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %24

67:                                               ; preds = %24
  %68 = load i32*, i32** %7, align 8
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %40, %19, %15
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
