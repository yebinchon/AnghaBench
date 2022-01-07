; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/misc/extr_straddr.c_uni_prefix2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/misc/extr_straddr.c_uni_prefix2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uni_prefix2str.hex = internal global [16 x i8] c"0123456789abcdef", align 16
@uni_prefix2str.fmt = internal global [3 x [6 x i32]] [[6 x i32] [i32 1, i32 2, i32 10, i32 6, i32 1, i32 0], [6 x i32] [i32 1, i32 2, i32 10, i32 6, i32 1, i32 0], [6 x i32] [i32 1, i32 8, i32 4, i32 6, i32 1, i32 0]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_prefix2str(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 20
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 20, i32* %7, align 4
  br label %15

15:                                               ; preds = %14, %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %91

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %90 [
    i32 57, label %21
    i32 71, label %88
    i32 69, label %89
  ]

21:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %89, %88, %21
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %82, %22
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x [6 x i32]], [3 x [6 x i32]]* @uni_prefix2str.fmt, i64 0, i64 %25
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %85

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %86

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  store i8 46, i8* %40, align 1
  br label %42

42:                                               ; preds = %39, %36
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %78, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x [6 x i32]], [3 x [6 x i32]]* @uni_prefix2str.fmt, i64 0, i64 %46
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %47, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %44, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  %56 = icmp eq i32 %54, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %86

58:                                               ; preds = %53
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 4
  %62 = and i32 %61, 15
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* @uni_prefix2str.hex, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  store i8 %65, i8* %66, align 1
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 15
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* @uni_prefix2str.hex, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  store i8 %73, i8* %74, align 1
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %6, align 8
  br label %78

78:                                               ; preds = %58
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %43

81:                                               ; preds = %43
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %23

85:                                               ; preds = %23
  br label %86

86:                                               ; preds = %85, %57, %35
  %87 = load i8*, i8** %5, align 8
  store i8 0, i8* %87, align 1
  br label %121

88:                                               ; preds = %18
  store i32 1, i32* %11, align 4
  br label %22

89:                                               ; preds = %18
  store i32 2, i32* %11, align 4
  br label %22

90:                                               ; preds = %18
  br label %91

91:                                               ; preds = %90, %15
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %116, %91
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %119

96:                                               ; preds = %92
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 4
  %100 = and i32 %99, 15
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [16 x i8], [16 x i8]* @uni_prefix2str.hex, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %5, align 8
  store i8 %103, i8* %104, align 1
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 15
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [16 x i8], [16 x i8]* @uni_prefix2str.hex, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %5, align 8
  store i8 %111, i8* %112, align 1
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %6, align 8
  br label %116

116:                                              ; preds = %96
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %92

119:                                              ; preds = %92
  %120 = load i8*, i8** %5, align 8
  store i8 0, i8* %120, align 1
  br label %121

121:                                              ; preds = %119, %86
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
