; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_ualarm.c_ualarm.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_ualarm.c_ualarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@USPS = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ualarm(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.itimerval, align 4
  %7 = alloca %struct.itimerval, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @USPS, align 4
  %10 = srem i32 %8, %9
  %11 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @USPS, align 4
  %15 = sdiv i32 %13, %14
  %16 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @USPS, align 4
  %20 = srem i32 %18, %19
  %21 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @USPS, align 4
  %25 = sdiv i32 %23, %24
  %26 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @ITIMER_REAL, align 4
  %29 = call i64 @setitimer(i32 %28, %struct.itimerval* %6, %struct.itimerval* %7)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %7, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @USPS, align 4
  %36 = mul nsw i32 %34, %35
  %37 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %7, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
