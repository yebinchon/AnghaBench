; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_get_cq_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_get_cq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i64, i64, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ibv_cq = type { i32 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@rs_error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*)* @rs_get_cq_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_get_cq_event(%struct.rsocket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsocket*, align 8
  %4 = alloca %struct.ibv_cq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %3, align 8
  %7 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %8 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

12:                                               ; preds = %1
  %13 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %14 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %13, i32 0, i32 5
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ibv_get_cq_event(i32 %17, %struct.ibv_cq** %4, i8** %5)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %12
  %22 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %23 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %27 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %30 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = icmp sge i64 %25, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %21
  %35 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %36 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %35, i32 0, i32 5
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %41 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @ibv_ack_cq_events(i32 %39, i64 %42)
  %44 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %45 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %34, %21
  %47 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %48 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  br label %62

49:                                               ; preds = %12
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @EAGAIN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EINTR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @rs_error, align 4
  %59 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %60 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %57, %53, %49
  br label %62

62:                                               ; preds = %61, %46
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %11
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @ibv_get_cq_event(i32, %struct.ibv_cq**, i8**) #1

declare dso_local i32 @ibv_ack_cq_events(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
