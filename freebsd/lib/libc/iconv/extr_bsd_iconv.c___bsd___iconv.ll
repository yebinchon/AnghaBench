; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_bsd_iconv.c___bsd___iconv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_bsd_iconv.c___bsd___iconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__bsd___iconv(i64 %0, i8** %1, i64* %2, i8** %3, i64* %4, i32 %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i8** %1, i8*** %10, align 8
  store i64* %2, i64** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @ISBADF(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i32, i32* @EBADF, align 4
  store i32 %22, i32* @errno, align 4
  store i64 -1, i64* %8, align 8
  br label %45

23:                                               ; preds = %7
  %24 = load i64, i64* %9, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct._citrus_iconv*
  %27 = load i8**, i8*** %10, align 8
  %28 = load i64*, i64** %11, align 8
  %29 = load i8**, i8*** %12, align 8
  %30 = load i64*, i64** %13, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @_citrus_iconv_convert(%struct._citrus_iconv* %26, i8** %27, i64* %28, i8** %29, i64* %30, i32 %31, i64* %16)
  store i32 %32, i32* %17, align 4
  %33 = load i64*, i64** %15, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i64, i64* %16, align 8
  %37 = load i64*, i64** %15, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %23
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* @errno, align 4
  store i64 -1, i64* %16, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i64, i64* %16, align 8
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %43, %21
  %46 = load i64, i64* %8, align 8
  ret i64 %46
}

declare dso_local i64 @ISBADF(i64) #1

declare dso_local i32 @_citrus_iconv_convert(%struct._citrus_iconv*, i8**, i64*, i8**, i64*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
