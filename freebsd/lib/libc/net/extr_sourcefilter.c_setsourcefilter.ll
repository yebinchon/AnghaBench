; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sourcefilter.c_setsourcefilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sourcefilter.c_setsourcefilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.__msfilterreq = type { %struct.sockaddr_storage*, i32, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MCAST_INCLUDE = common dso_local global i64 0, align 8
@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_MSFILTER = common dso_local global i32 0, align 4
@IP_MSFILTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setsourcefilter(i32 %0, i64 %1, %struct.sockaddr* %2, i32 %3, i64 %4, i64 %5, %struct.sockaddr_storage* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sockaddr_storage*, align 8
  %16 = alloca %struct.__msfilterreq, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.sockaddr_storage* %6, %struct.sockaddr_storage** %15, align 8
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* @MCAST_INCLUDE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %7
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @MCAST_EXCLUDE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %38

29:                                               ; preds = %23, %7
  %30 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %31 = bitcast %struct.sockaddr* %30 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %17, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %36 [
  ]

36:                                               ; preds = %29
  %37 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %37, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %38

38:                                               ; preds = %36, %27
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
