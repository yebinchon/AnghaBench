; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_chat.c_chat_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_chat.c_chat_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chat_debug = common dso_local global i32 0, align 4
@CHATDEBUG_SEND = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"chat_send '%s'\00", align 1
@chat_alarm = common dso_local global i32 0, align 4
@alarmed = common dso_local global i64 0, align 8
@PAUSE_CH = common dso_local global i8 0, align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"chat_send %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @chat_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chat_send(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @chat_debug, align 4
  %6 = load i32, i32* @CHATDEBUG_SEND, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @LOG_DEBUG, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = call i32 @cleanstr(i8* %11, i32 %13)
  %15 = call i32 @syslog(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %9, %1
  %17 = load i8*, i8** %2, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %16
  %21 = load i32, i32* @chat_alarm, align 4
  %22 = call i32 @alarm(i32 %21)
  store i64 0, i64* @alarmed, align 8
  br label %23

23:                                               ; preds = %60, %20
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8*, i8** %2, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i1 [ false, %23 ], [ %30, %26 ]
  br i1 %32, label %33, label %61

33:                                               ; preds = %31
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %2, align 8
  %36 = load i8, i8* %34, align 1
  store i8 %36, i8* %4, align 1
  %37 = load i64, i64* @alarmed, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 3, i32* %3, align 4
  br label %60

40:                                               ; preds = %33
  %41 = load i8, i8* %4, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @PAUSE_CH, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @usleep(i32 500000)
  br label %59

48:                                               ; preds = %40
  %49 = call i32 @usleep(i32 10000)
  %50 = load i32, i32* @STDOUT_FILENO, align 4
  %51 = call i32 @write(i32 %50, i8* %4, i32 1)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i64, i64* @alarmed, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 3, i32 2
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59, %39
  br label %23

61:                                               ; preds = %31
  %62 = call i32 @alarm(i32 0)
  %63 = call i32 (...) @chat_unalarm()
  store i64 0, i64* @alarmed, align 8
  br label %64

64:                                               ; preds = %61, %16
  %65 = load i32, i32* @chat_debug, align 4
  %66 = load i32, i32* @CHATDEBUG_SEND, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, i32* @LOG_DEBUG, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @result(i32 %71)
  %73 = call i32 @syslog(i32 %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @cleanstr(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @chat_unalarm(...) #1

declare dso_local i32 @result(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
