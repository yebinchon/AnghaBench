; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_privset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_privset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUT_PRIV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_privset(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %7, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add i64 20, %18
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %19, %20
  %22 = call i32 @GET_TOKEN_AREA(i32* %16, i32* %17, i64 %21)
  %23 = load i32*, i32** %9, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %45

26:                                               ; preds = %2
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @AUT_PRIV, align 4
  %29 = call i32 @ADD_U_CHAR(i32* %27, i32 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @ADD_U_INT16(i32* %30, i64 %31)
  %33 = load i32*, i32** %8, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @ADD_STRING(i32* %33, i8* %34, i64 %35)
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @ADD_U_INT16(i32* %37, i64 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @ADD_STRING(i32* %40, i8* %41, i64 %42)
  %44 = load i32*, i32** %9, align 8
  store i32* %44, i32** %3, align 8
  br label %45

45:                                               ; preds = %26, %25
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i64) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT16(i32*, i64) #1

declare dso_local i32 @ADD_STRING(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
