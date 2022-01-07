; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@AUT_OTHER_FILE32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_file(i8* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.timeval, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = bitcast %struct.timeval* %4 to i64*
  store i64 %1, i64* %10, align 4
  store i8* %0, i8** %5, align 8
  store i32* null, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = add i64 20, %17
  %19 = call i32 @GET_TOKEN_AREA(i32* %15, i32* %16, i64 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %45

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 1000
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @AUT_OTHER_FILE32, align 4
  %29 = call i32 @ADD_U_CHAR(i32* %27, i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ADD_U_INT32(i32* %30, i32 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @ADD_U_INT32(i32* %34, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @ADD_U_INT16(i32* %37, i64 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @ADD_STRING(i32* %40, i8* %41, i64 %42)
  %44 = load i32*, i32** %6, align 8
  store i32* %44, i32** %3, align 8
  br label %45

45:                                               ; preds = %23, %22
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i64) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT32(i32*, i32) #1

declare dso_local i32 @ADD_U_INT16(i32*, i64) #1

declare dso_local i32 @ADD_STRING(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
