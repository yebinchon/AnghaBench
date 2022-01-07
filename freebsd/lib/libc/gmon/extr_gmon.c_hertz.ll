; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gmon/extr_gmon.c_hertz.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gmon/extr_gmon.c_hertz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@ITIMER_REAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hertz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hertz() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.itimerval, align 8
  %3 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @ITIMER_REAL, align 4
  %12 = call i32 @setitimer(i32 %11, %struct.itimerval* %2, %struct.itimerval* null)
  %13 = load i32, i32* @ITIMER_REAL, align 4
  %14 = call i32 @setitimer(i32 %13, %struct.itimerval* null, %struct.itimerval* %2)
  %15 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %25

20:                                               ; preds = %0
  %21 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 1000000, %23
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %20, %19
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
