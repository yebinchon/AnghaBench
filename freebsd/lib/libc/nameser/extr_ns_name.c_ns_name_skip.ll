; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_name.c_ns_name_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_name.c_ns_name_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EMSGSIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns_name_skip(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32**, i32*** %4, align 8
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  br label %11

11:                                               ; preds = %41, %25, %2
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ult i32* %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %6, align 8
  %18 = load i32, i32* %16, align 4
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i1 [ false, %11 ], [ %19, %15 ]
  br i1 %21, label %22, label %52

22:                                               ; preds = %20
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 129
  switch i32 %24, label %49 [
    i32 0, label %25
    i32 128, label %30
    i32 129, label %46
  ]

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %6, align 8
  br label %11

30:                                               ; preds = %22
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ult i32* %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 -1
  %37 = call i32 @labellen(i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @EMSGSIZE, align 4
  store i32 %40, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %61

41:                                               ; preds = %34, %30
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %6, align 8
  br label %11

46:                                               ; preds = %22
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %6, align 8
  br label %51

49:                                               ; preds = %22
  %50 = load i32, i32* @EMSGSIZE, align 4
  store i32 %50, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %61

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %20
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = icmp ugt i32* %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @EMSGSIZE, align 4
  store i32 %57, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %61

58:                                               ; preds = %52
  %59 = load i32*, i32** %6, align 8
  %60 = load i32**, i32*** %4, align 8
  store i32* %59, i32** %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %56, %49, %39
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @labellen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
