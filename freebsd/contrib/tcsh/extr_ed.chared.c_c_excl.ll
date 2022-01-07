; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_excl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_excl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InputBuf = common dso_local global i8* null, align 8
@HIST = common dso_local global i8 0, align 1
@Cursor = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @c_excl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_excl(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 1
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 9
  br i1 %16, label %17, label %69

17:                                               ; preds = %11, %1
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 -1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 -1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 62
  br i1 %34, label %35, label %69

35:                                               ; preds = %29, %23, %17
  %36 = load i8*, i8** %2, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 -1
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %57, %35
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** @InputBuf, align 8
  %41 = icmp ugt i8* %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 9
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ true, %42 ], [ %51, %47 ]
  br label %54

54:                                               ; preds = %52, %38
  %55 = phi i1 [ false, %38 ], [ %53, %52 ]
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %59, i8** %4, align 8
  br label %38

60:                                               ; preds = %54
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 62
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %2, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %2, align 8
  br label %68

68:                                               ; preds = %65, %60
  br label %90

69:                                               ; preds = %29, %11
  br label %70

70:                                               ; preds = %86, %69
  %71 = load i8*, i8** %2, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 32
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load i8*, i8** %2, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 9
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i8*, i8** %2, align 8
  %82 = load i8*, i8** @InputBuf, align 8
  %83 = icmp ugt i8* %81, %82
  br label %84

84:                                               ; preds = %80, %75, %70
  %85 = phi i1 [ false, %75 ], [ false, %70 ], [ %83, %80 ]
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load i8*, i8** %2, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %88, i8** %2, align 8
  br label %70

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %68
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %159, %90
  %92 = load i8, i8* @HIST, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %109, %95
  %97 = load i8*, i8** %2, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = load i8, i8* @HIST, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i8*, i8** %2, align 8
  %105 = load i8*, i8** @Cursor, align 8
  %106 = icmp ult i8* %104, %105
  br label %107

107:                                              ; preds = %103, %96
  %108 = phi i1 [ false, %96 ], [ %106, %103 ]
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = load i8*, i8** %2, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %2, align 8
  br label %96

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %91
  store i32 1, i32* %3, align 4
  br label %114

114:                                              ; preds = %134, %113
  %115 = load i8*, i8** %2, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = sub i64 0, %117
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = load i8*, i8** @InputBuf, align 8
  %121 = icmp uge i8* %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %114
  %123 = load i8*, i8** %2, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sub nsw i32 0, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 92
  br label %131

131:                                              ; preds = %122, %114
  %132 = phi i1 [ false, %114 ], [ %130, %122 ]
  br i1 %132, label %133, label %137

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %114

137:                                              ; preds = %131
  %138 = load i32, i32* %3, align 4
  %139 = srem i32 %138, 2
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i8*, i8** %2, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %2, align 8
  br label %144

144:                                              ; preds = %141, %137
  %145 = load i8*, i8** %2, align 8
  %146 = load i8*, i8** @Cursor, align 8
  %147 = icmp uge i8* %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* %5, align 4
  ret i32 %149

150:                                              ; preds = %144
  %151 = load i32, i32* %3, align 4
  %152 = srem i32 %151, 2
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i8*, i8** %2, align 8
  %156 = call i8* @c_expand(i8* %155)
  store i8* %156, i8** %2, align 8
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %154, %150
  br label %91
}

declare dso_local i8* @c_expand(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
