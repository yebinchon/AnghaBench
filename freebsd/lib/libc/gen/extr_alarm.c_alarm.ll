; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_alarm.c_alarm.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_alarm.c_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@ITIMER_REAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alarm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.itimerval, align 8
  %5 = alloca %struct.itimerval, align 8
  %6 = alloca %struct.itimerval*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.itimerval* %4, %struct.itimerval** %6, align 8
  %7 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %8 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %7, i32 0, i32 1
  %9 = call i32 @timerclear(i32* %8)
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %12 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %15 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @ITIMER_REAL, align 4
  %18 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %19 = call i64 @setitimer(i32 %17, %struct.itimerval* %18, %struct.itimerval* %5)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %36

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add i32 %30, 1
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %5, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %21
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @timerclear(i32*) #1

declare dso_local i64 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
