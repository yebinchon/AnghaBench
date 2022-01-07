; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_test-time.c_time_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_test-time.c_time_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@called = common dso_local global i32 0, align 4
@NEVENT = common dso_local global i32 0, align 4
@ev = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @time_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @time_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @called, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @called, align 4
  %12 = load i32, i32* @called, align 4
  %13 = load i32, i32* @NEVENT, align 4
  %14 = mul nsw i32 10, %13
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %51, %16
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %54

20:                                               ; preds = %17
  %21 = load i32, i32* @NEVENT, align 4
  %22 = call i8* @rand_int(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = call i8* @rand_int(i32 50000)
  %26 = ptrtoint i8* %25 to i32
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = srem i32 %29, 2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* @called, align 4
  %34 = load i32, i32* @NEVENT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32, %20
  %37 = load i32*, i32** @ev, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @evtimer_add(i32 %41, %struct.timeval* %7)
  br label %50

43:                                               ; preds = %32
  %44 = load i32*, i32** @ev, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @evtimer_del(i32 %48)
  br label %50

50:                                               ; preds = %43, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %17

54:                                               ; preds = %17
  br label %55

55:                                               ; preds = %54, %3
  ret void
}

declare dso_local i8* @rand_int(i32) #1

declare dso_local i32 @evtimer_add(i32, %struct.timeval*) #1

declare dso_local i32 @evtimer_del(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
