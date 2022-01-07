; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-domain.c_blabel_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-domain.c_blabel_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\\[x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%1x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/%d]\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c".../%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @blabel_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @blabel_print(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ND_TTEST2(i32 %13, i32 1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %118

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 256, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 3
  %25 = sdiv i32 %24, 4
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str to i32*))
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32* %34, i32** %9, align 8
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %55, %22
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ult i32* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 7
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i1 [ false, %36 ], [ %42, %40 ]
  br i1 %44, label %45, label %60

45:                                               ; preds = %43
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ND_TCHECK(i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i32*
  %54 = call i32 @ND_PRINT(i32* %53)
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, 8
  store i32 %57, i32* %8, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %9, align 8
  br label %36

60:                                               ; preds = %43
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 4
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ND_TCHECK(i32 %65)
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %9, align 8
  %69 = load i32, i32* %67, align 4
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %11, align 1
  %71 = load i32*, i32** %4, align 8
  %72 = load i8, i8* %11, align 1
  %73 = sext i8 %72 to i32
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 8, %74
  %76 = shl i32 255, %75
  %77 = and i32 %73, %76
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i32*
  %80 = call i32 @ND_PRINT(i32* %79)
  br label %105

81:                                               ; preds = %60
  %82 = load i32, i32* %8, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ND_TCHECK(i32 %86)
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %9, align 8
  %90 = load i32, i32* %88, align 4
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %11, align 1
  %92 = load i32*, i32** %4, align 8
  %93 = load i8, i8* %11, align 1
  %94 = sext i8 %93 to i32
  %95 = ashr i32 %94, 4
  %96 = and i32 %95, 15
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 4, %97
  %99 = shl i32 15, %98
  %100 = and i32 %96, %99
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i32*
  %103 = call i32 @ND_PRINT(i32* %102)
  br label %104

104:                                              ; preds = %84, %81
  br label %105

105:                                              ; preds = %104, %63
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i32*
  %110 = call i32 @ND_PRINT(i32* %109)
  %111 = load i32*, i32** %10, align 8
  store i32* %111, i32** %3, align 8
  br label %118

112:                                              ; No predecessors!
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i32*
  %117 = call i32 @ND_PRINT(i32* %116)
  store i32* null, i32** %3, align 8
  br label %118

118:                                              ; preds = %112, %105, %16
  %119 = load i32*, i32** %3, align 8
  ret i32* %119
}

declare dso_local i32 @ND_TTEST2(i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
