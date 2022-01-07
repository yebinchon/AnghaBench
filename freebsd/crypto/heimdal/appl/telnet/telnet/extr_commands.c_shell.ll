; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_shell.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Fork failed\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@saveline = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"Execl\00", align 1
@connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @shell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shell(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %12 = call i32 (...) @setcommandmode()
  %13 = call i64 @TerminalWindowSize(i64* %5, i64* %6)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  %18 = call i32 (...) @fork()
  switch i32 %18, label %51 [
    i32 -1, label %19
    i32 0, label %21
  ]

19:                                               ; preds = %2
  %20 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %72

21:                                               ; preds = %2
  %22 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i8*, i8** %10, align 8
  %28 = call i8* @strrchr(i8* %27, i8 signext 47)
  store i8* %28, i8** %11, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i8*, i8** %10, align 8
  store i8* %31, i8** %11, align 8
  br label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %11, align 8
  br label %35

35:                                               ; preds = %32, %30
  %36 = load i32, i32* %3, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32*, i32** @saveline, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = call i32 (i8*, i8*, i8*, ...) @execl(i8* %39, i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %42, i8* null)
  br label %48

44:                                               ; preds = %35
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 (i8*, i8*, i8*, ...) @execl(i8* %45, i8* %46, i8* null)
  br label %48

48:                                               ; preds = %44, %38
  %49 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %50 = call i32 @_exit(i32 1) #3
  unreachable

51:                                               ; preds = %2
  %52 = call i32 @wait(i32* null)
  %53 = call i64 @TerminalWindowSize(i64* %7, i64* %8)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i32, i32* @connected, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %61, %58
  %70 = call i32 (...) @sendnaws()
  br label %71

71:                                               ; preds = %69, %65, %55, %51
  br label %72

72:                                               ; preds = %71, %19
  ret i32 1
}

declare dso_local i32 @setcommandmode(...) #1

declare dso_local i64 @TerminalWindowSize(i64*, i64*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @execl(i8*, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @sendnaws(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
