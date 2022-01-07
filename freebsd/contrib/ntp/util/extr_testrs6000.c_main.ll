; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_testrs6000.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_testrs6000.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.itimerval = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"Starting: %s\00", align 1
@adjustment = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SIGALRM = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.itimerval, align 8
  %7 = alloca %struct.itimerval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32 @time(i32 0)
  store i32 %10, i32* %9, align 4
  %11 = call i8* @ctime(i32* %9)
  %12 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @adjustment, i32 0, i32 1), align 8
  store i32 -2000, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @adjustment, i32 0, i32 0), align 8
  %21 = load i32, i32* @SIGALRM, align 4
  %22 = load i32, i32* @timeout, align 4
  %23 = call i32 @signal(i32 %21, i32 %22)
  %24 = load i32, i32* @ITIMER_REAL, align 4
  %25 = call i32 @setitimer(i32 %24, %struct.itimerval* %6, %struct.itimerval* %7)
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %31, %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = call i32 (...) @pause()
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %26

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @time(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) #1

declare dso_local i32 @pause(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
