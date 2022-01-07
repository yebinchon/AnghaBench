; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_open_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_open_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@STDIN_NAME = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s: %s %s\0A\00", align 1
@_nc_progname = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: %s is not a file\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: Can't open %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*)* @open_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_input(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** @stdin, align 8
  %14 = load i8*, i8** @STDIN_NAME, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32* @copy_input(i32* %13, i8* %14, i8* %15)
  store i32* %16, i32** %5, align 8
  br label %88

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @stat(i8* %18, %struct.stat* %6)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** @_nc_progname, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i8* @strerror(i32 %25)
  %27 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %24, i8* %26)
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i32 @ExitProgram(i32 %28)
  br label %87

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @S_IFMT, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @S_IFDIR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @S_IFREG, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @S_IFCHR, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41, %30
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** @_nc_progname, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %47, i8* %48)
  %50 = load i32, i32* @EXIT_FAILURE, align 4
  %51 = call i32 @ExitProgram(i32 %50)
  br label %86

52:                                               ; preds = %41, %37
  %53 = load i8*, i8** %3, align 8
  %54 = call i32* @fopen(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %54, i32** %5, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8*, i8** @_nc_progname, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %59, i8* %60)
  %62 = load i32, i32* @EXIT_FAILURE, align 4
  %63 = call i32 @ExitProgram(i32 %62)
  br label %64

64:                                               ; preds = %57, %52
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @S_IFREG, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load i8*, i8** %4, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32*, i32** %5, align 8
  %73 = load i8*, i8** %3, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32* @copy_input(i32* %72, i8* %73, i8* %74)
  store i32* %75, i32** %8, align 8
  %76 = load i32*, i32** %8, align 8
  store i32* %76, i32** %5, align 8
  br label %84

77:                                               ; preds = %68
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** @_nc_progname, align 8
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %79, i8* %80)
  %82 = load i32, i32* @EXIT_FAILURE, align 4
  %83 = call i32 @ExitProgram(i32 %82)
  br label %84

84:                                               ; preds = %77, %71
  br label %85

85:                                               ; preds = %84, %64
  br label %86

86:                                               ; preds = %85, %45
  br label %87

87:                                               ; preds = %86, %21
  br label %88

88:                                               ; preds = %87, %12
  %89 = load i32*, i32** %5, align 8
  ret i32* %89
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @copy_input(i32*, i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @ExitProgram(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
