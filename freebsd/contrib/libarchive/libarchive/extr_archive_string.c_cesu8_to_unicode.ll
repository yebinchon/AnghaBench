; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_cesu8_to_unicode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_cesu8_to_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNICODE_R_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @cesu8_to_unicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cesu8_to_unicode(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @_utf8_to_unicode(i32* %8, i8* %11, i64 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %42

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @IS_HIGH_SURROGATE_LA(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  %21 = load i64, i64* %7, align 8
  %22 = sub i64 %21, 3
  %23 = icmp ult i64 %22, 3
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %55

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 %28, 3
  %30 = call i32 @_utf8_to_unicode(i32* %10, i8* %27, i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @IS_LOW_SURROGATE_LA(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %25
  br label %55

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @combine_surrogate_pair(i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  store i32 6, i32* %9, align 4
  br label %51

42:                                               ; preds = %16, %3
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @IS_LOW_SURROGATE_LA(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %55

50:                                               ; preds = %45, %42
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %65

55:                                               ; preds = %49, %37, %24
  %56 = load i32, i32* @UNICODE_R_CHAR, align 4
  %57 = load i32*, i32** %5, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %51
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @_utf8_to_unicode(i32*, i8*, i64) #1

declare dso_local i64 @IS_HIGH_SURROGATE_LA(i32) #1

declare dso_local i64 @IS_LOW_SURROGATE_LA(i32) #1

declare dso_local i32 @combine_surrogate_pair(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
