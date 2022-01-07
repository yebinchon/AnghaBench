; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/adjtimed/extr_adjtimed.c_SetClockRate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/adjtimed/extr_adjtimed.c_SetClockRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@kmem = common dso_local global i32 0, align 4
@nl = common dso_local global %struct.TYPE_2__* null, align 8
@SIGALRM = common dso_local global i32 0, align 4
@default_rate = common dso_local global i64 0, align 8
@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"adjtimed: clock rate (%lu) %ldus/s\0A\00", align 1
@tick_rate = common dso_local global i64 0, align 8
@sysdebug = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"clock rate (%lu) %ldus/s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetClockRate(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @kmem, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i64 @lseek(i32 %5, i32 %10, i32 0)
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %57

14:                                               ; preds = %1
  %15 = load i32, i32* @SIGALRM, align 4
  %16 = call i32 @sigmask(i32 %15)
  %17 = call i64 @sigblock(i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i32, i32* @kmem, align 4
  %19 = ptrtoint i64* %3 to i32
  %20 = call i32 @write(i32 %18, i32 %19, i32 8)
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 8
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @sigsetmask(i64 %24)
  store i32 -1, i32* %2, align 4
  br label %57

26:                                               ; preds = %14
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @sigsetmask(i64 %27)
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @default_rate, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load i32, i32* @verbose, align 4
  %34 = icmp sgt i32 %33, 3
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @default_rate, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load i64, i64* @tick_rate, align 8
  %41 = mul nsw i64 %39, %40
  %42 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %41)
  br label %43

43:                                               ; preds = %35, %32
  %44 = load i32, i32* @sysdebug, align 4
  %45 = icmp sgt i32 %44, 3
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* @LOG_INFO, align 4
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @default_rate, align 8
  %51 = sub nsw i64 %49, %50
  %52 = load i64, i64* @tick_rate, align 8
  %53 = mul nsw i64 %51, %52
  %54 = call i32 @msyslog(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %53)
  br label %55

55:                                               ; preds = %46, %43
  br label %56

56:                                               ; preds = %55, %26
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %23, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i64 @sigblock(i32) #1

declare dso_local i32 @sigmask(i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @sigsetmask(i64) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

declare dso_local i32 @msyslog(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
