; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sigtimedwait.h_sigtimedwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sigtimedwait.h_sigtimedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32 }
%struct.itimerval = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@SIGALRM = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SIG_UNBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.timespec*)* @sigtimedwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigtimedwait(i32* %0, i32* %1, %struct.timespec* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca %struct.itimerval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @PJDLOG_ASSERT(i32 %13)
  %15 = call i64 @sigemptyset(i32* %8)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @PJDLOG_VERIFY(i32 %17)
  %19 = load i32, i32* @SIGALRM, align 4
  %20 = call i64 @sigaddset(i32* %8, i32 %19)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @PJDLOG_VERIFY(i32 %22)
  %24 = load i32, i32* @SIG_BLOCK, align 4
  %25 = call i64 @sigprocmask(i32 %24, i32* %8, i32* null)
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @PJDLOG_VERIFY(i32 %27)
  %29 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %7, i32 0, i32 1
  %30 = call i32 @timerclear(%struct.TYPE_2__* %29)
  %31 = load %struct.timespec*, %struct.timespec** %6, align 8
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %7, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.timespec*, %struct.timespec** %6, align 8
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %38, 1000
  %40 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %7, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %7, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %7, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %7, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %46, %3
  %55 = load i32, i32* @ITIMER_REAL, align 4
  %56 = call i64 @setitimer(i32 %55, %struct.itimerval* %7, i32* null)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @PJDLOG_VERIFY(i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @bcopy(i32* %60, i32* %8, i32 4)
  %62 = load i32, i32* @SIGALRM, align 4
  %63 = call i64 @sigaddset(i32* %8, i32 %62)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @PJDLOG_VERIFY(i32 %65)
  %67 = call i64 @sigwait(i32* %8, i32* %10)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @PJDLOG_VERIFY(i32 %69)
  %71 = load i32, i32* @errno, align 4
  store i32 %71, i32* %9, align 4
  %72 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %7, i32 0, i32 1
  %73 = call i32 @timerclear(%struct.TYPE_2__* %72)
  %74 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %7, i32 0, i32 0
  %75 = call i32 @timerclear(%struct.TYPE_2__* %74)
  %76 = load i32, i32* @ITIMER_REAL, align 4
  %77 = call i64 @setitimer(i32 %76, %struct.itimerval* %7, i32* null)
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @PJDLOG_VERIFY(i32 %79)
  %81 = call i64 @sigemptyset(i32* %8)
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @PJDLOG_VERIFY(i32 %83)
  %85 = load i32, i32* @SIGALRM, align 4
  %86 = call i64 @sigaddset(i32* %8, i32 %85)
  %87 = icmp eq i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @PJDLOG_VERIFY(i32 %88)
  %90 = load i32, i32* @SIG_UNBLOCK, align 4
  %91 = call i64 @sigprocmask(i32 %90, i32* %8, i32* null)
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @PJDLOG_VERIFY(i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @SIGALRM, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %54
  %99 = load i32, i32* @EAGAIN, align 4
  store i32 %99, i32* @errno, align 4
  store i32 -1, i32* %10, align 4
  br label %102

100:                                              ; preds = %54
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* @errno, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = load i32, i32* %10, align 4
  ret i32 %103
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @PJDLOG_VERIFY(i32) #1

declare dso_local i64 @sigemptyset(i32*) #1

declare dso_local i64 @sigaddset(i32*, i32) #1

declare dso_local i64 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @timerclear(%struct.TYPE_2__*) #1

declare dso_local i64 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i64 @sigwait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
