; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_base_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_base_new.c"
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
  br label %112

13:                                               ; preds = %2
  %14 = load i32, i32* @evdns_getaddrinfo, align 4
  %15 = call i32 @evutil_set_evdns_getaddrinfo_fn_(i32 %14)
  %16 = call %struct.evdns_base* @mm_malloc(i32 144)
  store %struct.evdns_base* %16, %struct.evdns_base** %6, align 8
  %17 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %18 = icmp eq %struct.evdns_base* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store %struct.evdns_base* null, %struct.evdns_base** %3, align 8
  br label %112

20:                                               ; preds = %13
  %21 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %22 = call i32 @memset(%struct.evdns_base* %21, i32 0, i32 144)
  %23 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %24 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %23, i32 0, i32 17
  store i32* null, i32** %24, align 8
  %25 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %26 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %25, i32 0, i32 16
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  %29 = call i32 @EVTHREAD_ALLOC_LOCK(i32 %27, i32 %28)
  %30 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %31 = call i32 @EVDNS_LOCK(%struct.evdns_base* %30)
  %32 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %33 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %32, i32 0, i32 15
  store i32* null, i32** %33, align 8
  %34 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %35 = call i32 @evdns_base_set_max_requests_inflight(%struct.evdns_base* %34, i32 64)
  %36 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %37 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %36, i32 0, i32 14
  store i32* null, i32** %37, align 8
  %38 = load %struct.event_base*, %struct.event_base** %4, align 8
  %39 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %40 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %39, i32 0, i32 13
  store %struct.event_base* %38, %struct.event_base** %40, align 8
  %41 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %42 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %41, i32 0, i32 10
  store i64 0, i64* %42, align 8
  %43 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %44 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %43, i32 0, i32 11
  store i64 0, i64* %44, align 8
  %45 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %46 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %45, i32 0, i32 12
  store i64 0, i64* %46, align 8
  %47 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %48 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 5, i32* %49, align 8
  %50 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %51 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %50, i32 0, i32 9
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %54 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %56 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %55, i32 0, i32 1
  store i32 3, i32* %56, align 4
  %57 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %58 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %57, i32 0, i32 2
  store i32 3, i32* %58, align 8
  %59 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %60 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %59, i32 0, i32 8
  store i32* null, i32** %60, align 8
  %61 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %62 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %61, i32 0, i32 3
  store i32 1, i32* %62, align 4
  %63 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %64 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 3, i32* %65, align 8
  %66 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %67 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %70 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 10, i32* %71, align 8
  %72 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %73 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %76 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %75, i32 0, i32 5
  %77 = call i32 @TAILQ_INIT(i32* %76)
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, -32770
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %20
  %82 = load i32, i32* @EVDNS_BASE_INITIALIZE_NAMESERVERS, align 4
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %84 = call i32 @log(i32 %83, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %20
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @EVDNS_BASE_INITIALIZE_NAMESERVERS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %92 = load i32, i32* @DNS_OPTIONS_ALL, align 4
  %93 = call i32 @evdns_base_resolv_conf_parse(%struct.evdns_base* %91, i32 %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %98 = call i32 @evdns_base_free_and_unlock(%struct.evdns_base* %97, i32 0)
  store %struct.evdns_base* null, %struct.evdns_base** %3, align 8
  br label %112

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %85
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @EVDNS_BASE_DISABLE_WHEN_INACTIVE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %107 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %106, i32 0, i32 4
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %100
  %109 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %110 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %109)
  %111 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  store %struct.evdns_base* %111, %struct.evdns_base** %3, align 8
  br label %112

112:                                              ; preds = %108, %96, %19, %10
  %113 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  ret %struct.evdns_base* %113
}

declare dso_local i64 @evutil_secure_rng_init(...) #1

declare dso_local i32 @log(i32, i8*) #1

declare dso_local i32 @evutil_set_evdns_getaddrinfo_fn_(i32) #1

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
