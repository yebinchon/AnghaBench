; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string_conversion.c_scan_unicode_pattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string_conversion.c_scan_unicode_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*, i8*, i8*, i32)* @scan_unicode_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_unicode_pattern(i8* %0, i32* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load i8*, i8** %11, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %15, align 8
  %22 = load i32*, i32** %8, align 8
  store i32* %22, i32** %16, align 8
  %23 = load i8*, i8** %9, align 8
  store i8* %23, i8** %17, align 8
  %24 = load i8*, i8** %10, align 8
  store i8* %24, i8** %18, align 8
  store i32 0, i32* %19, align 4
  br label %25

25:                                               ; preds = %112, %6
  %26 = load i8*, i8** %14, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sge i32 %28, 48
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i8*, i8** %14, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sle i32 %33, 57
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* %13, align 4
  %37 = shl i32 %36, 4
  %38 = load i8*, i8** %14, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = sub nsw i32 %40, 48
  %42 = add i32 %37, %41
  store i32 %42, i32* %13, align 4
  br label %112

43:                                               ; preds = %30, %25
  %44 = load i8*, i8** %14, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sge i32 %46, 65
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load i8*, i8** %14, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sle i32 %51, 70
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  %55 = shl i32 %54, 4
  %56 = load i8*, i8** %14, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 65
  %60 = add nsw i32 %59, 10
  %61 = add i32 %55, %60
  store i32 %61, i32* %13, align 4
  br label %111

62:                                               ; preds = %48, %43
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i8*, i8** %15, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = icmp eq i8* %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %13, align 4
  switch i32 %70, label %72 [
    i32 8596, label %71
    i32 8602, label %71
    i32 8603, label %71
    i32 8622, label %71
    i32 8653, label %71
    i32 8654, label %71
    i32 8655, label %71
    i32 8708, label %71
    i32 8713, label %71
    i32 8716, label %71
    i32 8740, label %71
    i32 8742, label %71
    i32 8769, label %71
    i32 8772, label %71
    i32 8775, label %71
    i32 8777, label %71
    i32 8800, label %71
    i32 8802, label %71
    i32 8813, label %71
    i32 8814, label %71
    i32 8815, label %71
    i32 8816, label %71
    i32 8817, label %71
    i32 8820, label %71
    i32 8821, label %71
    i32 8822, label %71
    i32 8824, label %71
    i32 8825, label %71
    i32 8826, label %71
    i32 8827, label %71
    i32 8832, label %71
    i32 8833, label %71
    i32 8836, label %71
    i32 8837, label %71
    i32 8840, label %71
    i32 8841, label %71
    i32 8876, label %71
    i32 8877, label %71
    i32 8878, label %71
    i32 8879, label %71
    i32 8928, label %71
    i32 8929, label %71
    i32 8930, label %71
    i32 8931, label %71
    i32 8938, label %71
    i32 8939, label %71
    i32 8940, label %71
    i32 8941, label %71
    i32 69786, label %71
    i32 69788, label %71
    i32 69803, label %71
  ]

71:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69, %69
  store i32 1, i32* %19, align 4
  br label %72

72:                                               ; preds = %69, %71
  br label %73

73:                                               ; preds = %72, %65, %62
  %74 = load i8*, i8** %17, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @unicode_to_utf16be(i8* %74, i32 %75)
  %77 = load i8*, i8** %17, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %17, align 8
  %80 = load i8*, i8** %18, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @unicode_to_utf16le(i8* %80, i32 %81)
  %83 = load i8*, i8** %18, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %18, align 8
  %86 = load i32*, i32** %16, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @unicode_to_wc(i32* %86, i32 %87)
  %89 = load i32*, i32** %16, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %16, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @unicode_to_utf8(i8* %92, i32 %93)
  %95 = load i8*, i8** %15, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %15, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %73
  %102 = load i8*, i8** %17, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %17, align 8
  store i8 0, i8* %102, align 1
  %104 = load i8*, i8** %17, align 8
  store i8 0, i8* %104, align 1
  %105 = load i8*, i8** %18, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %18, align 8
  store i8 0, i8* %105, align 1
  %107 = load i8*, i8** %18, align 8
  store i8 0, i8* %107, align 1
  %108 = load i32*, i32** %16, align 8
  store i32 0, i32* %108, align 4
  %109 = load i8*, i8** %15, align 8
  store i8 0, i8* %109, align 1
  br label %115

110:                                              ; preds = %73
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %110, %53
  br label %112

112:                                              ; preds = %111, %35
  %113 = load i8*, i8** %14, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %14, align 8
  br label %25

115:                                              ; preds = %101
  %116 = load i32, i32* %19, align 4
  ret i32 %116
}

declare dso_local i32 @unicode_to_utf16be(i8*, i32) #1

declare dso_local i32 @unicode_to_utf16le(i8*, i32) #1

declare dso_local i32 @unicode_to_wc(i32*, i32) #1

declare dso_local i32 @unicode_to_utf8(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
