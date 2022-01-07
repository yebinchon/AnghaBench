; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_mbsnrtowcs.c___mbsnrtowcs_std.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_mbsnrtowcs.c___mbsnrtowcs_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mbsnrtowcs_std(i32* noalias %0, i8** noalias %1, i64 %2, i64 %3, i32* noalias %4, i64 (i32*, i8*, i64, i32*)* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64 (i32*, i8*, i64, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 (i32*, i8*, i64, i32*)* %5, i64 (i32*, i8*, i64, i32*)** %13, align 8
  %18 = load i8**, i8*** %9, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %14, align 8
  store i64 0, i64* %15, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %40, %22
  %24 = load i64 (i32*, i8*, i64, i32*)*, i64 (i32*, i8*, i64, i32*)** %13, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i64 %24(i32* %16, i8* %25, i64 %26, i32* %27)
  store i64 %28, i64* %17, align 8
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i64 -1, i64* %7, align 8
  br label %97

31:                                               ; preds = %23
  %32 = load i64, i64* %17, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %17, align 8
  %36 = icmp eq i64 %35, -2
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %31
  %38 = load i64, i64* %15, align 8
  store i64 %38, i64* %7, align 8
  br label %97

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %17, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %14, align 8
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* %10, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %15, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %15, align 8
  br label %23

49:                                               ; preds = %6
  br label %50

50:                                               ; preds = %82, %49
  %51 = load i64, i64* %11, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %11, align 8
  %53 = icmp ugt i64 %51, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %50
  %55 = load i64 (i32*, i8*, i64, i32*)*, i64 (i32*, i8*, i64, i32*)** %13, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = call i64 %55(i32* %56, i8* %57, i64 %58, i32* %59)
  store i64 %60, i64* %17, align 8
  %61 = icmp eq i64 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i8*, i8** %14, align 8
  %64 = load i8**, i8*** %9, align 8
  store i8* %63, i8** %64, align 8
  store i64 -1, i64* %7, align 8
  br label %97

65:                                               ; preds = %54
  %66 = load i64, i64* %17, align 8
  %67 = icmp eq i64 %66, -2
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i8*, i8** %14, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8**, i8*** %9, align 8
  store i8* %71, i8** %72, align 8
  %73 = load i64, i64* %15, align 8
  store i64 %73, i64* %7, align 8
  br label %97

74:                                               ; preds = %65
  %75 = load i64, i64* %17, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8**, i8*** %9, align 8
  store i8* null, i8** %78, align 8
  %79 = load i64, i64* %15, align 8
  store i64 %79, i64* %7, align 8
  br label %97

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %17, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 %83
  store i8* %85, i8** %14, align 8
  %86 = load i64, i64* %17, align 8
  %87 = load i64, i64* %10, align 8
  %88 = sub i64 %87, %86
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %15, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %15, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %8, align 8
  br label %50

93:                                               ; preds = %50
  %94 = load i8*, i8** %14, align 8
  %95 = load i8**, i8*** %9, align 8
  store i8* %94, i8** %95, align 8
  %96 = load i64, i64* %15, align 8
  store i64 %96, i64* %7, align 8
  br label %97

97:                                               ; preds = %93, %77, %68, %62, %37, %30
  %98 = load i64, i64* %7, align 8
  ret i64 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
