; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_copy_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_copy_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"copy_input (source)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"copy_input (target)\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: %s is not a text-file\0A\00", align 1
@_nc_progname = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@to_remove = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*)* @copy_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_input(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8* %15, i8** %6, align 8
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @failed(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %73

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = call i32* @open_tempfile(i8* %25)
  store i32* %26, i32** %10, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @failed(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %72

30:                                               ; preds = %24
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @clearerr(i32* %31)
  br label %33

33:                                               ; preds = %59, %30
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @fgetc(i32* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i64 @feof(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %63

40:                                               ; preds = %33
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @ferror(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @failed(i8* %45)
  br label %58

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** @_nc_progname, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %53)
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  %56 = call i32 @ExitProgram(i32 %55)
  br label %57

57:                                               ; preds = %50, %47
  br label %58

58:                                               ; preds = %57, %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @fputc(i32 %60, i32* %61)
  br label %33

63:                                               ; preds = %39
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @fclose(i32* %64)
  %66 = load i8*, i8** %6, align 8
  %67 = call i32* @fopen(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %67, i32** %9, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @fclose(i32* %68)
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @strdup(i8* %70)
  store i32 %71, i32* @to_remove, align 4
  br label %72

72:                                               ; preds = %63, %28
  br label %73

73:                                               ; preds = %72, %22
  %74 = load i32*, i32** %9, align 8
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  ret i32* %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @failed(i8*) #2

declare dso_local i32* @open_tempfile(i8*) #2

declare dso_local i32 @clearerr(i32*) #2

declare dso_local i32 @fgetc(i32*) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #2

declare dso_local i32 @ExitProgram(i32) #2

declare dso_local i32 @fputc(i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
