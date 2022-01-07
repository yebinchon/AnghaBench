; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/adjtimed/extr_adjtimed.c_GetClockRate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/adjtimed/extr_adjtimed.c_GetClockRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@kmem = common dso_local global i32 0, align 4
@nl = common dso_local global %struct.TYPE_2__* null, align 8
@SIGALRM = common dso_local global i32 0, align 4
@UNKNOWN_RATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetClockRate() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @kmem, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i64 @lseek(i32 %4, i32 %9, i32 0)
  %11 = icmp eq i64 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i64 -1, i64* %1, align 8
  br label %28

13:                                               ; preds = %0
  %14 = load i32, i32* @SIGALRM, align 4
  %15 = call i32 @sigmask(i32 %14)
  %16 = call i64 @sigblock(i32 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i32, i32* @kmem, align 4
  %18 = ptrtoint i64* %2 to i32
  %19 = call i32 @read(i32 %17, i32 %18, i32 8)
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i64, i64* @UNKNOWN_RATE, align 8
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %22, %13
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @sigsetmask(i64 %25)
  %27 = load i64, i64* %2, align 8
  store i64 %27, i64* %1, align 8
  br label %28

28:                                               ; preds = %24, %12
  %29 = load i64, i64* %1, align 8
  ret i64 %29
}

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i64 @sigblock(i32) #1

declare dso_local i32 @sigmask(i32) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @sigsetmask(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
