; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep_ptrace.c_arm_predict_branch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep_ptrace.c_arm_predict_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_predict_branch(i8* %0, i32 %1, i32 %2, i32* %3, i32 (i8*, i32)* %4, i32 (i8*, i32, i32*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32 (i8*, i32)*, align 8
  %13 = alloca i32 (i8*, i32, i32*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 (i8*, i32)* %4, i32 (i8*, i32)** %12, align 8
  store i32 (i8*, i32, i32*)* %5, i32 (i8*, i32, i32*)** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, 24
  %20 = and i32 %19, 15
  switch i32 %20, label %231 [
    i32 2, label %21
    i32 0, label %21
    i32 10, label %97
    i32 11, label %97
    i32 7, label %113
    i32 1, label %131
    i32 4, label %138
    i32 5, label %138
    i32 8, label %171
    i32 9, label %171
  ]

21:                                               ; preds = %6, %6
  %22 = load i32 (i8*, i32)*, i32 (i8*, i32)** %12, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = ashr i32 %24, 16
  %26 = and i32 %25, 15
  %27 = call i32 %22(i8* %23, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %9, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 15
  %31 = icmp eq i32 %30, 15
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* %14, align 4
  %34 = add nsw i32 %33, 8
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %32, %21
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 2097152
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = ashr i32 %40, 7
  %42 = and i32 %41, 30
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 255
  %45 = load i32, i32* %16, align 4
  %46 = sub nsw i32 32, %45
  %47 = shl i32 %44, %46
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 255
  %50 = load i32, i32* %16, align 4
  %51 = ashr i32 %49, %50
  %52 = or i32 %47, %51
  store i32 %52, i32* %16, align 4
  br label %96

53:                                               ; preds = %35
  %54 = load i32 (i8*, i32)*, i32 (i8*, i32)** %12, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 15
  %58 = call i32 %54(i8* %55, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 4080
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, 16
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32 (i8*, i32)*, i32 (i8*, i32)** %12, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = ashr i32 %69, 8
  %71 = and i32 %70, 15
  %72 = call i32 %67(i8* %68, i32 %71)
  store i32 %72, i32* %15, align 4
  br label %77

73:                                               ; preds = %62
  %74 = load i32, i32* %9, align 4
  %75 = ashr i32 %74, 7
  %76 = and i32 %75, 31
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 5
  %80 = and i32 %79, 3
  switch i32 %80, label %89 [
    i32 0, label %81
    i32 1, label %85
  ]

81:                                               ; preds = %77
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %15, align 4
  %84 = shl i32 %82, %83
  store i32 %84, i32* %16, align 4
  br label %90

85:                                               ; preds = %77
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %15, align 4
  %88 = ashr i32 %86, %87
  store i32 %88, i32* %16, align 4
  br label %90

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %85, %81
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32*, i32** %11, align 8
  store i32 %94, i32* %95, align 4
  store i32 0, i32* %7, align 4
  br label %233

96:                                               ; preds = %39
  br label %97

97:                                               ; preds = %6, %6, %96
  %98 = load i32, i32* %9, align 4
  %99 = shl i32 %98, 2
  %100 = and i32 %99, 67108863
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = and i32 %101, 33554432
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* %14, align 4
  %106 = or i32 %105, -67108864
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %104, %97
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 8
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32*, i32** %11, align 8
  store i32 %111, i32* %112, align 4
  store i32 0, i32* %7, align 4
  br label %233

113:                                              ; preds = %6
  %114 = load i32 (i8*, i32)*, i32 (i8*, i32)** %12, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, 15
  %118 = call i32 %114(i8* %115, i32 %117)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 8
  %121 = load i32, i32* %14, align 4
  %122 = shl i32 %121, 2
  %123 = add nsw i32 %120, %122
  store i32 %123, i32* %14, align 4
  %124 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i32, i32* %14, align 4
  %127 = call i32 %124(i8* %125, i32 %126, i32* %14)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32*, i32** %11, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* %17, align 4
  store i32 %130, i32* %7, align 4
  br label %233

131:                                              ; preds = %6
  %132 = load i32 (i8*, i32)*, i32 (i8*, i32)** %12, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = and i32 %134, 15
  %136 = call i32 %132(i8* %133, i32 %135)
  %137 = load i32*, i32** %11, align 8
  store i32 %136, i32* %137, align 4
  store i32 0, i32* %7, align 4
  br label %233

138:                                              ; preds = %6, %6
  %139 = load i32 (i8*, i32)*, i32 (i8*, i32)** %12, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = ashr i32 %141, 16
  %143 = and i32 %142, 15
  %144 = call i32 %139(i8* %140, i32 %143)
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %9, align 4
  %146 = and i32 %145, 16777216
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %138
  %149 = load i32, i32* %9, align 4
  %150 = and i32 %149, 4095
  store i32 %150, i32* %16, align 4
  br label %151

151:                                              ; preds = %148, %138
  %152 = load i32, i32* %9, align 4
  %153 = and i32 %152, 8388608
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %14, align 4
  br label %163

159:                                              ; preds = %151
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %14, align 4
  %162 = sub nsw i32 %161, %160
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %159, %155
  %164 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = load i32, i32* %14, align 4
  %167 = call i32 %164(i8* %165, i32 %166, i32* %14)
  store i32 %167, i32* %17, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32*, i32** %11, align 8
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* %17, align 4
  store i32 %170, i32* %7, align 4
  br label %233

171:                                              ; preds = %6, %6
  %172 = load i32 (i8*, i32)*, i32 (i8*, i32)** %12, align 8
  %173 = load i8*, i8** %8, align 8
  %174 = load i32, i32* %9, align 4
  %175 = ashr i32 %174, 16
  %176 = and i32 %175, 15
  %177 = call i32 %172(i8* %173, i32 %176)
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %9, align 4
  %179 = and i32 %178, 21845
  %180 = load i32, i32* %9, align 4
  %181 = ashr i32 %180, 1
  %182 = and i32 %181, 21845
  %183 = add nsw i32 %179, %182
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %15, align 4
  %185 = and i32 %184, 13107
  %186 = load i32, i32* %15, align 4
  %187 = ashr i32 %186, 2
  %188 = and i32 %187, 13107
  %189 = add nsw i32 %185, %188
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %15, align 4
  %192 = ashr i32 %191, 4
  %193 = add nsw i32 %190, %192
  %194 = and i32 %193, 3855
  store i32 %194, i32* %15, align 4
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %15, align 4
  %197 = ashr i32 %196, 8
  %198 = add nsw i32 %195, %197
  %199 = and i32 %198, 31
  store i32 %199, i32* %15, align 4
  %200 = load i32, i32* %9, align 4
  %201 = ashr i32 %200, 23
  %202 = and i32 %201, 3
  switch i32 %202, label %223 [
    i32 0, label %203
    i32 1, label %206
    i32 2, label %213
    i32 3, label %216
  ]

203:                                              ; preds = %171
  %204 = load i32, i32* %14, align 4
  %205 = sub nsw i32 %204, 0
  store i32 %205, i32* %14, align 4
  br label %223

206:                                              ; preds = %171
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, 0
  %209 = load i32, i32* %15, align 4
  %210 = sub nsw i32 %209, 1
  %211 = shl i32 %210, 2
  %212 = add nsw i32 %208, %211
  store i32 %212, i32* %14, align 4
  br label %223

213:                                              ; preds = %171
  %214 = load i32, i32* %14, align 4
  %215 = sub nsw i32 %214, 4
  store i32 %215, i32* %14, align 4
  br label %223

216:                                              ; preds = %171
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 4
  %219 = load i32, i32* %15, align 4
  %220 = sub nsw i32 %219, 1
  %221 = shl i32 %220, 2
  %222 = add nsw i32 %218, %221
  store i32 %222, i32* %14, align 4
  br label %223

223:                                              ; preds = %171, %216, %213, %206, %203
  %224 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %225 = load i8*, i8** %8, align 8
  %226 = load i32, i32* %14, align 4
  %227 = call i32 %224(i8* %225, i32 %226, i32* %14)
  store i32 %227, i32* %17, align 4
  %228 = load i32, i32* %14, align 4
  %229 = load i32*, i32** %11, align 8
  store i32 %228, i32* %229, align 4
  %230 = load i32, i32* %17, align 4
  store i32 %230, i32* %7, align 4
  br label %233

231:                                              ; preds = %6
  %232 = load i32, i32* @EINVAL, align 4
  store i32 %232, i32* %7, align 4
  br label %233

233:                                              ; preds = %231, %223, %163, %131, %113, %107, %91
  %234 = load i32, i32* %7, align 4
  ret i32 %234
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
