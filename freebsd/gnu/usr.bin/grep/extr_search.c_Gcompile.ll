; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_search.c_Gcompile.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_search.c_Gcompile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@RE_SYNTAX_GREP = common dso_local global i32 0, align 4
@RE_HAT_LISTS_NOT_NEWLINE = common dso_local global i32 0, align 4
@match_icase = common dso_local global i64 0, align 8
@RE_ICASE = common dso_local global i32 0, align 4
@eolbyte = common dso_local global i32 0, align 4
@patterns = common dso_local global %struct.TYPE_5__* null, align 8
@pcount = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@patterns0 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@match_words = common dso_local global i64 0, align 8
@match_lines = common dso_local global i64 0, align 8
@Gcompile.line_beg = internal constant [4 x i8] c"^\\(\00", align 1
@Gcompile.line_end = internal constant [4 x i8] c"\\)$\00", align 1
@Gcompile.word_beg = internal constant [23 x i8] c"\\(^\\|[^[:alnum:]_]\\)\\(\00", align 16
@Gcompile.word_end = internal constant [23 x i8] c"\\)\\([^[:alnum:]_]\\|$\\)\00", align 16
@dfa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @Gcompile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Gcompile(i8* %0, i64 %1) #0 {
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
  %15 = load i32, i32* @RE_SYNTAX_GREP, align 4
  %16 = load i32, i32* @RE_HAT_LISTS_NOT_NEWLINE, align 4
  %17 = or i32 %15, %16
  %18 = load i64, i64* @match_icase, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @RE_ICASE, align 4
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = or i32 %17, %24
  %26 = call i32 @re_set_syntax(i32 %25)
  %27 = load i32, i32* @RE_SYNTAX_GREP, align 4
  %28 = load i32, i32* @RE_HAT_LISTS_NOT_NEWLINE, align 4
  %29 = or i32 %27, %28
  %30 = load i64, i64* @match_icase, align 8
  %31 = load i32, i32* @eolbyte, align 4
  %32 = call i32 @dfasyntax(i32 %29, i64 %30, i32 %31)
  br label %33

33:                                               ; preds = %95, %23
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i8* @memchr(i8* %34, i8 signext 10, i64 %35)
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  store i64 %44, i64* %9, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, %48
  store i64 %50, i64* %7, align 8
  br label %53

51:                                               ; preds = %33
  %52 = load i64, i64* %7, align 8
  store i64 %52, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %53

53:                                               ; preds = %51, %39
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @patterns, align 8
  %55 = load i32, i32* @pcount, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call %struct.TYPE_5__* @realloc(%struct.TYPE_5__* %54, i32 %59)
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** @patterns, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @patterns, align 8
  %62 = icmp eq %struct.TYPE_5__* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load i32, i32* @errno, align 4
  %65 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %66 = call i32 @error(i32 2, i32 %64, i8* %65)
  br label %67

67:                                               ; preds = %63, %53
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @patterns, align 8
  %69 = load i32, i32* @pcount, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = bitcast %struct.TYPE_5__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 bitcast (%struct.TYPE_5__* @patterns0 to i8*), i64 4, i1 false)
  %73 = load i8*, i8** %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @patterns, align 8
  %76 = load i32, i32* @pcount, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = call i8* @re_compile_pattern(i8* %73, i64 %74, i32* %79)
  store i8* %80, i8** %5, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %67
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @error(i32 2, i32 0, i8* %83)
  br label %85

85:                                               ; preds = %82, %67
  %86 = load i32, i32* @pcount, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @pcount, align 4
  %88 = load i8*, i8** %6, align 8
  store i8* %88, i8** %8, align 8
  br label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %6, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi i1 [ false, %89 ], [ %94, %92 ]
  br i1 %96, label %33, label %97

97:                                               ; preds = %95
  %98 = load i64, i64* @match_words, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* @match_lines, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %142

103:                                              ; preds = %100, %97
  %104 = load i64, i64* %4, align 8
  %105 = add i64 22, %104
  %106 = add i64 %105, 23
  %107 = trunc i64 %106 to i32
  %108 = call i8* @xmalloc(i32 %107)
  store i8* %108, i8** %10, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = load i64, i64* @match_lines, align 8
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Gcompile.line_beg, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @Gcompile.word_beg, i64 0, i64 0)
  %114 = call i32 @strcpy(i8* %109, i8* %113)
  %115 = load i8*, i8** %10, align 8
  %116 = call i64 @strlen(i8* %115)
  store i64 %116, i64* %11, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i8*, i8** %3, align 8
  %121 = load i64, i64* %4, align 8
  %122 = call i32 @memcpy(i8* %119, i8* %120, i64 %121)
  %123 = load i64, i64* %4, align 8
  %124 = load i64, i64* %11, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %11, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = load i64, i64* %11, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i64, i64* @match_lines, align 8
  %130 = icmp ne i64 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Gcompile.line_end, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @Gcompile.word_end, i64 0, i64 0)
  %133 = call i32 @strcpy(i8* %128, i8* %132)
  %134 = load i8*, i8** %10, align 8
  %135 = load i64, i64* %11, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = call i64 @strlen(i8* %136)
  %138 = load i64, i64* %11, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %11, align 8
  %140 = load i8*, i8** %10, align 8
  store i8* %140, i8** %3, align 8
  %141 = load i64, i64* %11, align 8
  store i64 %141, i64* %4, align 8
  br label %142

142:                                              ; preds = %103, %100
  %143 = load i8*, i8** %3, align 8
  %144 = load i64, i64* %4, align 8
  %145 = call i32 @dfacomp(i8* %143, i64 %144, i32* @dfa, i32 1)
  %146 = call i32 (...) @kwsmusts()
  ret void
}

declare dso_local i32 @check_utf8(...) #1

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
