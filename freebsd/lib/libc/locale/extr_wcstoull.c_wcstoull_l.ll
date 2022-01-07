; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcstoull.c_wcstoull_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcstoull.c_wcstoull_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULLONG_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wcstoull_l(i32* noalias %0, i32** noalias %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
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
  store i64 0, i64* %10, align 8
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %78, 36
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %74
  br label %165

81:                                               ; preds = %77
  %82 = load i32, i32* @ULLONG_MAX, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sdiv i32 %82, %83
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %12, align 8
  %86 = load i32, i32* @ULLONG_MAX, align 4
  %87 = load i32, i32* %7, align 4
  %88 = srem i32 %86, %87
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %150, %81
  %90 = load i32, i32* %11, align 4
  %91 = icmp sge i32 %90, 48
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  %94 = icmp sle i32 %93, 57
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = sub nsw i32 %96, 48
  store i32 %97, i32* %11, align 4
  br label %119

98:                                               ; preds = %92, %89
  %99 = load i32, i32* %11, align 4
  %100 = icmp sge i32 %99, 65
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* %11, align 4
  %103 = icmp sle i32 %102, 90
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %105, 55
  store i32 %106, i32* %11, align 4
  br label %118

107:                                              ; preds = %101, %98
  %108 = load i32, i32* %11, align 4
  %109 = icmp sge i32 %108, 97
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  %112 = icmp sle i32 %111, 122
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = sub nsw i32 %114, 87
  store i32 %115, i32* %11, align 4
  br label %117

116:                                              ; preds = %110, %107
  br label %154

117:                                              ; preds = %113
  br label %118

118:                                              ; preds = %117, %104
  br label %119

119:                                              ; preds = %118, %95
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %154

124:                                              ; preds = %119
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %139, label %127

127:                                              ; preds = %124
  %128 = load i64, i64* %10, align 8
  %129 = load i64, i64* %12, align 8
  %130 = icmp ugt i64 %128, %129
  br i1 %130, label %139, label %131

131:                                              ; preds = %127
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* %12, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135, %127, %124
  store i32 -1, i32* %14, align 4
  br label %149

140:                                              ; preds = %135, %131
  store i32 1, i32* %14, align 4
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %10, align 8
  %144 = mul i64 %143, %142
  store i64 %144, i64* %10, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %10, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %10, align 8
  br label %149

149:                                              ; preds = %140, %139
  br label %150

150:                                              ; preds = %149
  %151 = load i32*, i32** %9, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %9, align 8
  %153 = load i32, i32* %151, align 4
  store i32 %153, i32* %11, align 4
  br label %89

154:                                              ; preds = %123, %116
  %155 = load i32, i32* %14, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32, i32* @ULLONG_MAX, align 4
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %10, align 8
  %160 = load i32, i32* @ERANGE, align 4
  store i32 %160, i32* @errno, align 4
  br label %175

161:                                              ; preds = %154
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  br label %165

165:                                              ; preds = %164, %80
  %166 = load i32, i32* @EINVAL, align 4
  store i32 %166, i32* @errno, align 4
  br label %174

167:                                              ; preds = %161
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i64, i64* %10, align 8
  %172 = sub i64 0, %171
  store i64 %172, i64* %10, align 8
  br label %173

173:                                              ; preds = %170, %167
  br label %174

174:                                              ; preds = %173, %165
  br label %175

175:                                              ; preds = %174, %157
  %176 = load i32**, i32*** %6, align 8
  %177 = icmp ne i32** %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load i32, i32* %14, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32*, i32** %9, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 -1
  br label %186

184:                                              ; preds = %178
  %185 = load i32*, i32** %5, align 8
  br label %186

186:                                              ; preds = %184, %181
  %187 = phi i32* [ %183, %181 ], [ %185, %184 ]
  %188 = load i32**, i32*** %6, align 8
  store i32* %187, i32** %188, align 8
  br label %189

189:                                              ; preds = %186, %175
  %190 = load i64, i64* %10, align 8
  ret i64 %190
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local i64 @iswspace_l(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
