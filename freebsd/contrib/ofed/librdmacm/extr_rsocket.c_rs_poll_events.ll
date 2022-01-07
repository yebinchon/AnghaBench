; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_poll_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_poll_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i64, i32, i32 }
%struct.rsocket = type { i64, i32 }

@idm = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@rs_poll_all = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pollfd*, %struct.pollfd*, i32)* @rs_poll_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_poll_events(%struct.pollfd* %0, %struct.pollfd* %1, i32 %2) #0 {
  %4 = alloca %struct.pollfd*, align 8
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsocket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pollfd* %0, %struct.pollfd** %4, align 8
  store %struct.pollfd* %1, %struct.pollfd** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %90, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %93

14:                                               ; preds = %10
  %15 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %15, i64 %17
  %19 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %90

23:                                               ; preds = %14
  %24 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %24, i64 %26
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.rsocket* @idm_lookup(i32* @idm, i32 %29)
  store %struct.rsocket* %30, %struct.rsocket** %7, align 8
  %31 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %32 = icmp ne %struct.rsocket* %31, null
  br i1 %32, label %33, label %66

33:                                               ; preds = %23
  %34 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %35 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %34, i32 0, i32 1
  %36 = call i32 @fastlock_acquire(i32* %35)
  %37 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %38 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SOCK_STREAM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %44 = call i32 @rs_get_cq_event(%struct.rsocket* %43)
  br label %48

45:                                               ; preds = %33
  %46 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %47 = call i32 @ds_get_cq_event(%struct.rsocket* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %50 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %49, i32 0, i32 1
  %51 = call i32 @fastlock_release(i32* %50)
  %52 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %53 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %53, i64 %55
  %57 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @rs_poll_all, align 4
  %60 = call i64 @rs_poll_rs(%struct.rsocket* %52, i32 %58, i32 1, i32 %59)
  %61 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %61, i64 %63
  %65 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %64, i32 0, i32 0
  store i64 %60, i64* %65, align 8
  br label %78

66:                                               ; preds = %23
  %67 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %67, i64 %69
  %71 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %73, i64 %75
  %77 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %76, i32 0, i32 0
  store i64 %72, i64* %77, align 8
  br label %78

78:                                               ; preds = %66, %48
  %79 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %79, i64 %81
  %83 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %86, %78
  br label %90

90:                                               ; preds = %89, %22
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %10

93:                                               ; preds = %10
  %94 = load i32, i32* %9, align 4
  ret i32 %94
}

declare dso_local %struct.rsocket* @idm_lookup(i32*, i32) #1

declare dso_local i32 @fastlock_acquire(i32*) #1

declare dso_local i32 @rs_get_cq_event(%struct.rsocket*) #1

declare dso_local i32 @ds_get_cq_event(%struct.rsocket*) #1

declare dso_local i32 @fastlock_release(i32*) #1

declare dso_local i64 @rs_poll_rs(%struct.rsocket*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
