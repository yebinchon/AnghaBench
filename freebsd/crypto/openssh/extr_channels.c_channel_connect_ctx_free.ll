; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_connect_ctx_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_connect_ctx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_connect = type { %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@AF_UNIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel_connect*)* @channel_connect_ctx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_connect_ctx_free(%struct.channel_connect* %0) #0 {
  %2 = alloca %struct.channel_connect*, align 8
  store %struct.channel_connect* %0, %struct.channel_connect** %2, align 8
  %3 = load %struct.channel_connect*, %struct.channel_connect** %2, align 8
  %4 = getelementptr inbounds %struct.channel_connect, %struct.channel_connect* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = call i32 @free(%struct.TYPE_3__* %5)
  %7 = load %struct.channel_connect*, %struct.channel_connect** %2, align 8
  %8 = getelementptr inbounds %struct.channel_connect, %struct.channel_connect* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.channel_connect*, %struct.channel_connect** %2, align 8
  %13 = getelementptr inbounds %struct.channel_connect, %struct.channel_connect* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AF_UNIX, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.channel_connect*, %struct.channel_connect** %2, align 8
  %21 = getelementptr inbounds %struct.channel_connect, %struct.channel_connect* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = call i32 @free(%struct.TYPE_3__* %22)
  br label %29

24:                                               ; preds = %11
  %25 = load %struct.channel_connect*, %struct.channel_connect** %2, align 8
  %26 = getelementptr inbounds %struct.channel_connect, %struct.channel_connect* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i32 @freeaddrinfo(%struct.TYPE_3__* %27)
  br label %29

29:                                               ; preds = %24, %19
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.channel_connect*, %struct.channel_connect** %2, align 8
  %32 = call i32 @memset(%struct.channel_connect* %31, i32 0, i32 16)
  ret void
}

declare dso_local i32 @free(%struct.TYPE_3__*) #1

declare dso_local i32 @freeaddrinfo(%struct.TYPE_3__*) #1

declare dso_local i32 @memset(%struct.channel_connect*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
