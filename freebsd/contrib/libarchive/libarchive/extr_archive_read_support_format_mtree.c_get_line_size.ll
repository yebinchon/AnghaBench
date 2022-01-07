; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_get_line_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_get_line_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64*)* @get_line_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_line_size(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %56, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %51 [
    i32 0, label %17
    i32 13, label %23
    i32 10, label %43
  ]

17:                                               ; preds = %13
  %18 = load i64*, i64** %7, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i64*, i64** %7, align 8
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %20, %17
  store i64 -1, i64* %4, align 8
  br label %64

23:                                               ; preds = %13
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = sub nsw i64 %24, %25
  %27 = icmp sgt i64 %26, 1
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i64*, i64** %7, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i64*, i64** %7, align 8
  store i64 2, i64* %38, align 8
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %40, 2
  store i64 %41, i64* %4, align 8
  br label %64

42:                                               ; preds = %28, %23
  br label %43

43:                                               ; preds = %13, %42
  %44 = load i64*, i64** %7, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i64*, i64** %7, align 8
  store i64 1, i64* %47, align 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %4, align 8
  br label %64

51:                                               ; preds = %13
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %51
  br label %9

57:                                               ; preds = %9
  %58 = load i64*, i64** %7, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64*, i64** %7, align 8
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %62, %48, %39, %22
  %65 = load i64, i64* %4, align 8
  ret i64 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
