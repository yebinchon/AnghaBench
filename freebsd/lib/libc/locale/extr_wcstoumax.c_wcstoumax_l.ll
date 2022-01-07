; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcstoumax.c_wcstoumax_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcstoumax.c_wcstoumax_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINTMAX_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcstoumax_l(i32* noalias %0, i32** noalias %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @FIX_LOCALE(i32 %16)
  %18 = load i32*, i32** %5, align 8
  store i32* %18, i32** %9, align 8
  br label %19

19:                                               ; preds = %23, %4
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %9, align 8
  %22 = load i32, i32* %20, align 4
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @iswspace_l(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %19, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 45
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  store i32 1, i32* %13, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %9, align 8
  %34 = load i32, i32* %32, align 4
  store i32 %34, i32* %11, align 4
  br label %43

35:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 43
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %9, align 8
  %41 = load i32, i32* %39, align 4
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %38, %35
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %49, label %66

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 48
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 120
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 88
  br i1 %59, label %60, label %66

60:                                               ; preds = %56, %52
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32* %65, i32** %9, align 8
  store i32 16, i32* %7, align 4
  br label %66

66:                                               ; preds = %60, %56, %49, %46
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, 48
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 8, i32 10
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %69, %66
  store i32 0, i32* %14, align 4
  store i32 0, i32* %10, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %78, 36
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %74
  br label %161

81:                                               ; preds = %77
  %82 = load i32, i32* @UINTMAX_MAX, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sdiv i32 %82, %83
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* @UINTMAX_MAX, align 4
  %86 = load i32, i32* %7, align 4
  %87 = srem i32 %85, %86
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %147, %81
  %89 = load i32, i32* %11, align 4
  %90 = icmp sge i32 %89, 48
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* %11, align 4
  %93 = icmp sle i32 %92, 57
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 %95, 48
  store i32 %96, i32* %11, align 4
  br label %118

97:                                               ; preds = %91, %88
  %98 = load i32, i32* %11, align 4
  %99 = icmp sge i32 %98, 65
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = icmp sle i32 %101, 90
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = sub nsw i32 %104, 55
  store i32 %105, i32* %11, align 4
  br label %117

106:                                              ; preds = %100, %97
  %107 = load i32, i32* %11, align 4
  %108 = icmp sge i32 %107, 97
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = icmp sle i32 %110, 122
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %11, align 4
  %114 = sub nsw i32 %113, 87
  store i32 %114, i32* %11, align 4
  br label %116

115:                                              ; preds = %109, %106
  br label %151

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %116, %103
  br label %118

118:                                              ; preds = %117, %94
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %151

123:                                              ; preds = %118
  %124 = load i32, i32* %14, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %138, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134, %126, %123
  store i32 -1, i32* %14, align 4
  br label %146

139:                                              ; preds = %134, %130
  store i32 1, i32* %14, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %10, align 4
  %142 = mul nsw i32 %141, %140
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %139, %138
  br label %147

147:                                              ; preds = %146
  %148 = load i32*, i32** %9, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %9, align 8
  %150 = load i32, i32* %148, align 4
  store i32 %150, i32* %11, align 4
  br label %88

151:                                              ; preds = %122, %115
  %152 = load i32, i32* %14, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* @UINTMAX_MAX, align 4
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* @ERANGE, align 4
  store i32 %156, i32* @errno, align 4
  br label %171

157:                                              ; preds = %151
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  br label %161

161:                                              ; preds = %160, %80
  %162 = load i32, i32* @EINVAL, align 4
  store i32 %162, i32* @errno, align 4
  br label %170

163:                                              ; preds = %157
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* %10, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %166, %163
  br label %170

170:                                              ; preds = %169, %161
  br label %171

171:                                              ; preds = %170, %154
  %172 = load i32**, i32*** %6, align 8
  %173 = icmp ne i32** %172, null
  br i1 %173, label %174, label %185

174:                                              ; preds = %171
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32*, i32** %9, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 -1
  br label %182

180:                                              ; preds = %174
  %181 = load i32*, i32** %5, align 8
  br label %182

182:                                              ; preds = %180, %177
  %183 = phi i32* [ %179, %177 ], [ %181, %180 ]
  %184 = load i32**, i32*** %6, align 8
  store i32* %183, i32** %184, align 8
  br label %185

185:                                              ; preds = %182, %171
  %186 = load i32, i32* %10, align 4
  ret i32 %186
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local i64 @iswspace_l(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
