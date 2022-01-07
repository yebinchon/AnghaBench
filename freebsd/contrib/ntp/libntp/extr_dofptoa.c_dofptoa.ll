; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_dofptoa.c_dofptoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_dofptoa.c_dofptoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dofptoa(i32 %0, i32 %1, i16 signext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca [12 x i32], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %21 = load i8*, i8** %15, align 8
  %22 = call i32 @LIB_GETBUF(i8* %21)
  %23 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 0
  %24 = call i32 @ZERO(i32* %23)
  %25 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 5
  store i32* %25, i32** %10, align 8
  store i32* %25, i32** %9, align 8
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %27, -65536
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 -1
  store i32* %32, i32** %9, align 8
  br label %54

33:                                               ; preds = %4
  %34 = load i32, i32* %11, align 4
  %35 = ashr i32 %34, 16
  store i32 %35, i32* %17, align 4
  store i32 10, i32* %19, align 4
  br label %36

36:                                               ; preds = %50, %33
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %19, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %17, align 4
  %43 = shl i32 %42, 3
  %44 = load i32, i32* %17, align 4
  %45 = shl i32 %44, 1
  %46 = add nsw i32 %43, %45
  %47 = sub nsw i32 %41, %46
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 -1
  store i32* %49, i32** %9, align 8
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %36, label %53

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %30
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i16, i16* %7, align 2
  %59 = sext i16 %58 to i32
  %60 = add nsw i32 %59, 3
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %12, align 2
  %62 = load i16, i16* %12, align 2
  %63 = sext i16 %62 to i32
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i16 3, i16* %12, align 2
  br label %66

66:                                               ; preds = %65, %57
  %67 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 8
  store i32* %67, i32** %14, align 8
  br label %71

68:                                               ; preds = %54
  %69 = load i16, i16* %7, align 2
  store i16 %69, i16* %12, align 2
  %70 = load i32*, i32** %10, align 8
  store i32* %70, i32** %14, align 8
  br label %71

71:                                               ; preds = %68, %66
  %72 = load i16, i16* %12, align 2
  %73 = sext i16 %72 to i32
  %74 = icmp sgt i32 %73, 6
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i16 6, i16* %12, align 2
  br label %76

76:                                               ; preds = %75, %71
  %77 = load i16, i16* %12, align 2
  %78 = sext i16 %77 to i32
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %93, %80
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %82, 65535
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = shl i32 %84, 3
  %86 = load i32, i32* %11, align 4
  %87 = shl i32 %86, 1
  %88 = add nsw i32 %85, %87
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = ashr i32 %89, 16
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %10, align 8
  store i32 %90, i32* %91, align 4
  br label %93

93:                                               ; preds = %81
  %94 = load i16, i16* %12, align 2
  %95 = add i16 %94, -1
  store i16 %95, i16* %12, align 2
  %96 = sext i16 %95 to i32
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %81, label %98

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %76
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %100, 32768
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %99
  %104 = load i32*, i32** %10, align 8
  store i32* %104, i32** %20, align 8
  %105 = load i32*, i32** %20, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 -1
  store i32* %106, i32** %20, align 8
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %113, %103
  %110 = load i32*, i32** %20, align 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp sge i32 %111, 10
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i32*, i32** %20, align 8
  store i32 0, i32* %114, align 4
  %115 = load i32*, i32** %20, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 -1
  store i32* %116, i32** %20, align 8
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %109

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %99
  br label %121

121:                                              ; preds = %132, %120
  %122 = load i32*, i32** %9, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 -1
  %125 = icmp ult i32* %122, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 0
  br label %130

130:                                              ; preds = %126, %121
  %131 = phi i1 [ false, %121 ], [ %129, %126 ]
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = load i32*, i32** %9, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %9, align 8
  br label %121

135:                                              ; preds = %130
  %136 = load i8*, i8** %15, align 8
  store i8* %136, i8** %16, align 8
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i8*, i8** %16, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %16, align 8
  store i8 45, i8* %140, align 1
  br label %142

142:                                              ; preds = %139, %135
  br label %143

143:                                              ; preds = %154, %142
  %144 = load i32*, i32** %9, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = icmp ult i32* %144, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %143
  %148 = load i32*, i32** %9, align 8
  %149 = load i32*, i32** %14, align 8
  %150 = icmp eq i32* %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i8*, i8** %16, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %16, align 8
  store i8 46, i8* %152, align 1
  br label %154

154:                                              ; preds = %151, %147
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %9, align 8
  %157 = load i32, i32* %155, align 4
  %158 = add nsw i32 %157, 48
  %159 = trunc i32 %158 to i8
  %160 = load i8*, i8** %16, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %16, align 8
  store i8 %159, i8* %160, align 1
  br label %143

162:                                              ; preds = %143
  %163 = load i8*, i8** %16, align 8
  store i8 0, i8* %163, align 1
  %164 = load i8*, i8** %15, align 8
  ret i8* %164
}

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @ZERO(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
