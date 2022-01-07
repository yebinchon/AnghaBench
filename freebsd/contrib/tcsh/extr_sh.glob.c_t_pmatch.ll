; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_t_pmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_t_pmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRIM = common dso_local global i32 0, align 4
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_MISSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t_pmatch(i32* %0, i32* %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %16, align 8
  br label %19

19:                                               ; preds = %179, %4
  %20 = load i32*, i32** %16, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %16, align 8
  %22 = load i32, i32* %20, align 4
  %23 = load i32, i32* @TRIM, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %7, align 8
  %27 = load i32, i32* %25, align 4
  %28 = load i32, i32* @TRIM, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  switch i32 %30, label %163 [
    i32 0, label %31
    i32 63, label %38
    i32 42, label %43
    i32 91, label %82
  ]

31:                                               ; preds = %19
  %32 = load i32*, i32** %6, align 8
  %33 = load i32**, i32*** %8, align 8
  store i32* %32, i32** %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 2, i32 1
  store i32 %37, i32* %5, align 4
  br label %181

38:                                               ; preds = %19
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %181

42:                                               ; preds = %38
  br label %178

43:                                               ; preds = %19
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = call i32* @Strend(i32* %48)
  %50 = load i32**, i32*** %8, align 8
  store i32* %49, i32** %50, align 8
  store i32 2, i32* %5, align 4
  br label %181

51:                                               ; preds = %43
  store i32* null, i32** %15, align 8
  br label %52

52:                                               ; preds = %74, %51
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32**, i32*** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @t_pmatch(i32* %53, i32* %54, i32** %55, i32 %56)
  switch i32 %57, label %63 [
    i32 0, label %58
    i32 1, label %59
    i32 2, label %62
  ]

58:                                               ; preds = %52
  br label %65

59:                                               ; preds = %52
  %60 = load i32**, i32*** %8, align 8
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %15, align 8
  br label %65

62:                                               ; preds = %52
  store i32 2, i32* %5, align 4
  br label %181

63:                                               ; preds = %52
  %64 = call i32 (...) @abort() #3
  unreachable

65:                                               ; preds = %59, %58
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %6, align 8
  %68 = load i32, i32* %66, align 4
  %69 = load i32, i32* @TRIM, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  br label %75

74:                                               ; preds = %65
  br label %52

75:                                               ; preds = %73
  %76 = load i32*, i32** %15, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32*, i32** %15, align 8
  %80 = load i32**, i32*** %8, align 8
  store i32* %79, i32** %80, align 8
  store i32 1, i32* %5, align 4
  br label %181

81:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %181

82:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 94
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %7, align 8
  br label %91

91:                                               ; preds = %88, %82
  br label %92

92:                                               ; preds = %141, %106, %91
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %7, align 8
  %95 = load i32, i32* %93, align 4
  %96 = load i32, i32* @TRIM, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %142

99:                                               ; preds = %92
  %100 = load i32, i32* %12, align 4
  %101 = icmp eq i32 %100, 93
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %142

103:                                              ; preds = %99
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %92

107:                                              ; preds = %103
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 45
  br i1 %110, label %111, label %136

111:                                              ; preds = %107
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 93
  br i1 %115, label %116, label %136

116:                                              ; preds = %111
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %7, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %7, align 8
  %121 = load i32, i32* %119, align 4
  %122 = load i32, i32* @TRIM, align 4
  %123 = and i32 %121, %122
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @globcharcoll(i32 %124, i32 %125, i32 0)
  %127 = icmp sle i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %116
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @globcharcoll(i32 %129, i32 %130, i32 0)
  %132 = icmp sle i32 %131, 0
  br label %133

133:                                              ; preds = %128, %116
  %134 = phi i1 [ false, %116 ], [ %132, %128 ]
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %13, align 4
  br label %141

136:                                              ; preds = %111, %107
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %136, %133
  br label %92

142:                                              ; preds = %102, %92
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i32, i32* @ERR_NAME, align 4
  %147 = load i32, i32* @ERR_MISSING, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @stderror(i32 %148, i8 signext 93)
  br label %150

150:                                              ; preds = %145, %142
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 0, i32* %5, align 4
  br label %181

157:                                              ; preds = %153, %150
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store i32 0, i32* %5, align 4
  br label %181

162:                                              ; preds = %157
  br label %178

163:                                              ; preds = %19
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %176, label %177

170:                                              ; preds = %163
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @Tolower(i32 %171)
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @Tolower(i32 %173)
  %175 = icmp ne i32 %172, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %170, %166
  store i32 0, i32* %5, align 4
  br label %181

177:                                              ; preds = %170, %166
  br label %178

178:                                              ; preds = %177, %162, %42
  br label %179

179:                                              ; preds = %178
  %180 = load i32*, i32** %16, align 8
  store i32* %180, i32** %6, align 8
  br label %19

181:                                              ; preds = %176, %161, %156, %81, %78, %62, %47, %41, %31
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32* @Strend(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @globcharcoll(i32, i32, i32) #1

declare dso_local i32 @stderror(i32, i8 signext) #1

declare dso_local i32 @Tolower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
