; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_cancel_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_cancel_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeout = type { void (i8*)*, i8*, %struct.timeout* }

@timeouts = common dso_local global %struct.timeout* null, align 8
@free_timeouts = common dso_local global %struct.timeout* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cancel_timeout(void (i8*)* %0, i8* %1) #0 {
  %3 = alloca void (i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.timeout*, align 8
  %6 = alloca %struct.timeout*, align 8
  store void (i8*)* %0, void (i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.timeout* null, %struct.timeout** %5, align 8
  %7 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  store %struct.timeout* %7, %struct.timeout** %6, align 8
  br label %8

8:                                                ; preds = %39, %2
  %9 = load %struct.timeout*, %struct.timeout** %6, align 8
  %10 = icmp ne %struct.timeout* %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %8
  %12 = load %struct.timeout*, %struct.timeout** %6, align 8
  %13 = getelementptr inbounds %struct.timeout, %struct.timeout* %12, i32 0, i32 0
  %14 = load void (i8*)*, void (i8*)** %13, align 8
  %15 = load void (i8*)*, void (i8*)** %3, align 8
  %16 = icmp eq void (i8*)* %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  %18 = load %struct.timeout*, %struct.timeout** %6, align 8
  %19 = getelementptr inbounds %struct.timeout, %struct.timeout* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.timeout*, %struct.timeout** %5, align 8
  %25 = icmp ne %struct.timeout* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.timeout*, %struct.timeout** %6, align 8
  %28 = getelementptr inbounds %struct.timeout, %struct.timeout* %27, i32 0, i32 2
  %29 = load %struct.timeout*, %struct.timeout** %28, align 8
  %30 = load %struct.timeout*, %struct.timeout** %5, align 8
  %31 = getelementptr inbounds %struct.timeout, %struct.timeout* %30, i32 0, i32 2
  store %struct.timeout* %29, %struct.timeout** %31, align 8
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.timeout*, %struct.timeout** %6, align 8
  %34 = getelementptr inbounds %struct.timeout, %struct.timeout* %33, i32 0, i32 2
  %35 = load %struct.timeout*, %struct.timeout** %34, align 8
  store %struct.timeout* %35, %struct.timeout** @timeouts, align 8
  br label %36

36:                                               ; preds = %32, %26
  br label %43

37:                                               ; preds = %17, %11
  %38 = load %struct.timeout*, %struct.timeout** %6, align 8
  store %struct.timeout* %38, %struct.timeout** %5, align 8
  br label %39

39:                                               ; preds = %37
  %40 = load %struct.timeout*, %struct.timeout** %6, align 8
  %41 = getelementptr inbounds %struct.timeout, %struct.timeout* %40, i32 0, i32 2
  %42 = load %struct.timeout*, %struct.timeout** %41, align 8
  store %struct.timeout* %42, %struct.timeout** %6, align 8
  br label %8

43:                                               ; preds = %36, %8
  %44 = load %struct.timeout*, %struct.timeout** %6, align 8
  %45 = icmp ne %struct.timeout* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.timeout*, %struct.timeout** @free_timeouts, align 8
  %48 = load %struct.timeout*, %struct.timeout** %6, align 8
  %49 = getelementptr inbounds %struct.timeout, %struct.timeout* %48, i32 0, i32 2
  store %struct.timeout* %47, %struct.timeout** %49, align 8
  %50 = load %struct.timeout*, %struct.timeout** %6, align 8
  store %struct.timeout* %50, %struct.timeout** @free_timeouts, align 8
  br label %51

51:                                               ; preds = %46, %43
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
