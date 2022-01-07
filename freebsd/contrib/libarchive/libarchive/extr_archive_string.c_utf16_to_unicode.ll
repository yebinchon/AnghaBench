; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_utf16_to_unicode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_utf16_to_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNICODE_R_CHAR = common dso_local global i32 0, align 4
@UNICODE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32)* @utf16_to_unicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf16_to_unicode(i32* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %93

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @UNICODE_R_CHAR, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  store i32 -1, i32* %5, align 4
  br label %93

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @archive_be16dec(i8* %27)
  store i32 %28, i32* %11, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @archive_le16dec(i8* %30)
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %34, i8** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @IS_HIGH_SURROGATE_LA(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %32
  %39 = load i64, i64* %8, align 8
  %40 = icmp uge i64 %39, 4
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @archive_be16dec(i8* %45)
  store i32 %46, i32* %12, align 4
  br label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @archive_le16dec(i8* %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %52

51:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, i32* %12, align 4
  %54 = call i64 @IS_LOW_SURROGATE_LA(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @combine_surrogate_pair(i32 %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  store i8* %61, i8** %10, align 8
  br label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @UNICODE_R_CHAR, align 4
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  store i32 -2, i32* %5, align 4
  br label %93

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %32
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @IS_SURROGATE_PAIR_LA(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @UNICODE_MAX, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70, %66
  %75 = load i32, i32* @UNICODE_R_CHAR, align 4
  %76 = load i32*, i32** %6, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = mul nsw i32 %82, -1
  store i32 %83, i32* %5, align 4
  br label %93

84:                                               ; preds = %70
  %85 = load i32, i32* %11, align 4
  %86 = load i32*, i32** %6, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %84, %74, %62, %20, %16
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @archive_be16dec(i8*) #1

declare dso_local i32 @archive_le16dec(i8*) #1

declare dso_local i64 @IS_HIGH_SURROGATE_LA(i32) #1

declare dso_local i64 @IS_LOW_SURROGATE_LA(i32) #1

declare dso_local i32 @combine_surrogate_pair(i32, i32) #1

declare dso_local i64 @IS_SURROGATE_PAIR_LA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
