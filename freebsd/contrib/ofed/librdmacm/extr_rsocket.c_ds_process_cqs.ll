; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_process_cqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_process_cqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, i32, i32 (%struct.rsocket*)*)* @ds_process_cqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_process_cqs(%struct.rsocket* %0, i32 %1, i32 (%struct.rsocket*)* %2) #0 {
  %4 = alloca %struct.rsocket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.rsocket*)*, align 8
  %7 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (%struct.rsocket*)* %2, i32 (%struct.rsocket*)** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %9 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %8, i32 0, i32 1
  %10 = call i32 @fastlock_acquire(i32* %9)
  br label %11

11:                                               ; preds = %53, %3
  %12 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %13 = call i32 @ds_poll_cqs(%struct.rsocket* %12)
  %14 = load i32 (%struct.rsocket*)*, i32 (%struct.rsocket*)** %6, align 8
  %15 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %16 = call i32 %14(%struct.rsocket* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %57

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EWOULDBLOCK, align 4
  %24 = call i32 @ERR(i32 %23)
  store i32 %24, i32* %7, align 4
  br label %51

25:                                               ; preds = %19
  %26 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %27 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %32 = call i32 @ds_req_notify_cqs(%struct.rsocket* %31)
  %33 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %34 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %50

35:                                               ; preds = %25
  %36 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %37 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %36, i32 0, i32 2
  %38 = call i32 @fastlock_acquire(i32* %37)
  %39 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %40 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %39, i32 0, i32 1
  %41 = call i32 @fastlock_release(i32* %40)
  %42 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %43 = call i32 @ds_get_cq_event(%struct.rsocket* %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %45 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %44, i32 0, i32 2
  %46 = call i32 @fastlock_release(i32* %45)
  %47 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %48 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %47, i32 0, i32 1
  %49 = call i32 @fastlock_acquire(i32* %48)
  br label %50

50:                                               ; preds = %35, %30
  br label %51

51:                                               ; preds = %50, %22
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %11, label %57

57:                                               ; preds = %53, %18
  %58 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %59 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %58, i32 0, i32 1
  %60 = call i32 @fastlock_release(i32* %59)
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @fastlock_acquire(i32*) #1

declare dso_local i32 @ds_poll_cqs(%struct.rsocket*) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @ds_req_notify_cqs(%struct.rsocket*) #1

declare dso_local i32 @fastlock_release(i32*) #1

declare dso_local i32 @ds_get_cq_event(%struct.rsocket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
