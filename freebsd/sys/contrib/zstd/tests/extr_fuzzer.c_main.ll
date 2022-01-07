; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_fuzzer.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_fuzzer.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nbTestsDefault = common dso_local global i32 0, align 4
@FUZ_compressibility_default = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"--memtest=\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"--memtest\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"--no-big-tests\00", align 1
@g_displayLevel = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Starting zstd tester (%i-bits, %s)\0A\00", align 1
@ZSTD_VERSION_STRING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Seed = %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Compressibility : %i%%\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Press Enter \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %22 = load i32, i32* @nbTestsDefault, align 4
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* @FUZ_compressibility_default, align 4
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %17, align 8
  store i32 1, i32* %8, align 4
  br label %27

27:                                               ; preds = %145, %2
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %148

31:                                               ; preds = %27
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %18, align 8
  %37 = load i8*, i8** %18, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %145

40:                                               ; preds = %31
  %41 = load i8*, i8** %18, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 45
  br i1 %45, label %46, label %144

46:                                               ; preds = %40
  %47 = call i64 @longCommandWArg(i8** %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @readU32FromChar(i8** %18)
  store i32 %50, i32* %16, align 4
  br label %145

51:                                               ; preds = %46
  %52 = load i8*, i8** %18, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 1, i32* %16, align 4
  br label %145

56:                                               ; preds = %51
  %57 = load i8*, i8** %18, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32 0, i32* %15, align 4
  br label %145

61:                                               ; preds = %56
  %62 = load i8*, i8** %18, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %18, align 8
  br label %64

64:                                               ; preds = %142, %61
  %65 = load i8*, i8** %18, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %143

69:                                               ; preds = %64
  %70 = load i8*, i8** %18, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  switch i32 %72, label %139 [
    i32 104, label %73
    i32 118, label %76
    i32 113, label %81
    i32 112, label %86
    i32 105, label %89
    i32 84, label %93
    i32 115, label %123
    i32 116, label %127
    i32 80, label %131
  ]

73:                                               ; preds = %69
  %74 = load i8*, i8** %17, align 8
  %75 = call i32 @FUZ_usage(i8* %74)
  store i32 %75, i32* %3, align 4
  br label %215

76:                                               ; preds = %69
  %77 = load i8*, i8** %18, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %18, align 8
  %79 = load i32, i32* @g_displayLevel, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @g_displayLevel, align 4
  br label %142

81:                                               ; preds = %69
  %82 = load i8*, i8** %18, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %18, align 8
  %84 = load i32, i32* @g_displayLevel, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* @g_displayLevel, align 4
  br label %142

86:                                               ; preds = %69
  %87 = load i8*, i8** %18, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %18, align 8
  store i32 1, i32* %13, align 4
  br label %142

89:                                               ; preds = %69
  %90 = load i8*, i8** %18, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %18, align 8
  store i32 0, i32* %14, align 4
  %92 = call i32 @readU32FromChar(i8** %18)
  store i32 %92, i32* %9, align 4
  br label %142

93:                                               ; preds = %69
  %94 = load i8*, i8** %18, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %18, align 8
  store i32 0, i32* %9, align 4
  %96 = call i32 @readU32FromChar(i8** %18)
  store i32 %96, i32* %14, align 4
  %97 = load i8*, i8** %18, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 115
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i8*, i8** %18, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %18, align 8
  br label %104

104:                                              ; preds = %101, %93
  %105 = load i8*, i8** %18, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 109
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i32, i32* %14, align 4
  %111 = mul nsw i32 %110, 60
  store i32 %111, i32* %14, align 4
  %112 = load i8*, i8** %18, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %18, align 8
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i8*, i8** %18, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 110
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i8*, i8** %18, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %18, align 8
  br label %122

122:                                              ; preds = %119, %114
  br label %142

123:                                              ; preds = %69
  %124 = load i8*, i8** %18, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %18, align 8
  store i32 1, i32* %7, align 4
  %126 = call i32 @readU32FromChar(i8** %18)
  store i32 %126, i32* %6, align 4
  br label %142

127:                                              ; preds = %69
  %128 = load i8*, i8** %18, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %18, align 8
  %130 = call i32 @readU32FromChar(i8** %18)
  store i32 %130, i32* %10, align 4
  br label %142

131:                                              ; preds = %69
  %132 = load i8*, i8** %18, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %18, align 8
  %134 = call i32 @readU32FromChar(i8** %18)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp sgt i32 %135, 100
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store i32 100, i32* %11, align 4
  br label %138

138:                                              ; preds = %137, %131
  br label %142

139:                                              ; preds = %69
  %140 = load i8*, i8** %17, align 8
  %141 = call i32 @FUZ_usage(i8* %140)
  store i32 1, i32* %3, align 4
  br label %215

142:                                              ; preds = %138, %127, %123, %122, %89, %86, %81, %76
  br label %64

143:                                              ; preds = %64
  br label %144

144:                                              ; preds = %143, %40
  br label %145

145:                                              ; preds = %144, %60, %55, %49, %39
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %27

148:                                              ; preds = %27
  %149 = load i32, i32* @ZSTD_VERSION_STRING, align 4
  %150 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 64, i32 %149)
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = call i32 @time(i32* null)
  store i32 %154, i32* %19, align 4
  %155 = call i32 @XXH32(i32* %19, i32 4, i32 1)
  store i32 %155, i32* %20, align 4
  %156 = load i32, i32* %20, align 4
  %157 = srem i32 %156, 10000
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %153, %148
  %159 = load i32, i32* %6, align 4
  %160 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @FUZ_compressibility_default, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load i32, i32* %11, align 4
  %166 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %164, %158
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = load i32, i32* @g_displayLevel, align 4
  %172 = call i32 @MAX(i32 3, i32 %171)
  store i32 %172, i32* @g_displayLevel, align 4
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %11, align 4
  %175 = sitofp i32 %174 to double
  %176 = fdiv double %175, 1.000000e+02
  %177 = load i32, i32* %16, align 4
  %178 = call i32 @FUZ_mallocTests(i32 %173, double %176, i32 %177)
  store i32 %178, i32* %3, align 4
  br label %215

