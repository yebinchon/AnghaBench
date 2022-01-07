; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fmtmsg.c_fmtmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fmtmsg.c_fmtmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MM_PRINT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"MSGVERB\00", align 1
@DFLT_MSGVERB = common dso_local global i8* null, align 8
@MM_NOTOK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MM_CONSOLE = common dso_local global i64 0, align 8
@MM_NOCON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ae\00", align 1
@MM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fmtmsg(i64 %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @MM_PRINT, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %88

22:                                               ; preds = %6
  %23 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %15, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %51

25:                                               ; preds = %22
  %26 = load i8*, i8** %15, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load i8*, i8** %15, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = load i8*, i8** @DFLT_MSGVERB, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = icmp sle i64 %32, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load i8*, i8** %15, align 8
  %38 = call i8* @strdup(i8* %37)
  store i8* %38, i8** %16, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @MM_NOTOK, align 4
  store i32 %41, i32* %7, align 4
  br label %129

42:                                               ; preds = %36
  %43 = load i8*, i8** %16, align 8
  %44 = call i64 @validmsgverb(i8* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i8*, i8** %16, align 8
  %48 = call i32 @free(i8* %47)
  br label %52

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  br label %59

51:                                               ; preds = %30, %25, %22
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i8*, i8** @DFLT_MSGVERB, align 8
  %54 = call i8* @strdup(i8* %53)
  store i8* %54, i8** %16, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @MM_NOTOK, align 4
  store i32 %57, i32* %7, align 4
  br label %129

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %50
  %60 = load i8*, i8** %16, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = call i8* @printfmt(i8* %60, i64 %61, i8* %62, i32 %63, i8* %64, i8* %65, i8* %66)
  store i8* %67, i8** %17, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = load i8*, i8** %16, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i32, i32* @MM_NOTOK, align 4
  store i32 %73, i32* %7, align 4
  br label %129

74:                                               ; preds = %59
  %75 = load i8*, i8** %17, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32*, i32** @stderr, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = call i32 @fprintf(i32* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i8*, i8** %16, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load i8*, i8** %17, align 8
  %87 = call i32 @free(i8* %86)
  br label %88

88:                                               ; preds = %83, %6
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* @MM_CONSOLE, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %127

93:                                               ; preds = %88
  %94 = load i8*, i8** @DFLT_MSGVERB, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i8*, i8** %11, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = call i8* @printfmt(i8* %94, i64 %95, i8* %96, i32 %97, i8* %98, i8* %99, i8* %100)
  store i8* %101, i8** %17, align 8
  %102 = load i8*, i8** %17, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = load i32, i32* @MM_NOCON, align 4
  store i32 %105, i32* %7, align 4
  br label %129

106:                                              ; preds = %93
  %107 = load i8*, i8** %17, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %106
  %112 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %112, i32** %14, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i8*, i8** %17, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i32, i32* @MM_NOCON, align 4
  store i32 %117, i32* %7, align 4
  br label %129

118:                                              ; preds = %111
  %119 = load i32*, i32** %14, align 8
  %120 = load i8*, i8** %17, align 8
  %121 = call i32 @fprintf(i32* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %120)
  %122 = load i32*, i32** %14, align 8
  %123 = call i32 @fclose(i32* %122)
  br label %124

124:                                              ; preds = %118, %106
  %125 = load i8*, i8** %17, align 8
  %126 = call i32 @free(i8* %125)
  br label %127

127:                                              ; preds = %124, %88
  %128 = load i32, i32* @MM_OK, align 4
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %127, %114, %104, %70, %56, %40
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @validmsgverb(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @printfmt(i8*, i64, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
