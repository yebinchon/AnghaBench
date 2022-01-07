; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/ISO2022/extr_citrus_iso2022.c__citrus_ISO2022_put_state_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/ISO2022/extr_citrus_iso2022.c__citrus_ISO2022_put_state_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_LEN_MAX = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32*, i64*)* @_citrus_ISO2022_put_state_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_ISO2022_put_state_reset(i32* noalias %0, i8* noalias %1, i64 %2, i32* noalias %3, i64* noalias %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load i32, i32* @MB_LEN_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = trunc i64 %19 to i32
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @_ISO2022_sputwchar(i32* %22, i32 0, i8* %21, i32 %23, i8** %12, i32* %24, i64* %15)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load i64, i64* %15, align 8
  %30 = load i64*, i64** %11, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %51

32:                                               ; preds = %5
  %33 = load i64, i64* %15, align 8
  %34 = icmp ult i64 %19, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %15, align 8
  %38 = sub i64 %37, 1
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %32
  %41 = load i64*, i64** %11, align 8
  store i64 -1, i64* %41, align 8
  %42 = load i32, i32* @E2BIG, align 4
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %51

43:                                               ; preds = %35
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %15, align 8
  %46 = sub i64 %45, 1
  %47 = call i32 @memcpy(i8* %44, i8* %21, i64 %46)
  %48 = load i64, i64* %15, align 8
  %49 = sub i64 %48, 1
  %50 = load i64*, i64** %11, align 8
  store i64 %49, i64* %50, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %51

51:                                               ; preds = %43, %40, %28
  %52 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_ISO2022_sputwchar(i32*, i32, i8*, i32, i8**, i32*, i64*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
