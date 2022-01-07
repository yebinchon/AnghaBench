; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_is_prefixmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_is_prefixmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRIM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @is_prefixmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_prefixmatch(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %12

12:                                               ; preds = %163, %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %168

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TRIM, align 4
  %20 = and i32 %18, %19
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TRIM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %20, %24
  br i1 %25, label %26, label %162

26:                                               ; preds = %16
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TRIM, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TRIM, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @Isupper(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  %40 = call signext i8 @Tolower(i32 %39)
  %41 = sext i8 %40 to i32
  br label %53

42:                                               ; preds = %26
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 95
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %51

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 45, %48 ], [ %50, %49 ]
  br label %53

53:                                               ; preds = %51, %38
  %54 = phi i32 [ %41, %38 ], [ %52, %51 ]
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @Isupper(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = call signext i8 @Tolower(i32 %59)
  %61 = sext i8 %60 to i32
  br label %73

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 95
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %71

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %9, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i32 [ 45, %68 ], [ %70, %69 ]
  br label %73

73:                                               ; preds = %71, %58
  %74 = phi i32 [ %61, %58 ], [ %72, %71 ]
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %161

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %161

82:                                               ; preds = %78
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %161

89:                                               ; preds = %86, %82
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %158

92:                                               ; preds = %89
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @TRIM, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 45
  br i1 %97, label %110, label %98

98:                                               ; preds = %92
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @TRIM, align 4
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 46
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @TRIM, align 4
  %108 = and i32 %106, %107
  %109 = icmp eq i32 %108, 95
  br i1 %109, label %110, label %158

110:                                              ; preds = %104, %98, %92
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @TRIM, align 4
  %114 = and i32 %112, %113
  store i32 %114, i32* %9, align 4
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %115, 95
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 2
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 45, i32* %9, align 4
  br label %126

121:                                              ; preds = %117, %110
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %122, 45
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 95, i32* %9, align 4
  br label %125

125:                                              ; preds = %124, %121
  br label %126

126:                                              ; preds = %125, %120
  br label %127

127:                                              ; preds = %148, %126
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %127
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @TRIM, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @TRIM, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %142, %143
  br label %145

145:                                              ; preds = %138, %131, %127
  %146 = phi i1 [ false, %131 ], [ false, %127 ], [ %144, %138 ]
  br i1 %146, label %147, label %151

147:                                              ; preds = %145
  br label %148

148:                                              ; preds = %147
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %6, align 8
  br label %127

151:                                              ; preds = %145
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* @FALSE, align 4
  store i32 %156, i32* %4, align 4
  br label %170

157:                                              ; preds = %151
  br label %160

158:                                              ; preds = %104, %89
  %159 = load i32, i32* @FALSE, align 4
  store i32 %159, i32* %4, align 4
  br label %170

160:                                              ; preds = %157
  br label %161

161:                                              ; preds = %160, %86, %78, %73
  br label %162

162:                                              ; preds = %161, %16
  br label %163

163:                                              ; preds = %162
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %5, align 8
  %166 = load i32*, i32** %6, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %6, align 8
  br label %12

168:                                              ; preds = %12
  %169 = load i32, i32* @TRUE, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %168, %158, %155
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i64 @Isupper(i32) #1

declare dso_local signext i8 @Tolower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
