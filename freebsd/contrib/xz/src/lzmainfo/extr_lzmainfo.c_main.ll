; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/lzmainfo/extr_lzmainfo.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/lzmainfo/extr_lzmainfo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@stdin = common dso_local global i32* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = call i32 @tuklib_progname_init(i8** %8)
  %10 = load i32, i32* @PACKAGE, align 4
  %11 = load i32, i32* @LOCALEDIR, align 4
  %12 = call i32 @tuklib_gettext_init(i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @parse_args(i32 %13, i8** %14)
  %16 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @optind, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32*, i32** @stdin, align 8
  %22 = call i64 @lzmainfo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %20
  br label %87

27:                                               ; preds = %2
  %28 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %81, %27
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* @optind, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load i32*, i32** @stdin, align 8
  %39 = call i64 @lzmainfo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %37
  br label %80

44:                                               ; preds = %29
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* @optind, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32* @fopen(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** @progname, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* @optind, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* @errno, align 4
  %63 = call i8* @strerror(i32 %62)
  %64 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %56, i8* %61, i8* %63)
  br label %81

65:                                               ; preds = %44
  %66 = load i8**, i8*** %5, align 8
  %67 = load i32, i32* @optind, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i64 @lzmainfo(i8* %70, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %65
  %77 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @fclose(i32* %78)
  br label %80

80:                                               ; preds = %76, %43
  br label %81

81:                                               ; preds = %80, %53
  %82 = load i32, i32* @optind, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @optind, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %29, label %86

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86, %26
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @EXIT_FAILURE, align 4
  %90 = call i32 @tuklib_exit(i32 %88, i32 %89, i32 1)
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @tuklib_progname_init(i8**) #1

declare dso_local i32 @tuklib_gettext_init(i32, i32) #1

declare dso_local i32 @parse_args(i32, i8**) #1

declare dso_local i64 @lzmainfo(i8*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @tuklib_exit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
