; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_process_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_process_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, i32, i32 (%struct.rsocket*)*)* @rs_process_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_process_cq(%struct.rsocket* %0, i32 %1, i32 (%struct.rsocket*)* %2) #0 {
  %4 = alloca %struct.rsocket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.rsocket*)*, align 8
  %7 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (%struct.rsocket*)* %2, i32 (%struct.rsocket*)** %6, align 8
  %8 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %9 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %8, i32 0, i32 1
  %10 = call i32 @fastlock_acquire(i32* %9)
  br label %11

11:                                               ; preds = %66, %3
  %12 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %13 = call i32 @rs_update_credits(%struct.rsocket* %12)
  %14 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %15 = call i32 @rs_poll_cq(%struct.rsocket* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32 (%struct.rsocket*)*, i32 (%struct.rsocket*)** %6, align 8
  %17 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %18 = call i32 %16(%struct.rsocket* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %70

21:                                               ; preds = %11
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %70

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EWOULDBLOCK, align 4
  %30 = call i32 @ERR(i32 %29)
  store i32 %30, i32* %7, align 4
  br label %63

31:                                               ; preds = %25
  %32 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %33 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %38 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ibv_req_notify_cq(i32 %41, i32 0)
  %43 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %44 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %62

45:                                               ; preds = %31
  %46 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %47 = call i32 @rs_update_credits(%struct.rsocket* %46)
  %48 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %49 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %48, i32 0, i32 2
  %50 = call i32 @fastlock_acquire(i32* %49)
  %51 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %52 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %51, i32 0, i32 1
  %53 = call i32 @fastlock_release(i32* %52)
  %54 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %55 = call i32 @rs_get_cq_event(%struct.rsocket* %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %57 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %56, i32 0, i32 2
  %58 = call i32 @fastlock_release(i32* %57)
  %59 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %60 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %59, i32 0, i32 1
  %61 = call i32 @fastlock_acquire(i32* %60)
  br label %62

62:                                               ; preds = %45, %36
  br label %63

63:                                               ; preds = %62, %28
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br i1 %69, label %11, label %70

70:                                               ; preds = %66, %24, %20
  %71 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %72 = call i32 @rs_update_credits(%struct.rsocket* %71)
  %73 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %74 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %73, i32 0, i32 1
  %75 = call i32 @fastlock_release(i32* %74)
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @fastlock_acquire(i32*) #1

declare dso_local i32 @rs_update_credits(%struct.rsocket*) #1

declare dso_local i32 @rs_poll_cq(%struct.rsocket*) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @ibv_req_notify_cq(i32, i32) #1

declare dso_local i32 @fastlock_release(i32*) #1

declare dso_local i32 @rs_get_cq_event(%struct.rsocket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
