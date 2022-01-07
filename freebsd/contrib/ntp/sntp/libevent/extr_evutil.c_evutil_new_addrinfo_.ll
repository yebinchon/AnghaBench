; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_new_addrinfo_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_new_addrinfo_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64, i64, i32, i32, i32, i32, %struct.sockaddr*, %struct.sockaddr* }
%struct.evutil_addrinfo = type { i64, i64, i32, i32, i32, i32, %struct.evutil_addrinfo*, %struct.evutil_addrinfo* }

@SOCK_STREAM = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@EVUTIL_AI_LIBEVENT_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.sockaddr* %0, i32 %1, %struct.evutil_addrinfo* %2) #0 {
  %4 = alloca %struct.evutil_addrinfo*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evutil_addrinfo*, align 8
  %8 = alloca %struct.evutil_addrinfo*, align 8
  %9 = alloca %struct.evutil_addrinfo*, align 8
  %10 = alloca %struct.evutil_addrinfo*, align 8
  %11 = alloca %struct.evutil_addrinfo, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.evutil_addrinfo* %2, %struct.evutil_addrinfo** %7, align 8
  %12 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %7, align 8
  %13 = bitcast %struct.evutil_addrinfo* %12 to %struct.sockaddr*
  %14 = call i32 @EVUTIL_ASSERT(%struct.sockaddr* %13)
  %15 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %7, align 8
  %16 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %3
  %20 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %7, align 8
  %21 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %19
  %25 = bitcast %struct.evutil_addrinfo* %11 to %struct.sockaddr*
  %26 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %7, align 8
  %27 = bitcast %struct.evutil_addrinfo* %26 to %struct.sockaddr*
  %28 = call i32 @memcpy(%struct.sockaddr* %25, %struct.sockaddr* %27, i32 48)
  %29 = load i64, i64* @SOCK_STREAM, align 8
  %30 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %11, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load i64, i64* @IPPROTO_TCP, align 8
  %32 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %11, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.sockaddr* %33, i32 %34, %struct.evutil_addrinfo* %11)
  store %struct.evutil_addrinfo* %35, %struct.evutil_addrinfo** %9, align 8
  %36 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %37 = icmp ne %struct.evutil_addrinfo* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %4, align 8
  br label %105

39:                                               ; preds = %24
  %40 = load i64, i64* @SOCK_DGRAM, align 8
  %41 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %11, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load i64, i64* @IPPROTO_UDP, align 8
  %43 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %11, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.sockaddr* %44, i32 %45, %struct.evutil_addrinfo* %11)
  store %struct.evutil_addrinfo* %46, %struct.evutil_addrinfo** %10, align 8
  %47 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %10, align 8
  %48 = icmp ne %struct.evutil_addrinfo* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %39
  %50 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %51 = bitcast %struct.evutil_addrinfo* %50 to %struct.sockaddr*
  %52 = call i32 @evutil_freeaddrinfo(%struct.sockaddr* %51)
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %4, align 8
  br label %105

53:                                               ; preds = %39
  %54 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %10, align 8
  %55 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %56 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %55, i32 0, i32 7
  store %struct.evutil_addrinfo* %54, %struct.evutil_addrinfo** %56, align 8
  %57 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  store %struct.evutil_addrinfo* %57, %struct.evutil_addrinfo** %4, align 8
  br label %105

58:                                               ; preds = %19, %3
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 48, %60
  %62 = trunc i64 %61 to i32
  %63 = call %struct.sockaddr* @mm_calloc(i32 1, i32 %62)
  %64 = bitcast %struct.sockaddr* %63 to %struct.evutil_addrinfo*
  store %struct.evutil_addrinfo* %64, %struct.evutil_addrinfo** %8, align 8
  %65 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %66 = icmp ne %struct.evutil_addrinfo* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %4, align 8
  br label %105

68:                                               ; preds = %58
  %69 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %70 = bitcast %struct.evutil_addrinfo* %69 to i8*
  %71 = getelementptr inbounds i8, i8* %70, i64 48
  %72 = bitcast i8* %71 to %struct.sockaddr*
  %73 = bitcast %struct.sockaddr* %72 to %struct.evutil_addrinfo*
  %74 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %75 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %74, i32 0, i32 6
  store %struct.evutil_addrinfo* %73, %struct.evutil_addrinfo** %75, align 8
  %76 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %77 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %76, i32 0, i32 6
  %78 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %77, align 8
  %79 = bitcast %struct.evutil_addrinfo* %78 to %struct.sockaddr*
  %80 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @memcpy(%struct.sockaddr* %79, %struct.sockaddr* %80, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %85 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %87 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %90 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @EVUTIL_AI_LIBEVENT_ALLOCATED, align 4
  %92 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %93 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %7, align 8
  %95 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %98 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %7, align 8
  %100 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %103 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  store %struct.evutil_addrinfo* %104, %struct.evutil_addrinfo** %4, align 8
  br label %105

105:                                              ; preds = %68, %67, %53, %49, %38
  %106 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %4, align 8
  ret %struct.evutil_addrinfo* %106
}

declare dso_local i32 @EVUTIL_ASSERT(%struct.sockaddr*) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @evutil_freeaddrinfo(%struct.sockaddr*) #1

declare dso_local %struct.sockaddr* @mm_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
