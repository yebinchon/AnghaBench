; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_substr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_substr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"substr: m=%d, n=%d, s=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @substr(i32** %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %13, align 8
  %14 = load i32**, i32*** %4, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32* @execute(i32* %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32**, i32*** %4, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32* @execute(i32* %20)
  store i32* %21, i32** %12, align 8
  %22 = load i32**, i32*** %4, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32**, i32*** %4, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32* @execute(i32* %29)
  store i32* %30, i32** %13, align 8
  br label %31

31:                                               ; preds = %26, %2
  %32 = load i32*, i32** %11, align 8
  %33 = call i8* @getsval(i32* %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp sle i32 %37, 1
  br i1 %38, label %39, label %56

39:                                               ; preds = %31
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @tempfree(i32* %40)
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @tempfree(i32* %42)
  %44 = load i32**, i32*** %4, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 2
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @tempfree(i32* %49)
  br label %51

51:                                               ; preds = %48, %39
  %52 = call i32* (...) @gettemp()
  store i32* %52, i32** %11, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @setsval(i32* %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %55 = load i32*, i32** %11, align 8
  store i32* %55, i32** %3, align 8
  br label %142

56:                                               ; preds = %31
  %57 = load i32*, i32** %12, align 8
  %58 = call i64 @getfval(i32* %57)
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %7, align 4
  br label %70

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %63
  br label %70

70:                                               ; preds = %69, %62
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @tempfree(i32* %71)
  %73 = load i32**, i32*** %4, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 2
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32*, i32** %13, align 8
  %79 = call i64 @getfval(i32* %78)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %8, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @tempfree(i32* %81)
  br label %86

83:                                               ; preds = %70
  %84 = load i32, i32* %6, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %83, %77
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %8, align 4
  br label %101

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %92, %93
  %95 = icmp sgt i32 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %96, %90
  br label %101

101:                                              ; preds = %100, %89
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @dprintf(i8* %104)
  %106 = call i32* (...) @gettemp()
  store i32* %106, i32** %12, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %108, %109
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %107, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  store i32 %115, i32* %10, align 4
  %116 = load i8*, i8** %9, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %117, %118
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %116, i64 %121
  store i8 0, i8* %122, align 1
  %123 = load i32*, i32** %12, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = getelementptr inbounds i8, i8* %127, i64 -1
  %129 = call i32 @setsval(i32* %123, i8* %128)
  %130 = load i32, i32* %10, align 4
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %9, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %133, %134
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %132, i64 %137
  store i8 %131, i8* %138, align 1
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @tempfree(i32* %139)
  %141 = load i32*, i32** %12, align 8
  store i32* %141, i32** %3, align 8
  br label %142

142:                                              ; preds = %101, %51
  %143 = load i32*, i32** %3, align 8
  ret i32* %143
}

declare dso_local i32* @execute(i32*) #1

declare dso_local i8* @getsval(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tempfree(i32*) #1

declare dso_local i32* @gettemp(...) #1

declare dso_local i32 @setsval(i32*, i8*) #1

declare dso_local i64 @getfval(i32*) #1

declare dso_local i32 @dprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
