; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_get_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_get_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32 }
%struct.timeval = type { i32, i64 }

@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@polling_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, i32, i32 (%struct.rsocket*)*)* @ds_get_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_get_comp(%struct.rsocket* %0, i32 %1, i32 (%struct.rsocket*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsocket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.rsocket*)*, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%struct.rsocket*)* %2, i32 (%struct.rsocket*)** %7, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %48, %3
  %13 = load %struct.rsocket*, %struct.rsocket** %5, align 8
  %14 = load i32 (%struct.rsocket*)*, i32 (%struct.rsocket*)** %7, align 8
  %15 = call i32 @ds_process_cqs(%struct.rsocket* %13, i32 1, i32 (%struct.rsocket*)* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EWOULDBLOCK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %18, %12
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %57

27:                                               ; preds = %21
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  br label %32

32:                                               ; preds = %30, %27
  %33 = call i32 @gettimeofday(%struct.timeval* %9, i32* null)
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %35, %37
  %39 = mul nsw i32 %38, 1000000
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %42, %44
  %46 = add nsw i64 %40, %45
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %32
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @polling_time, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %12, label %52

52:                                               ; preds = %48
  %53 = load %struct.rsocket*, %struct.rsocket** %5, align 8
  %54 = load i32 (%struct.rsocket*)*, i32 (%struct.rsocket*)** %7, align 8
  %55 = call i32 @ds_process_cqs(%struct.rsocket* %53, i32 0, i32 (%struct.rsocket*)* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %25
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ds_process_cqs(%struct.rsocket*, i32, i32 (%struct.rsocket*)*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
