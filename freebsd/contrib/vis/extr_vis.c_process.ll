; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/vis/extr_vis.c_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/vis/extr_vis.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@process.col = internal global i32 0, align 4
@process.nul = internal global [2 x i8] zeroinitializer, align 1
@MB_LEN_MAX = common dso_local global i32 0, align 4
@WEOF = common dso_local global i8 0, align 1
@errno = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i64 0, align 8
@none = common dso_local global i64 0, align 8
@markeol = common dso_local global i64 0, align 8
@eflags = common dso_local global i32 0, align 4
@VIS_NOSLASH = common dso_local global i32 0, align 4
@extra = common dso_local global i32 0, align 4
@fold = common dso_local global i64 0, align 8
@foldwidth = common dso_local global i32 0, align 4
@VIS_MIMESTYLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"=\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @process.nul, i64 0, i64 1), i8** %3, align 8
  %13 = load i32, i32* @MB_LEN_MAX, align 4
  %14 = mul nsw i32 2, %13
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @MB_LEN_MAX, align 4
  %20 = mul nsw i32 4, %19
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call signext i8 @getwc(i32* %24)
  store i8 %25, i8* %4, align 1
  %26 = load i8, i8* %4, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @WEOF, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %1
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EILSEQ, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32*, i32** %2, align 8
  %37 = call i64 @getc(i32* %36)
  %38 = trunc i64 %37 to i8
  store i8 %38, i8* %4, align 1
  store i32 1, i32* %11, align 4
  br label %39

39:                                               ; preds = %35, %31, %1
  br label %40

40:                                               ; preds = %163, %39
  %41 = load i8, i8* %4, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8, i8* @WEOF, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %166

46:                                               ; preds = %40
  %47 = trunc i64 %16 to i32
  %48 = call i32 @memset(i8* %18, i32 0, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32*, i32** %2, align 8
  %53 = call signext i8 @getwc(i32* %52)
  store i8 %53, i8* %6, align 1
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %54
  %58 = load i8, i8* %6, align 1
  %59 = sext i8 %58 to i32
  %60 = load i8, i8* @WEOF, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i64, i64* @errno, align 8
  %65 = load i64, i64* @EILSEQ, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63, %54
  %68 = load i32*, i32** %2, align 8
  %69 = call i64 @getc(i32* %68)
  %70 = trunc i64 %69 to i8
  store i8 %70, i8* %6, align 1
  store i32 1, i32* %12, align 4
  br label %71

71:                                               ; preds = %67, %63, %57
  %72 = load i64, i64* @none, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  store i8* %23, i8** %3, align 8
  %75 = load i8, i8* %4, align 1
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %3, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i8, i8* %4, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 92
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %3, align 8
  store i8 92, i8* %82, align 1
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i8*, i8** %3, align 8
  store i8 0, i8* %85, align 1
  br label %144

86:                                               ; preds = %71
  %87 = load i64, i64* @markeol, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %86
  %90 = load i8, i8* %4, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 10
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  store i8* %23, i8** %3, align 8
  %94 = load i32, i32* @eflags, align 4
  %95 = load i32, i32* @VIS_NOSLASH, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i8*, i8** %3, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %3, align 8
  store i8 92, i8* %99, align 1
  br label %101

101:                                              ; preds = %98, %93
  %102 = load i8*, i8** %3, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %3, align 8
  store i8 36, i8* %102, align 1
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %3, align 8
  store i8 10, i8* %104, align 1
  %106 = load i8*, i8** %3, align 8
  store i8 0, i8* %106, align 1
  br label %143

107:                                              ; preds = %89, %86
  %108 = load i8, i8* %6, align 1
  store i8 %108, i8* %5, align 1
  %109 = load i8, i8* %5, align 1
  %110 = sext i8 %109 to i32
  %111 = load i8, i8* @WEOF, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i8 0, i8* %5, align 1
  br label %115

115:                                              ; preds = %114, %107
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i8, i8* %4, align 1
  store i8 %119, i8* %18, align 16
  store i32 1, i32* %10, align 4
  br label %123

120:                                              ; preds = %115
  %121 = load i8, i8* %4, align 1
  %122 = call i32 @wctomb(i8* %18, i8 signext %121)
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %120, %118
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i8, i8* %5, align 1
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %18, i64 %129
  store i8 %127, i8* %130, align 1
  br label %137

131:                                              ; preds = %123
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %18, i64 %133
  %135 = load i8, i8* %5, align 1
  %136 = call i32 @wctomb(i8* %134, i8 signext %135)
  br label %137

137:                                              ; preds = %131, %126
  %138 = load i32, i32* @MB_LEN_MAX, align 4
  %139 = mul nsw i32 4, %138
  %140 = load i32, i32* @eflags, align 4
  %141 = load i32, i32* @extra, align 4
  %142 = call i32 @strsenvisx(i8* %23, i32 %139, i8* %18, i32 1, i32 %140, i32 %141, i32* %11)
  br label %143

143:                                              ; preds = %137, %101
  br label %144

144:                                              ; preds = %143, %84
  store i8* %23, i8** %3, align 8
  %145 = load i64, i64* @fold, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i8*, i8** %3, align 8
  %149 = load i32, i32* @process.col, align 4
  %150 = load i32, i32* @foldwidth, align 4
  %151 = load i32, i32* @eflags, align 4
  %152 = call i32 @foldit(i8* %148, i32 %149, i32 %150, i32 %151)
  store i32 %152, i32* @process.col, align 4
  br label %153

153:                                              ; preds = %147, %144
  br label %154

154:                                              ; preds = %158, %153
  %155 = load i8*, i8** %3, align 8
  %156 = load i8, i8* %155, align 1
  %157 = call i32 @putchar(i8 signext %156)
  br label %158

158:                                              ; preds = %154
  %159 = load i8*, i8** %3, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %3, align 8
  %161 = load i8, i8* %160, align 1
  %162 = icmp ne i8 %161, 0
  br i1 %162, label %154, label %163

163:                                              ; preds = %158
  %164 = load i8, i8* %6, align 1
  store i8 %164, i8* %4, align 1
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %11, align 4
  br label %40

166:                                              ; preds = %40
  %167 = load i64, i64* @fold, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %166
  %170 = load i8*, i8** %3, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 -1
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 10
  br i1 %174, label %175, label %183

175:                                              ; preds = %169
  %176 = load i32, i32* @eflags, align 4
  %177 = load i32, i32* @VIS_MIMESTYLE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %182 = call i32 (i8*, ...) @printf(i8* %181)
  br label %183

183:                                              ; preds = %175, %169, %166
  %184 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %184)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local signext i8 @getwc(i32*) #2

declare dso_local i64 @getc(i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @wctomb(i8*, i8 signext) #2

declare dso_local i32 @strsenvisx(i8*, i32, i8*, i32, i32, i32, i32*) #2

declare dso_local i32 @foldit(i8*, i32, i32, i32) #2

declare dso_local i32 @putchar(i8 signext) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