179:                                              ; preds = %167
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i32, i32* %10, align 4
  store i32 %184, i32* %9, align 4
  br label %185

185:                                              ; preds = %183, %179
  %186 = load i32, i32* %10, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load i32, i32* %11, align 4
  %190 = sitofp i32 %189 to double
  %191 = fdiv double %190, 1.000000e+02
  %192 = call i32 @basicUnitTests(i32 0, double %191)
  store i32 %192, i32* %12, align 4
  br label %193

193:                                              ; preds = %188, %185
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %11, align 4
  %202 = sitofp i32 %201 to double
  %203 = fdiv double %202, 1.000000e+02
  %204 = load i32, i32* %15, align 4
  %205 = call i32 @fuzzerTests(i32 %197, i32 %198, i32 %199, i32 %200, double %203, i32 %204)
  store i32 %205, i32* %12, align 4
  br label %206

206:                                              ; preds = %196, %193
  %207 = load i32, i32* %13, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %211 = call i32 (...) @getchar()
  store i32 %211, i32* %21, align 4
  %212 = load i32, i32* %21, align 4
  br label %213

213:                                              ; preds = %209, %206
  %214 = load i32, i32* %12, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %213, %170, %139, %73
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i64 @longCommandWArg(i8**, i8*) #1

declare dso_local i32 @readU32FromChar(i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @FUZ_usage(i8*) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @XXH32(i32*, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @FUZ_mallocTests(i32, double, i32) #1

declare dso_local i32 @basicUnitTests(i32, double) #1

declare dso_local i32 @fuzzerTests(i32, i32, i32, i32, double, i32) #1

declare dso_local i32 @getchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
