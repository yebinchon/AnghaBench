; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUR_BYTE_SIZE = common dso_local global i64 0, align 8
@AUR_SHORT_SIZE = common dso_local global i64 0, align 8
@AUR_INT32_SIZE = common dso_local global i64 0, align 8
@AUR_INT64_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AUT_DATA = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_data(i8 signext %0, i8 signext %1, i8 signext %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8 %0, i8* %6, align 1
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %11, align 8
  %14 = load i8, i8* %7, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %24 [
    i32 131, label %16
    i32 128, label %18
    i32 130, label %20
    i32 129, label %22
  ]

16:                                               ; preds = %4
  %17 = load i64, i64* @AUR_BYTE_SIZE, align 8
  store i64 %17, i64* %12, align 8
  br label %26

18:                                               ; preds = %4
  %19 = load i64, i64* @AUR_SHORT_SIZE, align 8
  store i64 %19, i64* %12, align 8
  br label %26

20:                                               ; preds = %4
  %21 = load i64, i64* @AUR_INT32_SIZE, align 8
  store i64 %21, i64* %12, align 8
  br label %26

22:                                               ; preds = %4
  %23 = load i64, i64* @AUR_INT64_SIZE, align 8
  store i64 %23, i64* %12, align 8
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* @errno, align 4
  store i32* null, i32** %5, align 8
  br label %58

26:                                               ; preds = %22, %20, %18, %16
  %27 = load i64, i64* %12, align 8
  %28 = load i8, i8* %8, align 1
  %29 = sext i8 %28 to i64
  %30 = mul i64 %27, %29
  store i64 %30, i64* %13, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i64, i64* %13, align 8
  %34 = add i64 16, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @GET_TOKEN_AREA(i32* %31, i32* %32, i32 %35)
  %37 = load i32*, i32** %10, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  store i32* null, i32** %5, align 8
  br label %58

40:                                               ; preds = %26
  %41 = load i32*, i32** %11, align 8
  %42 = load i8, i8* @AUT_DATA, align 1
  %43 = call i32 @ADD_U_CHAR(i32* %41, i8 signext %42)
  %44 = load i32*, i32** %11, align 8
  %45 = load i8, i8* %6, align 1
  %46 = call i32 @ADD_U_CHAR(i32* %44, i8 signext %45)
  %47 = load i32*, i32** %11, align 8
  %48 = load i8, i8* %7, align 1
  %49 = call i32 @ADD_U_CHAR(i32* %47, i8 signext %48)
  %50 = load i32*, i32** %11, align 8
  %51 = load i8, i8* %8, align 1
  %52 = call i32 @ADD_U_CHAR(i32* %50, i8 signext %51)
  %53 = load i32*, i32** %11, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @ADD_MEM(i32* %53, i8* %54, i64 %55)
  %57 = load i32*, i32** %10, align 8
  store i32* %57, i32** %5, align 8
  br label %58

58:                                               ; preds = %40, %39, %24
  %59 = load i32*, i32** %5, align 8
  ret i32* %59
}

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i8 signext) #1

declare dso_local i32 @ADD_MEM(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
