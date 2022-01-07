; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_request_rforward_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_request_rforward_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.Forward = type { i64, i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @channel_request_rforward_cancel(%struct.ssh* %0, %struct.Forward* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca %struct.Forward*, align 8
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store %struct.Forward* %1, %struct.Forward** %5, align 8
  %6 = load %struct.Forward*, %struct.Forward** %5, align 8
  %7 = getelementptr inbounds %struct.Forward, %struct.Forward* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.ssh*, %struct.ssh** %4, align 8
  %12 = load %struct.Forward*, %struct.Forward** %5, align 8
  %13 = getelementptr inbounds %struct.Forward, %struct.Forward* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @channel_request_rforward_cancel_streamlocal(%struct.ssh* %11, i32* %14)
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.ssh*, %struct.ssh** %4, align 8
  %18 = load %struct.Forward*, %struct.Forward** %5, align 8
  %19 = getelementptr inbounds %struct.Forward, %struct.Forward* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.Forward*, %struct.Forward** %5, align 8
  %22 = getelementptr inbounds %struct.Forward, %struct.Forward* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.Forward*, %struct.Forward** %5, align 8
  %27 = getelementptr inbounds %struct.Forward, %struct.Forward* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  br label %33

29:                                               ; preds = %16
  %30 = load %struct.Forward*, %struct.Forward** %5, align 8
  %31 = getelementptr inbounds %struct.Forward, %struct.Forward* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i64 [ %28, %25 ], [ %32, %29 ]
  %35 = call i32 @channel_request_rforward_cancel_tcpip(%struct.ssh* %17, i32 %20, i64 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %10
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @channel_request_rforward_cancel_streamlocal(%struct.ssh*, i32*) #1

declare dso_local i32 @channel_request_rforward_cancel_tcpip(%struct.ssh*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
