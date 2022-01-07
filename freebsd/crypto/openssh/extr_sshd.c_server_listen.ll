; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_server_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_server_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32 }

@options = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@num_listen_socks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cannot bind any address.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @server_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_listen() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %27, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 0), align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 1), align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i64 %8
  %10 = call i32 @listen_on_addrs(%struct.TYPE_6__* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 1), align 8
  %12 = load i64, i64* %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @freeaddrinfo(i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 1), align 8
  %18 = load i64, i64* %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i32 @free(%struct.TYPE_6__* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 1), align 8
  %24 = load i64, i64* %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = call i32 @memset(%struct.TYPE_6__* %25, i32 0, i32 16)
  br label %27

27:                                               ; preds = %6
  %28 = load i64, i64* %1, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %1, align 8
  br label %2

30:                                               ; preds = %2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 1), align 8
  %32 = call i32 @free(%struct.TYPE_6__* %31)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 0), align 8
  %33 = load i32, i32* @num_listen_socks, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  ret void
}

declare dso_local i32 @listen_on_addrs(%struct.TYPE_6__*) #1

declare dso_local i32 @freeaddrinfo(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
