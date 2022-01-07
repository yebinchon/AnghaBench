; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_search.c_Ecompile.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_search.c_Ecompile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@matcher = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"awk\00", align 1
@RE_SYNTAX_AWK = common dso_local global i32 0, align 4
@match_icase = common dso_local global i64 0, align 8
@RE_ICASE = common dso_local global i32 0, align 4
@eolbyte = common dso_local global i32 0, align 4
@RE_SYNTAX_POSIX_EGREP = common dso_local global i32 0, align 4
@patterns = common dso_local global %struct.TYPE_5__* null, align 8
@pcount = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@patterns0 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@match_words = common dso_local global i64 0, align 8
@match_lines = common dso_local global i64 0, align 8
@Ecompile.line_beg = internal constant [3 x i8] c"^(\00", align 1
@Ecompile.line_end = internal constant [3 x i8] c")$\00", align 1
@Ecompile.word_beg = internal constant [19 x i8] c"(^|[^[:alnum:]_])(\00", align 16
@Ecompile.word_end = internal constant [19 x i8] c")([^[:alnum:]_]|$)\00", align 16
@dfa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @Ecompile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ecompile(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %8, align 8
  %14 = call i32 (...) @check_utf8()
  %15 = load i32, i32* @matcher, align 4
  %16 = call i64 @strcmp(i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load i32, i32* @RE_SYNTAX_AWK, align 4
  %20 = load i64, i64* @match_icase, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @RE_ICASE, align 4
  br label %25

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = or i32 %19, %26
  %28 = call i32 @re_set_syntax(i32 %27)
  %29 = load i32, i32* @RE_SYNTAX_AWK, align 4
  %30 = load i64, i64* @match_icase, align 8
  %31 = load i32, i32* @eolbyte, align 4
  %32 = call i32 @dfasyntax(i32 %29, i64 %30, i32 %31)
  br label %48

33:                                               ; preds = %2
  %34 = load i32, i32* @RE_SYNTAX_POSIX_EGREP, align 4
  %35 = load i64, i64* @match_icase, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @RE_ICASE, align 4
  br label %40

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  %42 = or i32 %34, %41
  %43 = call i32 @re_set_syntax(i32 %42)
  %44 = load i32, i32* @RE_SYNTAX_POSIX_EGREP, align 4
  %45 = load i64, i64* @match_icase, align 8
  %46 = load i32, i32* @eolbyte, align 4
  %47 = call i32 @dfasyntax(i32 %44, i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %25
  br label %49

49:                                               ; preds = %111, %48
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i8* @memchr(i8* %50, i8 signext 10, i64 %51)
  store i8* %52, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  store i64 %60, i64* %9, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %7, align 8
  br label %69

67:                                               ; preds = %49
  %68 = load i64, i64* %7, align 8
  store i64 %68, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %69

69:                                               ; preds = %67, %55
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @patterns, align 8
  %71 = load i32, i32* @pcount, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call %struct.TYPE_5__* @realloc(%struct.TYPE_5__* %70, i32 %75)
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** @patterns, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @patterns, align 8
  %78 = icmp eq %struct.TYPE_5__* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load i32, i32* @errno, align 4
  %81 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %82 = call i32 @error(i32 2, i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %79, %69
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @patterns, align 8
  %85 = load i32, i32* @pcount, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = bitcast %struct.TYPE_5__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 bitcast (%struct.TYPE_5__* @patterns0 to i8*), i64 4, i1 false)
  %89 = load i8*, i8** %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** @patterns, align 8
  %92 = load i32, i32* @pcount, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = call i8* @re_compile_pattern(i8* %89, i64 %90, i32* %95)
  store i8* %96, i8** %5, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %83
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @error(i32 2, i32 0, i8* %99)
  br label %101

101:                                              ; preds = %98, %83
  %102 = load i32, i32* @pcount, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @pcount, align 4
  %104 = load i8*, i8** %6, align 8
  store i8* %104, i8** %8, align 8
  br label %105

105:                                              ; preds = %101
  %106 = load i8*, i8** %6, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i64, i64* %7, align 8
  %110 = icmp ne i64 %109, 0
  br label %111

111:                                              ; preds = %108, %105
  %112 = phi i1 [ false, %105 ], [ %110, %108 ]
  br i1 %112, label %49, label %113

113:                                              ; preds = %111
  %114 = load i64, i64* @match_words, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i64, i64* @match_lines, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %158

119:                                              ; preds = %116, %113
  %120 = load i64, i64* %4, align 8
  %121 = add i64 18, %120
  %122 = add i64 %121, 19
  %123 = trunc i64 %122 to i32
  %124 = call i8* @xmalloc(i32 %123)
  store i8* %124, i8** %10, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = load i64, i64* @match_lines, align 8
  %127 = icmp ne i64 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @Ecompile.line_beg, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @Ecompile.word_beg, i64 0, i64 0)
  %130 = call i32 @strcpy(i8* %125, i8* %129)
  %131 = load i8*, i8** %10, align 8
  %132 = call i64 @strlen(i8* %131)
  store i64 %132, i64* %11, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = load i64, i64* %11, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = load i8*, i8** %3, align 8
  %137 = load i64, i64* %4, align 8
  %138 = call i32 @memcpy(i8* %135, i8* %136, i64 %137)
  %139 = load i64, i64* %4, align 8
  %140 = load i64, i64* %11, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %11, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = load i64, i64* %11, align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  %145 = load i64, i64* @match_lines, align 8
  %146 = icmp ne i64 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @Ecompile.line_end, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @Ecompile.word_end, i64 0, i64 0)
  %149 = call i32 @strcpy(i8* %144, i8* %148)
  %150 = load i8*, i8** %10, align 8
  %151 = load i64, i64* %11, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  %153 = call i64 @strlen(i8* %152)
  %154 = load i64, i64* %11, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %11, align 8
  %156 = load i8*, i8** %10, align 8
  store i8* %156, i8** %3, align 8
  %157 = load i64, i64* %11, align 8
  store i64 %157, i64* %4, align 8
  br label %158

158:                                              ; preds = %119, %116
  %159 = load i8*, i8** %3, align 8
  %160 = load i64, i64* %4, align 8
  %161 = call i32 @dfacomp(i8* %159, i64 %160, i32* @dfa, i32 1)
  %162 = call i32 (...) @kwsmusts()
  ret void
}

declare dso_local i32 @check_utf8(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @re_set_syntax(i32) #1

declare dso_local i32 @dfasyntax(i32, i64, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local %struct.TYPE_5__* @realloc(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @re_compile_pattern(i8*, i64, i32*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @dfacomp(i8*, i64, i32*, i32) #1

declare dso_local i32 @kwsmusts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
