; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c__hx509_name_ds_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c__hx509_name_ds_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_name_ds_cmp(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @dsstringprep(i32* %14, i32** %8, i64* %10)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %4, align 4
  br label %69

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @dsstringprep(i32* %21, i32** %9, i64* %11)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @free(i32* %26)
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %4, align 4
  br label %69

29:                                               ; preds = %20
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %64

39:                                               ; preds = %29
  store i64 0, i64* %12, align 8
  br label %40

40:                                               ; preds = %60, %39
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %48, %52
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %63

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %12, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %12, align 8
  br label %40

63:                                               ; preds = %58, %40
  br label %64

64:                                               ; preds = %63, %33
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @free(i32* %65)
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @free(i32* %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %25, %18
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @dsstringprep(i32*, i32**, i64*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
