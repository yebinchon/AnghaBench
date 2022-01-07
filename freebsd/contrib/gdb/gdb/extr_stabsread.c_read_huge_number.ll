; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_read_huge_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_read_huge_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, i32, i32*)* @read_huge_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_huge_number(i8** %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  store i32 1, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 10, i32* %11, align 4
  store i8 0, i8* %12, align 1
  store i32 0, i32* %13, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 45
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  store i32 -1, i32* %9, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 48
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  store i32 8, i32* %11, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* @LONG_MAX, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sdiv i32 %34, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %15, align 8
  br label %38

38:                                               ; preds = %95, %33
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  %41 = load i8, i8* %39, align 1
  %42 = sext i8 %41 to i32
  store i32 %42, i32* %14, align 4
  %43 = icmp sge i32 %42, 48
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 48, %46
  %48 = icmp slt i32 %45, %47
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i1 [ false, %38 ], [ %48, %44 ]
  br i1 %50, label %51, label %96

51:                                               ; preds = %49
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %10, align 8
  %59 = mul nsw i64 %58, %57
  store i64 %59, i64* %10, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sub nsw i32 %60, 48
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %10, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %10, align 8
  br label %66

65:                                               ; preds = %51
  store i8 1, i8* %12, align 1
  br label %66

66:                                               ; preds = %65, %55
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %69, label %95

69:                                               ; preds = %66
  %70 = load i32, i32* %13, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = load i32, i32* %14, align 4
  %74 = icmp eq i32 %73, 48
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %90

76:                                               ; preds = %72
  %77 = load i32, i32* %14, align 4
  %78 = icmp eq i32 %77, 49
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 1, i32* %13, align 4
  br label %89

80:                                               ; preds = %76
  %81 = load i32, i32* %14, align 4
  %82 = icmp eq i32 %81, 50
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %84, 51
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %80
  store i32 2, i32* %13, align 4
  br label %88

87:                                               ; preds = %83
  store i32 3, i32* %13, align 4
  br label %88

88:                                               ; preds = %87, %86
  br label %89

89:                                               ; preds = %88, %79
  br label %90

90:                                               ; preds = %89, %75
  br label %94

91:                                               ; preds = %69
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 3
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %91, %90
  br label %95

95:                                               ; preds = %94, %66
  br label %38

96:                                               ; preds = %49
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i32*, i32** %7, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32*, i32** %7, align 8
  store i32 -1, i32* %110, align 4
  br label %111

111:                                              ; preds = %109, %106
  store i64 0, i64* %4, align 8
  br label %154

112:                                              ; preds = %102, %99
  br label %116

113:                                              ; preds = %96
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 -1
  store i8* %115, i8** %8, align 8
  br label %116

116:                                              ; preds = %113, %112
  %117 = load i8*, i8** %8, align 8
  %118 = load i8**, i8*** %5, align 8
  store i8* %117, i8** %118, align 8
  %119 = load i8, i8* %12, align 1
  %120 = icmp ne i8 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %116
  %122 = load i32, i32* %13, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load i32*, i32** %7, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32*, i32** %7, align 8
  store i32 -1, i32* %128, align 4
  br label %129

129:                                              ; preds = %127, %124
  store i64 0, i64* %4, align 8
  br label %154

130:                                              ; preds = %121
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32*, i32** %7, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %13, align 4
  %141 = load i32*, i32** %7, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %136
  br label %153

143:                                              ; preds = %116
  %144 = load i32*, i32** %7, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32*, i32** %7, align 8
  store i32 0, i32* %147, align 4
  br label %148

148:                                              ; preds = %146, %143
  %149 = load i64, i64* %10, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = mul nsw i64 %149, %151
  store i64 %152, i64* %4, align 8
  br label %154

153:                                              ; preds = %142
  store i64 0, i64* %4, align 8
  br label %154

154:                                              ; preds = %153, %148, %129, %111
  %155 = load i64, i64* %4, align 8
  ret i64 %155
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
