; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_zonename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_zonename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUT_ZONENAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_zonename(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = add i64 12, %12
  %14 = call i32 @GET_TOKEN_AREA(i32* %10, i32* %11, i64 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %30

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @AUT_ZONENAME, align 4
  %21 = call i32 @ADD_U_CHAR(i32* %19, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @ADD_U_INT16(i32* %22, i64 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @ADD_STRING(i32* %25, i8* %26, i64 %27)
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %2, align 8
  br label %30

30:                                               ; preds = %18, %17
  %31 = load i32*, i32** %2, align 8
  ret i32* %31
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
