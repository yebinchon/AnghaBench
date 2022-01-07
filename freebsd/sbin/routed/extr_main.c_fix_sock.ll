; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_main.c_fix_sock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_main.c_fix_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fix_sock.rbuf = internal global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"fcntl(%s) O_NONBLOCK: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BROADCAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"setsockopt(%s,SO_BROADCAST): %s\00", align 1
@SO_RCVBUF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"setsockopt(%s,SO_RCVBUF=%d): %s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"RCVBUF=%d\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"setsockopt(%s,SO_RCVBUF = %d): %s\00", align 1
@MIN_SOCKBUF = common dso_local global i32 0, align 4
@SO_PASSIFNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fix_sock(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @F_SETFL, align 4
  %8 = load i32, i32* @O_NONBLOCK, align 4
  %9 = call i32 @fcntl(i32 %6, i32 %7, i32 %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 @logbad(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %14)
  br label %16

16:                                               ; preds = %11, %2
  store i32 1, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SOL_SOCKET, align 4
  %19 = load i32, i32* @SO_BROADCAST, align 4
  %20 = call i64 @setsockopt(i32 %17, i32 %18, i32 %19, i32* %5, i32 4)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = call i32 (i8*, i8*, i32, ...) @msglog(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %25)
  br label %27

27:                                               ; preds = %22, %16
  %28 = load i32, i32* @fix_sock.rbuf, align 4
  %29 = icmp sge i32 %28, 4096
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SOL_SOCKET, align 4
  %33 = load i32, i32* @SO_RCVBUF, align 4
  %34 = call i64 @setsockopt(i32 %31, i32 %32, i32 %33, i32* @fix_sock.rbuf, i32 4)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* @fix_sock.rbuf, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 (i8*, i8*, i32, ...) @msglog(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %36, %30
  br label %67

43:                                               ; preds = %27
  store i32 61440, i32* @fix_sock.rbuf, align 4
  br label %44

44:                                               ; preds = %63, %43
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SOL_SOCKET, align 4
  %47 = load i32, i32* @SO_RCVBUF, align 4
  %48 = call i64 @setsockopt(i32 %45, i32 %46, i32 %47, i32* @fix_sock.rbuf, i32 4)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @fix_sock.rbuf, align 4
  %52 = call i32 @trace_act(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %66

53:                                               ; preds = %44
  %54 = load i32, i32* @fix_sock.rbuf, align 4
  %55 = icmp slt i32 %54, 4096
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* @fix_sock.rbuf, align 4
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 @strerror(i32 %59)
  %61 = call i32 (i8*, i8*, i32, ...) @msglog(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %57, i32 %58, i32 %60)
  br label %66

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* @fix_sock.rbuf, align 4
  %65 = sub nsw i32 %64, 4096
  store i32 %65, i32* @fix_sock.rbuf, align 4
  br label %44

66:                                               ; preds = %56, %50
  br label %67

67:                                               ; preds = %66, %42
  ret void
}

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @logbad(i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @msglog(i8*, i8*, i32, ...) #1

declare dso_local i32 @trace_act(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
