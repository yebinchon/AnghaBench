; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_socktoa.c_sockaddr_masktoprefixlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_socktoa.c_sockaddr_masktoprefixlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sockaddr_masktoprefixlen(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ZERO(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @min(i32 4, i32 4)
  %14 = call i32 @memcpy(i32* %11, i32* %12, i32 %13)
  %15 = call i32 @isc_netaddr_fromsockaddr(i32* %3, %struct.TYPE_4__* %4)
  %16 = call i64 @isc_netaddr_masktoprefixlen(i32* %3, i64* %5)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* @ISC_R_SUCCESS, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  %22 = trunc i64 %21 to i32
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32 [ %22, %20 ], [ -1, %23 ]
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local i32 @ZERO(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @isc_netaddr_fromsockaddr(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @isc_netaddr_masktoprefixlen(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
