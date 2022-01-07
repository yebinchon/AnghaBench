; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_arg64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_arg64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUT_ARG64 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_arg64(i8 signext %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %10, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = add i64 20, %17
  %19 = call i32 @GET_TOKEN_AREA(i32* %15, i32* %16, i64 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %41

23:                                               ; preds = %3
  %24 = load i32*, i32** %9, align 8
  %25 = load i8, i8* @AUT_ARG64, align 1
  %26 = call i32 @ADD_U_CHAR(i32* %24, i8 signext %25)
  %27 = load i32*, i32** %9, align 8
  %28 = load i8, i8* %5, align 1
  %29 = call i32 @ADD_U_CHAR(i32* %27, i8 signext %28)
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ADD_U_INT64(i32* %30, i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @ADD_U_INT16(i32* %33, i64 %34)
  %36 = load i32*, i32** %9, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @ADD_STRING(i32* %36, i8* %37, i64 %38)
  %40 = load i32*, i32** %8, align 8
  store i32* %40, i32** %4, align 8
  br label %41

41:                                               ; preds = %23, %22
  %42 = load i32*, i32** %4, align 8
  ret i32* %42
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i64) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i8 signext) #1

declare dso_local i32 @ADD_U_INT64(i32*, i32) #1

declare dso_local i32 @ADD_U_INT16(i32*, i64) #1

declare dso_local i32 @ADD_STRING(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
