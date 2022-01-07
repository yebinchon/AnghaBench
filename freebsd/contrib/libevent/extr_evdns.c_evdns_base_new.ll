; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_base_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_base_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32*, %struct.TYPE_4__, i64, i64, i64, %struct.event_base*, i32*, i32*, i32, i32* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.event_base = type { i32 }

@EVDNS_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unable to seed random number generator; DNS can't run.\00", align 1
@evdns_getaddrinfo = common dso_local global i32 0, align 4
@evdns_getaddrinfo_cancel = common dso_local global i32 0, align 4
@EVTHREAD_LOCKTYPE_RECURSIVE = common dso_local global i32 0, align 4
@EVDNS_BASE_INITIALIZE_NAMESERVERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [100 x i8] c"Unrecognized flag passed to evdns_base_new(). Assuming you meant EVDNS_BASE_INITIALIZE_NAMESERVERS.\00", align 1
@DNS_OPTIONS_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"/etc/resolv.conf\00", align 1
@EVDNS_BASE_DISABLE_WHEN_INACTIVE = common dso_local global i32 0, align 4
@EVDNS_BASE_ALL_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evdns_base* @evdns_base_new(%struct.event_base* %0, i32 %1) #0 {
  %3 = alloca %struct.evdns_base*, align 8
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.evdns_base*, align 8
  %7 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i64 (...) @evutil_secure_rng_init()
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %12 = call i32 @log(i32 %11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store %struct.evdns_base* null, %struct.evdns_base** %3, align 8
  br label %114

13:                                               ; preds = %2
  %14 = load i32, i32* @evdns_getaddrinfo, align 4
  %15 = call i32 @evutil_set_evdns_getaddrinfo_fn_(i32 %14)
  %16 = load i32, i32* @evdns_getaddrinfo_cancel, align 4
  %17 = call i32 @evutil_set_evdns_getaddrinfo_cancel_fn_(i32 %16)
  %18 = call %struct.evdns_base* @mm_malloc(i32 144)
  store %struct.evdns_base* %18, %struct.evdns_base** %6, align 8
  %19 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %20 = icmp eq %struct.evdns_base* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store %struct.evdns_base* null, %struct.evdns_base** %3, align 8
  br label %114

22:                                               ; preds = %13
  %23 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %24 = call i32 @memset(%struct.evdns_base* %23, i32 0, i32 144)
  %25 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %26 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %25, i32 0, i32 17
  store i32* null, i32** %26, align 8
  %27 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %28 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %27, i32 0, i32 16
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  %31 = call i32 @EVTHREAD_ALLOC_LOCK(i32 %29, i32 %30)
  %32 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %33 = call i32 @EVDNS_LOCK(%struct.evdns_base* %32)
  %34 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %35 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %34, i32 0, i32 15
  store i32* null, i32** %35, align 8
  %36 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %37 = call i32 @evdns_base_set_max_requests_inflight(%struct.evdns_base* %36, i32 64)
  %38 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %39 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %38, i32 0, i32 14
  store i32* null, i32** %39, align 8
  %40 = load %struct.event_base*, %struct.event_base** %4, align 8
  %41 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %42 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %41, i32 0, i32 13
  store %struct.event_base* %40, %struct.event_base** %42, align 8
  %43 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %44 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %43, i32 0, i32 10
  store i64 0, i64* %44, align 8
  %45 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %46 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %45, i32 0, i32 11
  store i64 0, i64* %46, align 8
  %47 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %48 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %47, i32 0, i32 12
  store i64 0, i64* %48, align 8
  %49 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %50 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 5, i32* %51, align 8
  %52 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %53 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %52, i32 0, i32 9
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %56 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %58 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %57, i32 0, i32 1
  store i32 3, i32* %58, align 4
  %59 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %60 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %59, i32 0, i32 2
  store i32 3, i32* %60, align 8
  %61 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %62 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %61, i32 0, i32 8
  store i32* null, i32** %62, align 8
  %63 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %64 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %63, i32 0, i32 3
  store i32 1, i32* %64, align 4
  %65 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %66 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 3, i32* %67, align 8
  %68 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %69 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %72 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 10, i32* %73, align 8
  %74 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %75 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %78 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %77, i32 0, i32 5
  %79 = call i32 @TAILQ_INIT(i32* %78)
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, -32770
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %22
  %84 = load i32, i32* @EVDNS_BASE_INITIALIZE_NAMESERVERS, align 4
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %86 = call i32 @log(i32 %85, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %22
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @EVDNS_BASE_INITIALIZE_NAMESERVERS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %94 = load i32, i32* @DNS_OPTIONS_ALL, align 4
  %95 = call i32 @evdns_base_resolv_conf_parse(%struct.evdns_base* %93, i32 %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %100 = call i32 @evdns_base_free_and_unlock(%struct.evdns_base* %99, i32 0)
  store %struct.evdns_base* null, %struct.evdns_base** %3, align 8
  br label %114

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %87
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @EVDNS_BASE_DISABLE_WHEN_INACTIVE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %109 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %108, i32 0, i32 4
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %102
  %111 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %112 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %111)
  %113 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  store %struct.evdns_base* %113, %struct.evdns_base** %3, align 8
  br label %114

114:                                              ; preds = %110, %98, %21, %10
  %115 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  ret %struct.evdns_base* %115
}

declare dso_local i64 @evutil_secure_rng_init(...) #1

declare dso_local i32 @log(i32, i8*) #1

declare dso_local i32 @evutil_set_evdns_getaddrinfo_fn_(i32) #1

declare dso_local i32 @evutil_set_evdns_getaddrinfo_cancel_fn_(i32) #1

declare dso_local %struct.evdns_base* @mm_malloc(i32) #1

declare dso_local i32 @memset(%struct.evdns_base*, i32, i32) #1

declare dso_local i32 @EVTHREAD_ALLOC_LOCK(i32, i32) #1

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_base*) #1

declare dso_local i32 @evdns_base_set_max_requests_inflight(%struct.evdns_base*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @evdns_base_resolv_conf_parse(%struct.evdns_base*, i32, i8*) #1

declare dso_local i32 @evdns_base_free_and_unlock(%struct.evdns_base*, i32) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
