; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_notify_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_notify_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@notify_pipe = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"pipe(notify_pipe) failed %s\00", align 1
@errno = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"fcntl(notify_pipe, F_SETFD) failed %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @notify_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notify_setup() #0 {
  %1 = load i32*, i32** @notify_pipe, align 8
  %2 = call i64 @pipe(i32* %1)
  %3 = icmp slt i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @errno, align 4
  %6 = call i32 @strerror(i32 %5)
  %7 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %46

8:                                                ; preds = %0
  %9 = load i32*, i32** @notify_pipe, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @F_SETFD, align 4
  %13 = load i32, i32* @FD_CLOEXEC, align 4
  %14 = call i32 @fcntl(i32 %11, i32 %12, i32 %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = load i32*, i32** @notify_pipe, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @F_SETFD, align 4
  %21 = load i32, i32* @FD_CLOEXEC, align 4
  %22 = call i32 @fcntl(i32 %19, i32 %20, i32 %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %36

24:                                               ; preds = %16, %8
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** @notify_pipe, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @close(i32 %30)
  %32 = load i32*, i32** @notify_pipe, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @close(i32 %34)
  br label %45

36:                                               ; preds = %16
  %37 = load i32*, i32** @notify_pipe, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @set_nonblock(i32 %39)
  %41 = load i32*, i32** @notify_pipe, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @set_nonblock(i32 %43)
  br label %51

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i32*, i32** @notify_pipe, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 -1, i32* %48, align 4
  %49 = load i32*, i32** @notify_pipe, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 -1, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %36
  ret void
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @set_nonblock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
