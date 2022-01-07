; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_interfaceiter.c_get_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_interfaceiter.c_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_15__* }
%struct.sockaddr_in = type { %struct.TYPE_15__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_14__*, %struct.sockaddr*, i8*)* @get_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_addr(i32 %0, %struct.TYPE_14__* %1, %struct.sockaddr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = call i32 @UNUSED(i8* %10)
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = call i32 @memset(%struct.TYPE_14__* %12, i32 0, i32 24)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %37 [
    i32 129, label %18
    i32 128, label %27
  ]

18:                                               ; preds = %4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %23 = bitcast %struct.sockaddr* %22 to i8*
  %24 = bitcast i8* %23 to %struct.sockaddr_in*
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 0
  %26 = call i32 @memcpy(%struct.TYPE_13__* %21, %struct.TYPE_15__* %25, i32 4)
  br label %39

27:                                               ; preds = %4
  %28 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %29 = bitcast %struct.sockaddr* %28 to i8*
  %30 = bitcast i8* %29 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %30, %struct.sockaddr_in6** %9, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %34, i32 0, i32 0
  %36 = call i32 @memcpy(%struct.TYPE_13__* %33, %struct.TYPE_15__* %35, i32 4)
  br label %39

37:                                               ; preds = %4
  %38 = call i32 @INSIST(i32 0)
  br label %39

39:                                               ; preds = %37, %27, %18
  ret void
}

declare dso_local i32 @UNUSED(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @INSIST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
