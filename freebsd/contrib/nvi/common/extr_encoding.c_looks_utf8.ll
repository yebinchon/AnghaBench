; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_encoding.c_looks_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_encoding.c_looks_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@text_chars = common dso_local global i64* null, align 8
@T = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @looks_utf8(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %116, %2
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %119

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load i64*, i64** @text_chars, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %26, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @T, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  br label %37

37:                                               ; preds = %36, %25
  br label %115

38:                                               ; preds = %18
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 64
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %131

46:                                               ; preds = %38
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load i32*, i32** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 193
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1, i32* %11, align 4
  br label %61

60:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %131

61:                                               ; preds = %59
  br label %89

62:                                               ; preds = %46
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 2, i32* %11, align 4
  br label %88

70:                                               ; preds = %62
  %71 = load i32*, i32** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load i32*, i32** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %81, 245
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 3, i32* %11, align 4
  br label %85

84:                                               ; preds = %77
  store i32 -1, i32* %3, align 4
  br label %131

85:                                               ; preds = %83
  br label %87

86:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %131

87:                                               ; preds = %85
  br label %88

88:                                               ; preds = %87, %69
  br label %89

89:                                               ; preds = %88, %61
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %110, %89
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %90
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %7, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %5, align 8
  %99 = icmp uge i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %120

101:                                              ; preds = %94
  %102 = load i32*, i32** %6, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 192
  %107 = icmp ne i32 %106, 128
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  store i32 -1, i32* %3, align 4
  br label %131

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %90

113:                                              ; preds = %90
  store i32 1, i32* %9, align 4
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114, %37
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %7, align 8
  br label %14

119:                                              ; preds = %14
  br label %120

120:                                              ; preds = %119, %100
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %129

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 2, i32 1
  br label %129

129:                                              ; preds = %124, %123
  %130 = phi i32 [ 0, %123 ], [ %128, %124 ]
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %108, %86, %84, %60, %45
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
