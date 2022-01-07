; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_client_global_request_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_client_global_request_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.global_confirm = type { i64, i32, i32 (%struct.ssh*, i32, i32, i32)* }

@global_confirms = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ssh*)* @client_global_request_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_global_request_reply(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssh*, align 8
  %8 = alloca %struct.global_confirm*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.ssh* %2, %struct.ssh** %7, align 8
  %9 = call %struct.global_confirm* @TAILQ_FIRST(i32* @global_confirms)
  store %struct.global_confirm* %9, %struct.global_confirm** %8, align 8
  %10 = icmp eq %struct.global_confirm* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

12:                                               ; preds = %3
  %13 = load %struct.global_confirm*, %struct.global_confirm** %8, align 8
  %14 = getelementptr inbounds %struct.global_confirm, %struct.global_confirm* %13, i32 0, i32 2
  %15 = load i32 (%struct.ssh*, i32, i32, i32)*, i32 (%struct.ssh*, i32, i32, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.ssh*, i32, i32, i32)* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.global_confirm*, %struct.global_confirm** %8, align 8
  %19 = getelementptr inbounds %struct.global_confirm, %struct.global_confirm* %18, i32 0, i32 2
  %20 = load i32 (%struct.ssh*, i32, i32, i32)*, i32 (%struct.ssh*, i32, i32, i32)** %19, align 8
  %21 = load %struct.ssh*, %struct.ssh** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.global_confirm*, %struct.global_confirm** %8, align 8
  %25 = getelementptr inbounds %struct.global_confirm, %struct.global_confirm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %20(%struct.ssh* %21, i32 %22, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %17, %12
  %29 = load %struct.global_confirm*, %struct.global_confirm** %8, align 8
  %30 = getelementptr inbounds %struct.global_confirm, %struct.global_confirm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.global_confirm*, %struct.global_confirm** %8, align 8
  %36 = load i32, i32* @entry, align 4
  %37 = call i32 @TAILQ_REMOVE(i32* @global_confirms, %struct.global_confirm* %35, i32 %36)
  %38 = load %struct.global_confirm*, %struct.global_confirm** %8, align 8
  %39 = call i32 @explicit_bzero(%struct.global_confirm* %38, i32 24)
  %40 = load %struct.global_confirm*, %struct.global_confirm** %8, align 8
  %41 = call i32 @free(%struct.global_confirm* %40)
  br label %42

42:                                               ; preds = %34, %28
  %43 = call i32 @packet_set_alive_timeouts(i32 0)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %11
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.global_confirm* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.global_confirm*, i32) #1

declare dso_local i32 @explicit_bzero(%struct.global_confirm*, i32) #1

declare dso_local i32 @free(%struct.global_confirm*) #1

declare dso_local i32 @packet_set_alive_timeouts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
