; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_getaddrinfo_infer_protocols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_getaddrinfo_infer_protocols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_addrinfo = type { i64, i64 }

@SOCK_DGRAM = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evutil_addrinfo*)* @evutil_getaddrinfo_infer_protocols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evutil_getaddrinfo_infer_protocols(%struct.evutil_addrinfo* %0) #0 {
  %2 = alloca %struct.evutil_addrinfo*, align 8
  store %struct.evutil_addrinfo* %0, %struct.evutil_addrinfo** %2, align 8
  %3 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %4 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  %8 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %9 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %7
  %13 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %14 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SOCK_DGRAM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i64, i64* @IPPROTO_UDP, align 8
  %20 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %21 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %33

22:                                               ; preds = %12
  %23 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %24 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SOCK_STREAM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i64, i64* @IPPROTO_TCP, align 8
  %30 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %31 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %22
  br label %33

33:                                               ; preds = %32, %18
  br label %34

34:                                               ; preds = %33, %7, %1
  %35 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %36 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %34
  %40 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %41 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %46 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IPPROTO_UDP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i64, i64* @SOCK_DGRAM, align 8
  %52 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %53 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %65

54:                                               ; preds = %44
  %55 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %56 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IPPROTO_TCP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i64, i64* @SOCK_STREAM, align 8
  %62 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %63 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %54
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %39, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
