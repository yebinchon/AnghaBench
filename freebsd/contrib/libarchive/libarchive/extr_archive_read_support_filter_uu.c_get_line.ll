; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_uu.c_get_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_uu.c_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ascii = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64*)* @get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_line(i8* %0, i64 %1, i64* %2) #0 {
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

9:                                                ; preds = %59, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %60

13:                                               ; preds = %9
  %14 = load i32*, i32** @ascii, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %59 [
    i32 0, label %20
    i32 13, label %26
    i32 10, label %46
    i32 1, label %54
  ]

20:                                               ; preds = %13
  %21 = load i64*, i64** %7, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64*, i64** %7, align 8
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %23, %20
  store i64 -1, i64* %4, align 8
  br label %67

26:                                               ; preds = %13
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sub nsw i64 %27, %28
  %30 = icmp sgt i64 %29, 1
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i64*, i64** %7, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i64*, i64** %7, align 8
  store i64 2, i64* %41, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %43, 2
  store i64 %44, i64* %4, align 8
  br label %67

45:                                               ; preds = %31, %26
  br label %46

46:                                               ; preds = %13, %45
  %47 = load i64*, i64** %7, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i64*, i64** %7, align 8
  store i64 1, i64* %50, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i64, i64* %8, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %4, align 8
  br label %67

54:                                               ; preds = %13
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  %57 = load i64, i64* %8, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %13, %54
  br label %9

60:                                               ; preds = %9
  %61 = load i64*, i64** %7, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i64*, i64** %7, align 8
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i64, i64* %6, align 8
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %65, %51, %42, %25
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
