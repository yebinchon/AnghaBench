; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_tmpfile.c_tmpfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_tmpfile.c_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@_PATH_TMP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"tmp.XXXXXX\00", align 1
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@errno = common dso_local global i32 0, align 4
@TRAILER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tmpfile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* null, i8** %8, align 8
  %9 = call i64 (...) @issetugid()
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %8, align 8
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i8*, i8** %8, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i8*, i8** @_PATH_TMP, align 8
  store i8* %17, i8** %8, align 8
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 47
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %31 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %19, i8* %30, i32 ptrtoint ([11 x i8]* @.str.4 to i32))
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  store i32* null, i32** %1, align 8
  br label %65

35:                                               ; preds = %18
  %36 = call i32 @sigfillset(i32* %2)
  %37 = load i32, i32* @SIG_BLOCK, align 4
  %38 = call i32 @__libc_sigprocmask(i32 %37, i32* %2, i32* %3)
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @mkstemp(i8* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @unlink(i8* %44)
  br label %46

46:                                               ; preds = %43, %35
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32, i32* @SIG_SETMASK, align 4
  %50 = call i32 @__libc_sigprocmask(i32 %49, i32* %3, i32* null)
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32* null, i32** %1, align 8
  br label %65

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = call i32* @fdopen(i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %56, i32** %4, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* @errno, align 4
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @_close(i32 %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* @errno, align 4
  store i32* null, i32** %1, align 8
  br label %65

63:                                               ; preds = %54
  %64 = load i32*, i32** %4, align 8
  store i32* %64, i32** %1, align 8
  br label %65

65:                                               ; preds = %63, %58, %53, %34
  %66 = load i32*, i32** %1, align 8
  ret i32* %66
}

declare dso_local i64 @issetugid(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @__libc_sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
