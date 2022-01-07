; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/sodium/extr_codecs.c__sodium_base642bin_skip_padding.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/sodium/extr_codecs.c__sodium_base642bin_skip_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*, i8*, i64)* @_sodium_base642bin_skip_padding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sodium_base642bin_skip_padding(i8* %0, i64 %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  br label %13

13:                                               ; preds = %46, %5
  %14 = load i64, i64* %11, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load i64*, i64** %9, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @ERANGE, align 4
  store i32 %22, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %51

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 61
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i64, i64* %11, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %11, align 8
  br label %46

35:                                               ; preds = %23
  %36 = load i8*, i8** %10, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32* @strchr(i8* %39, i32 %40)
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %35
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %51

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  br label %13

50:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %43, %21
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32* @strchr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
