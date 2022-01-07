; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_uesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_uesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @argv_uesc(i32* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = add i64 %16, 1
  %18 = call i32 @GET_SPACE_GOTOW(i32* %13, i8* %14, i64 %15, i64 %17)
  %19 = load i8*, i8** %11, align 8
  store i8* %19, i8** %12, align 8
  br label %20

20:                                               ; preds = %76, %4
  %21 = load i64, i64* %9, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %81

23:                                               ; preds = %20
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @IS_ESCAPE(i32* %24, i32* %25, i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %9, align 8
  %33 = icmp ult i64 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %81

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  br label %71

38:                                               ; preds = %23
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 92
  br i1 %42, label %43, label %70

43:                                               ; preds = %38
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %9, align 8
  %46 = icmp ult i64 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %81

48:                                               ; preds = %43
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 92
  br i1 %54, label %55, label %69

55:                                               ; preds = %48
  %56 = load i64, i64* %9, align 8
  %57 = icmp ugt i64 %56, 1
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  switch i32 %62, label %68 [
    i32 33, label %63
    i32 37, label %63
    i32 35, label %63
  ]

63:                                               ; preds = %58, %58, %58
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* %9, align 8
  br label %68

68:                                               ; preds = %63, %58
  br label %69

69:                                               ; preds = %68, %55, %48
  br label %70

70:                                               ; preds = %69, %38
  br label %71

71:                                               ; preds = %70, %35
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %12, align 8
  store i8 %73, i8* %74, align 1
  br label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %9, align 8
  br label %20

81:                                               ; preds = %47, %34, %20
  %82 = load i8*, i8** %12, align 8
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %11, align 8
  store i8* %83, i8** %5, align 8
  br label %85

84:                                               ; No predecessors!
  store i8* null, i8** %5, align 8
  br label %85

85:                                               ; preds = %84, %81
  %86 = load i8*, i8** %5, align 8
  ret i8* %86
}

declare dso_local i32 @GET_SPACE_GOTOW(i32*, i8*, i64, i64) #1

declare dso_local i64 @IS_ESCAPE(i32*, i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
