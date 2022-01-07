; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_stop_listening.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_stop_listening.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @channel_stop_listening(%struct.ssh* %0) #0 {
  %2 = alloca %struct.ssh*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.ssh* %0, %struct.ssh** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %38, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.ssh*, %struct.ssh** %2, align 8
  %8 = getelementptr inbounds %struct.ssh, %struct.ssh* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %6, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %5
  %14 = load %struct.ssh*, %struct.ssh** %2, align 8
  %15 = getelementptr inbounds %struct.ssh, %struct.ssh* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 %19
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %4, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %13
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %36 [
    i32 133, label %28
    i32 132, label %28
    i32 131, label %28
    i32 128, label %28
    i32 129, label %28
    i32 130, label %28
  ]

28:                                               ; preds = %24, %24, %24, %24, %24, %24
  %29 = load %struct.ssh*, %struct.ssh** %2, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = call i32 @channel_close_fd(%struct.ssh* %29, i32* %31)
  %33 = load %struct.ssh*, %struct.ssh** %2, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = call i32 @channel_free(%struct.ssh* %33, %struct.TYPE_5__* %34)
  br label %36

36:                                               ; preds = %24, %28
  br label %37

37:                                               ; preds = %36, %13
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %5

41:                                               ; preds = %5
  ret void
}

declare dso_local i32 @channel_close_fd(%struct.ssh*, i32*) #1

declare dso_local i32 @channel_free(%struct.ssh*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
