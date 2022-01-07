; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_print_by_column.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_print_by_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lbuffed = common dso_local global i32 0, align 4
@STRlistflags = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i32* null, align 8
@TermH = common dso_local global i32 0, align 4
@didfds = common dso_local global i64 0, align 8
@SHOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%S\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%-S%c\00", align 1
@Tty_raw_mode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_by_column(i32* %0, i32** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* @lbuffed, align 4
  %19 = load i32, i32* @STRlistflags, align 4
  %20 = call i32* @varval(i32 %19)
  store i32* %20, i32** %17, align 8
  %21 = load i32*, i32** @STRNULL, align 8
  %22 = icmp ne i32* %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32*, i32** %17, align 8
  %25 = call i32* @Strchr(i32* %24, i8 signext 120)
  %26 = icmp ne i32* %25, null
  br label %27

27:                                               ; preds = %23, %4
  %28 = phi i1 [ false, %4 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %18, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %43, %27
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32, i32* %16, align 4
  %36 = load i32**, i32*** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @NLSStringWidth(i32* %40)
  %42 = call i32 @max(i32 %35, i32 %41)
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %30

46:                                               ; preds = %30
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 2
  %51 = load i32, i32* %16, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* @TermH, align 4
  %54 = load i32, i32* %16, align 4
  %55 = udiv i32 %53, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %46
  %59 = load i64, i64* @didfds, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @SHOUT, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = phi i32 [ 1, %61 ], [ %63, %62 ]
  %66 = call i32 @isatty(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %46
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %68, %64
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %12, align 4
  %72 = sub nsw i32 %71, 1
  %73 = add nsw i32 %70, %72
  %74 = load i32, i32* %12, align 4
  %75 = sdiv i32 %73, %74
  store i32 %75, i32* %13, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %177, %69
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %180

80:                                               ; preds = %76
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %167, %80
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %170

85:                                               ; preds = %81
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  br label %97

91:                                               ; preds = %85
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %13, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %94, %95
  br label %97

97:                                               ; preds = %91, %88
  %98 = phi i32 [ %90, %88 ], [ %96, %91 ]
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %161

102:                                              ; preds = %97
  store i32 0, i32* %15, align 4
  %103 = load i32**, i32*** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = call i64 @Strlen(i32* %107)
  store i64 %108, i64* %14, align 8
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %102
  %112 = load i32**, i32*** %6, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 (i8*, i32*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %116)
  br label %134

118:                                              ; preds = %102
  %119 = load i32**, i32*** %6, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = load i32**, i32*** %6, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @filetype(i32* %124, i32* %129)
  %131 = call i32 (i8*, i32*, ...) @xprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %123, i32 %130)
  %132 = load i32, i32* %15, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %15, align 4
  br label %134

134:                                              ; preds = %118, %111
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = sub nsw i32 %136, 1
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %134
  %140 = load i32**, i32*** %6, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @NLSStringWidth(i32* %144)
  %146 = load i32, i32* %15, align 4
  %147 = add i32 %145, %146
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %14, align 8
  br label %149

149:                                              ; preds = %156, %139
  %150 = load i64, i64* %14, align 8
  %151 = load i32, i32* %16, align 4
  %152 = zext i32 %151 to i64
  %153 = icmp ult i64 %150, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = call i32 @xputchar(i8 signext 32)
  br label %156

156:                                              ; preds = %154
  %157 = load i64, i64* %14, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %14, align 8
  br label %149

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %159, %134
  br label %166

161:                                              ; preds = %97
  %162 = load i32, i32* %18, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  br label %170

165:                                              ; preds = %161
  br label %166

166:                                              ; preds = %165, %160
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %81

170:                                              ; preds = %164, %81
  %171 = load i64, i64* @Tty_raw_mode, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = call i32 @xputchar(i8 signext 13)
  br label %175

175:                                              ; preds = %173, %170
  %176 = call i32 @xputchar(i8 signext 10)
  br label %177

177:                                              ; preds = %175
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %76

180:                                              ; preds = %76
  store i32 1, i32* @lbuffed, align 4
  %181 = call i32 (...) @flush()
  ret void
}

declare dso_local i32* @varval(i32) #1

declare dso_local i32* @Strchr(i32*, i8 signext) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @NLSStringWidth(i32*) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i64 @Strlen(i32*) #1

declare dso_local i32 @xprintf(i8*, i32*, ...) #1

declare dso_local i32 @filetype(i32*, i32*) #1

declare dso_local i32 @xputchar(i8 signext) #1

declare dso_local i32 @flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
