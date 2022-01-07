; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c_append_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c_append_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_RFC2253 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8*, i64, i32)* @append_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_string(i8** %0, i64* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* @Q_RFC2253, align 4
  %19 = call i8* @quote_string(i8* %16, i64 %17, i32 %18, i64* %9)
  store i8* %19, i8** %12, align 8
  br label %23

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = call i8* @rk_UNCONST(i8* %21)
  store i8* %22, i8** %12, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i8**, i8*** %6, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %26, %28
  %30 = add i64 %29, 1
  %31 = call i8* @realloc(i8* %25, i64 %30)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = call i32 @_hx509_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %23
  %37 = load i8*, i8** %11, align 8
  %38 = load i64*, i64** %7, align 8
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8*, i8** %12, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @memcpy(i8* %40, i8* %41, i64 %42)
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @free(i8* %48)
  br label %50

50:                                               ; preds = %47, %36
  %51 = load i8*, i8** %11, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %53, %54
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %11, align 8
  %58 = load i8**, i8*** %6, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %59
  store i64 %62, i64* %60, align 8
  ret i32 0
}

declare dso_local i8* @quote_string(i8*, i64, i32, i64*) #1

declare dso_local i8* @rk_UNCONST(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @_hx509_abort(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
