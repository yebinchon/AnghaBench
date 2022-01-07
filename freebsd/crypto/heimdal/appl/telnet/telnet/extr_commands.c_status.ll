; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@connected = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Connected to %s.\0D\0A\00", align 1
@hostname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"notmuch\00", align 1
@TELOPT_LINEMODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Operating with LINEMODE option\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s line editing\0D\0A\00", align 1
@MODE_EDIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"%s catching of signals\0D\0A\00", align 1
@MODE_TRAPSIG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Operating in single character mode\0D\0A\00", align 1
@localchars = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"Catching signals locally\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s character echo\0D\0A\00", align 1
@MODE_ECHO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"Remote\00", align 1
@TELOPT_LFLOW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"%s flow control\0D\0A\00", align 1
@MODE_FLOW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"No connection.\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Escape character is '%s'.\0D\0A\00", align 1
@escape = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@TELOPT_SGA = common dso_local global i32 0, align 4
@kludgelinemode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i64, i64* @connected, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %69

8:                                                ; preds = %2
  %9 = load i8*, i8** @hostname, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load i8**, i8*** %4, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %68

19:                                               ; preds = %13, %8
  %20 = call i32 (...) @getconnmode()
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @TELOPT_LINEMODE, align 4
  %22 = call i64 @my_want_state_is_will(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MODE_EDIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MODE_TRAPSIG, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %38)
  %40 = call i32 (...) @slcstate()
  br label %48

41:                                               ; preds = %19
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %43 = load i64, i64* @localchars, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MODE_ECHO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* @TELOPT_LFLOW, align 4
  %57 = call i64 @my_want_state_is_will(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MODE_FLOW, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %59, %48
  br label %68

68:                                               ; preds = %67, %13
  br label %71

69:                                               ; preds = %2
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %68
  %72 = load i32, i32* @escape, align 4
  %73 = call i8* @control(i32 %72)
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @stdout, align 4
  %76 = call i32 @fflush(i32 %75)
  ret i32 1
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @getconnmode(...) #1

declare dso_local i64 @my_want_state_is_will(i32) #1

declare dso_local i32 @slcstate(...) #1

declare dso_local i8* @control(i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
