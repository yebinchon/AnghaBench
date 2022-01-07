; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_find_lowest_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_find_lowest_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC_LOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_lowest_section(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to i32**
  store i32** %9, i32*** %7, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @bfd_get_section_flags(i32* %10, i32* %11)
  %13 = load i32, i32* @SEC_LOAD, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 0, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %59

17:                                               ; preds = %3
  %18 = load i32**, i32*** %7, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i32**, i32*** %7, align 8
  store i32* %22, i32** %23, align 8
  br label %59

24:                                               ; preds = %17
  %25 = load i32*, i32** %4, align 8
  %26 = load i32**, i32*** %7, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @bfd_section_vma(i32* %25, i32* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @bfd_section_vma(i32* %29, i32* %30)
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32*, i32** %5, align 8
  %35 = load i32**, i32*** %7, align 8
  store i32* %34, i32** %35, align 8
  br label %58

36:                                               ; preds = %24
  %37 = load i32*, i32** %4, align 8
  %38 = load i32**, i32*** %7, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @bfd_section_vma(i32* %37, i32* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @bfd_section_vma(i32* %41, i32* %42)
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %36
  %46 = load i32*, i32** %4, align 8
  %47 = load i32**, i32*** %7, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @bfd_section_size(i32* %46, i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i64 @bfd_section_size(i32* %50, i32* %51)
  %53 = icmp sle i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32*, i32** %5, align 8
  %56 = load i32**, i32*** %7, align 8
  store i32* %55, i32** %56, align 8
  br label %57

57:                                               ; preds = %54, %45, %36
  br label %58

58:                                               ; preds = %57, %33
  br label %59

59:                                               ; preds = %16, %58, %21
  ret void
}

declare dso_local i32 @bfd_get_section_flags(i32*, i32*) #1

declare dso_local i64 @bfd_section_vma(i32*, i32*) #1

declare dso_local i64 @bfd_section_size(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
