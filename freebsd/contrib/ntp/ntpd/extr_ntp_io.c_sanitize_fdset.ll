; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_sanitize_fdset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_sanitize_fdset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINTR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"select(%d, %s, 0L, 0L, &0.0) error: %m\00", align 1
@maxactivefd = common dso_local global i32 0, align 4
@activefds = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Removing bad file descriptor %d from select set\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sanitize_fdset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanitize_fdset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @EINTR, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* @LOG_ERR, align 4
  %12 = load i32, i32* @maxactivefd, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* @maxactivefd, align 4
  %15 = call i32 @fdbits(i32 %14, i32* @activefds)
  %16 = call i32 (i32, i8*, i32, ...) @msyslog(i32 %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @EBADF, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %2, align 4
  br label %56

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %45, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @maxactivefd, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @FD_ISSET(i32 %29, i32* @activefds)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @read(i32 %33, i32* %5, i32 0)
  %35 = icmp ne i32 -1, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %6, align 4
  br label %45

38:                                               ; preds = %32
  %39 = load i32, i32* @LOG_ERR, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i32, i8*, i32, ...) @msyslog(i32 %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @FD_CLR(i32 %42, i32* @activefds)
  br label %44

44:                                               ; preds = %38, %28
  br label %45

45:                                               ; preds = %44, %36
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %24

48:                                               ; preds = %24
  %49 = load i32, i32* @maxactivefd, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* @maxactivefd, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %21
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @msyslog(i32, i8*, i32, ...) #1

declare dso_local i32 @fdbits(i32, i32*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @FD_CLR(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
