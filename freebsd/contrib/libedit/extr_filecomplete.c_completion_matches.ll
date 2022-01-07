; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_filecomplete.c_completion_matches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_filecomplete.c_completion_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @completion_matches(i8* %0, i8* (i8*, i32)* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8* (i8*, i32)*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8* (i8*, i32)* %1, i8* (i8*, i32)** %5, align 8
  store i8** null, i8*** %6, align 8
  store i64 0, i64* %13, align 8
  store i64 1, i64* %9, align 8
  br label %15

15:                                               ; preds = %48, %2
  %16 = load i8* (i8*, i32)*, i8* (i8*, i32)** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %13, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i8* %16(i8* %17, i32 %19)
  store i8* %20, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %54

22:                                               ; preds = %15
  %23 = load i64, i64* %13, align 8
  %24 = add i64 %23, 3
  %25 = load i64, i64* %9, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %33, %27
  %29 = load i64, i64* %13, align 8
  %30 = add i64 %29, 3
  %31 = load i64, i64* %9, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  %35 = shl i64 %34, 1
  store i64 %35, i64* %9, align 8
  br label %28

36:                                               ; preds = %28
  %37 = load i8**, i8*** %6, align 8
  %38 = load i64, i64* %9, align 8
  %39 = mul i64 %38, 8
  %40 = call i8** @el_realloc(i8** %37, i64 %39)
  store i8** %40, i8*** %14, align 8
  %41 = load i8**, i8*** %14, align 8
  %42 = icmp eq i8** %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i8**, i8*** %6, align 8
  %45 = call i32 @el_free(i8** %44)
  store i8** null, i8*** %3, align 8
  br label %126

46:                                               ; preds = %36
  %47 = load i8**, i8*** %14, align 8
  store i8** %47, i8*** %6, align 8
  br label %48

48:                                               ; preds = %46, %22
  %49 = load i8*, i8** %7, align 8
  %50 = load i8**, i8*** %6, align 8
  %51 = load i64, i64* %13, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %13, align 8
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* %49, i8** %53, align 8
  br label %15

54:                                               ; preds = %15
  %55 = load i8**, i8*** %6, align 8
  %56 = icmp ne i8** %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store i8** null, i8*** %3, align 8
  br label %126

58:                                               ; preds = %54
  store i64 2, i64* %11, align 8
  %59 = load i8**, i8*** %6, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i64 @strlen(i8* %62)
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %96, %58
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %13, align 8
  %67 = icmp ule i64 %65, %66
  br i1 %67, label %68, label %99

68:                                               ; preds = %64
  store i64 0, i64* %12, align 8
  br label %69

69:                                               ; preds = %91, %68
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = load i8*, i8** %8, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8**, i8*** %6, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds i8*, i8** %79, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %78, %86
  br label %88

88:                                               ; preds = %73, %69
  %89 = phi i1 [ false, %69 ], [ %87, %73 ]
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %12, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %12, align 8
  br label %69

94:                                               ; preds = %88
  %95 = load i64, i64* %12, align 8
  store i64 %95, i64* %10, align 8
  br label %96

96:                                               ; preds = %94
  %97 = load i64, i64* %11, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %11, align 8
  br label %64

99:                                               ; preds = %64
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %100, 1
  %102 = call i8* @el_calloc(i64 %101, i32 1)
  store i8* %102, i8** %7, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i8**, i8*** %6, align 8
  %107 = call i32 @el_free(i8** %106)
  store i8** null, i8*** %3, align 8
  br label %126

108:                                              ; preds = %99
  %109 = load i8*, i8** %7, align 8
  %110 = load i8**, i8*** %6, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @strncpy(i8* %109, i8* %112, i64 %113)
  %115 = load i8*, i8** %7, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8 0, i8* %117, align 1
  %118 = load i8*, i8** %7, align 8
  %119 = load i8**, i8*** %6, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 0
  store i8* %118, i8** %120, align 8
  %121 = load i8**, i8*** %6, align 8
  %122 = load i64, i64* %13, align 8
  %123 = add i64 %122, 1
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* null, i8** %124, align 8
  %125 = load i8**, i8*** %6, align 8
  store i8** %125, i8*** %3, align 8
  br label %126

126:                                              ; preds = %108, %105, %57, %43
  %127 = load i8**, i8*** %3, align 8
  ret i8** %127
}

declare dso_local i8** @el_realloc(i8**, i64) #1

declare dso_local i32 @el_free(i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @el_calloc(i64, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
