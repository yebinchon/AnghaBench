; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_setinput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_setinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bflag = common dso_local global i64 0, align 8
@ntrec = common dso_local global i32 0, align 4
@NTREC = common dso_local global i32 0, align 4
@HIGHDENSITYTREC = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@terminal = common dso_local global i32* null, align 8
@pipecmdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@_PATH_TTY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"cannot open %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@_PATH_DEVNULL = common dso_local global i8* null, align 8
@pipein = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"setuid failed\0A\00", align 1
@magtape = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"Cannot allocate space for magtape buffer\0A\00", align 1
@host = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setinput(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @FLUSHTAPEBUF()
  %6 = load i64, i64* @bflag, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @ntrec, align 4
  %10 = call i32 @newtapebuf(i32 %9)
  br label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @NTREC, align 4
  %13 = load i32, i32* @HIGHDENSITYTREC, align 4
  %14 = call i32 @MAX(i32 %12, i32 %13)
  %15 = call i32 @newtapebuf(i32 %14)
  br label %16

16:                                               ; preds = %11, %8
  %17 = load i32*, i32** @stdin, align 8
  store i32* %17, i32** @terminal, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @pipecmdin, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @pipecmdin, align 4
  br label %54

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %23
  %28 = load i8*, i8** @_PATH_TTY, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** @terminal, align 8
  %30 = load i32*, i32** @terminal, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** @_PATH_TTY, align 8
  %35 = load i32, i32* @errno, align 4
  %36 = call i8* @strerror(i32 %35)
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %34, i8* %36)
  %38 = load i8*, i8** @_PATH_DEVNULL, align 8
  %39 = call i32* @fopen(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %39, i32** @terminal, align 8
  %40 = load i32*, i32** @terminal, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8*, i8** @_PATH_DEVNULL, align 8
  %45 = load i32, i32* @errno, align 4
  %46 = call i8* @strerror(i32 %45)
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %44, i8* %46)
  %48 = call i32 @done(i32 1)
  br label %49

49:                                               ; preds = %42, %32
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i32, i32* @pipein, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @pipein, align 4
  br label %53

53:                                               ; preds = %50, %23
  br label %54

54:                                               ; preds = %53, %20
  %55 = call i32 (...) @getuid()
  %56 = call i64 @setuid(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %61 = call i32 @done(i32 1)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i8*, i8** %3, align 8
  %64 = call i32* @strdup(i8* %63)
  store i32* %64, i32** @magtape, align 8
  %65 = load i32*, i32** @magtape, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %70 = call i32 @done(i32 1)
  br label %71

71:                                               ; preds = %67, %62
  ret void
}

declare dso_local i32 @FLUSHTAPEBUF(...) #1

declare dso_local i32 @newtapebuf(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @done(i32) #1

declare dso_local i64 @setuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
