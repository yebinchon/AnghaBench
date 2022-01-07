; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_upriv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_upriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUT_UPRIV = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_upriv(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %6, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = add i64 16, %14
  %16 = call i32 @GET_TOKEN_AREA(i32* %12, i32* %13, i64 %15)
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %35

20:                                               ; preds = %2
  %21 = load i32*, i32** %7, align 8
  %22 = load i8, i8* @AUT_UPRIV, align 1
  %23 = call i32 @ADD_U_CHAR(i32* %21, i8 signext %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load i8, i8* %4, align 1
  %26 = call i32 @ADD_U_CHAR(i32* %24, i8 signext %25)
  %27 = load i32*, i32** %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @ADD_U_INT16(i32* %27, i64 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @ADD_STRING(i32* %30, i8* %31, i64 %32)
  %34 = load i32*, i32** %8, align 8
  store i32* %34, i32** %3, align 8
  br label %35

35:                                               ; preds = %20, %19
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i64) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i8 signext) #1

declare dso_local i32 @ADD_U_INT16(i32*, i64) #1

declare dso_local i32 @ADD_STRING(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
