; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/vis/extr_vis.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/vis/extr_vis.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"bcde:F:fhlmnostw\00", align 1
@VIS_NOSLASH = common dso_local global i32 0, align 4
@eflags = common dso_local global i32 0, align 4
@VIS_CSTYLE = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@extra = common dso_local global i32 0, align 4
@foldwidth = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"can't fold lines to less than 5 cols\00", align 1
@markeol = common dso_local global i32 0, align 4
@fold = common dso_local global i32 0, align 4
@VIS_HTTPSTYLE = common dso_local global i32 0, align 4
@VIS_MIMESTYLE = common dso_local global i32 0, align 4
@none = common dso_local global i32 0, align 4
@VIS_OCTAL = common dso_local global i32 0, align 4
@VIS_SAFE = common dso_local global i32 0, align 4
@VIS_TAB = common dso_local global i32 0, align 4
@VIS_WHITE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"Usage: %s [-bcfhlmnostw] [-e extra] [-F foldwidth] [file ...]\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Can't specify -m and -h at the same time\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = common dso_local global i32* null, align 8
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %9

9:                                                ; preds = %79, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %80

14:                                               ; preds = %9
  %15 = load i32, i32* %7, align 4
  %16 = trunc i32 %15 to i8
  %17 = sext i8 %16 to i32
  switch i32 %17, label %75 [
    i32 98, label %18
    i32 99, label %22
    i32 101, label %26
    i32 70, label %28
    i32 102, label %37
    i32 104, label %40
    i32 108, label %44
    i32 109, label %47
    i32 110, label %55
    i32 111, label %58
    i32 115, label %62
    i32 116, label %66
    i32 119, label %70
    i32 63, label %74
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @VIS_NOSLASH, align 4
  %20 = load i32, i32* @eflags, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* @eflags, align 4
  br label %79

22:                                               ; preds = %14
  %23 = load i32, i32* @VIS_CSTYLE, align 4
  %24 = load i32, i32* @eflags, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* @eflags, align 4
  br label %79

26:                                               ; preds = %14
  %27 = load i32, i32* @optarg, align 4
  store i32 %27, i32* @extra, align 4
  br label %79

28:                                               ; preds = %14
  %29 = load i32, i32* @optarg, align 4
  %30 = call i32 @atoi(i32 %29)
  store i32 %30, i32* @foldwidth, align 4
  %31 = icmp slt i32 %30, 5
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* @markeol, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @markeol, align 4
  br label %79

37:                                               ; preds = %14
  %38 = load i32, i32* @fold, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @fold, align 4
  br label %79

40:                                               ; preds = %14
  %41 = load i32, i32* @VIS_HTTPSTYLE, align 4
  %42 = load i32, i32* @eflags, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* @eflags, align 4
  br label %79

44:                                               ; preds = %14
  %45 = load i32, i32* @markeol, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @markeol, align 4
  br label %79

47:                                               ; preds = %14
  %48 = load i32, i32* @VIS_MIMESTYLE, align 4
  %49 = load i32, i32* @eflags, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* @eflags, align 4
  %51 = load i32, i32* @foldwidth, align 4
  %52 = icmp eq i32 %51, 80
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 76, i32* @foldwidth, align 4
  br label %54

54:                                               ; preds = %53, %47
  br label %79

55:                                               ; preds = %14
  %56 = load i32, i32* @none, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @none, align 4
  br label %79

58:                                               ; preds = %14
  %59 = load i32, i32* @VIS_OCTAL, align 4
  %60 = load i32, i32* @eflags, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* @eflags, align 4
  br label %79

62:                                               ; preds = %14
  %63 = load i32, i32* @VIS_SAFE, align 4
  %64 = load i32, i32* @eflags, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* @eflags, align 4
  br label %79

66:                                               ; preds = %14
  %67 = load i32, i32* @VIS_TAB, align 4
  %68 = load i32, i32* @eflags, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* @eflags, align 4
  br label %79

70:                                               ; preds = %14
  %71 = load i32, i32* @VIS_WHITE, align 4
  %72 = load i32, i32* @eflags, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* @eflags, align 4
  br label %79

74:                                               ; preds = %14
  br label %75

75:                                               ; preds = %14, %74
  %76 = load i32, i32* @stderr, align 4
  %77 = call i8* (...) @getprogname()
  %78 = call i32 @fprintf(i32 %76, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  store i32 1, i32* %3, align 4
  br label %132

79:                                               ; preds = %70, %66, %62, %58, %55, %54, %44, %40, %37, %34, %26, %22, %18
  br label %9

80:                                               ; preds = %9
  %81 = load i32, i32* @eflags, align 4
  %82 = load i32, i32* @VIS_HTTPSTYLE, align 4
  %83 = load i32, i32* @VIS_MIMESTYLE, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %81, %84
  %86 = load i32, i32* @VIS_HTTPSTYLE, align 4
  %87 = load i32, i32* @VIS_MIMESTYLE, align 4
  %88 = or i32 %86, %87
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %80
  %93 = load i64, i64* @optind, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %4, align 4
  %98 = load i64, i64* @optind, align 8
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 %98
  store i8** %100, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %101 = load i8**, i8*** %5, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %127

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %123, %104
  %106 = load i8**, i8*** %5, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %126

109:                                              ; preds = %105
  %110 = load i8**, i8*** %5, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = call i32* @fopen(i8* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %112, i32** %6, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @process(i32* %115)
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @fclose(i32* %117)
  br label %123

119:                                              ; preds = %109
  %120 = load i8**, i8*** %5, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %121)
  store i32 1, i32* %8, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i32 1
  store i8** %125, i8*** %5, align 8
  br label %105

126:                                              ; preds = %105
  br label %130

127:                                              ; preds = %92
  %128 = load i32*, i32** @stdin, align 8
  %129 = call i32 @process(i32* %128)
  br label %130

130:                                              ; preds = %127, %126
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %75
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @process(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
