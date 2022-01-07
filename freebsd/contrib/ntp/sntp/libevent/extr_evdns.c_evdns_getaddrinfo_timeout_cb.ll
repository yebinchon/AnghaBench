; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_getaddrinfo_timeout_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_getaddrinfo_timeout_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_getaddrinfo_request = type { i32, i32 (i32, i32*, i32)*, i32, i32*, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@EVUTIL_EAI_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @evdns_getaddrinfo_timeout_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evdns_getaddrinfo_timeout_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.evdns_getaddrinfo_request*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.evdns_getaddrinfo_request*
  store %struct.evdns_getaddrinfo_request* %12, %struct.evdns_getaddrinfo_request** %9, align 8
  %13 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %14 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  %19 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %20 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @evdns_cancel_request(i32* null, i64 %22)
  store i32 1, i32* %7, align 4
  %24 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %25 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %24, i32 0, i32 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = call i32 @EVDNS_LOCK(%struct.TYPE_7__* %26)
  %28 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %29 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %28, i32 0, i32 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %35 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %34, i32 0, i32 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = call i32 @EVDNS_UNLOCK(%struct.TYPE_7__* %36)
  br label %38

38:                                               ; preds = %18, %3
  %39 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %40 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %38
  %45 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %46 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @evdns_cancel_request(i32* null, i64 %48)
  store i32 1, i32* %8, align 4
  %50 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %51 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %50, i32 0, i32 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = call i32 @EVDNS_LOCK(%struct.TYPE_7__* %52)
  %54 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %55 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %54, i32 0, i32 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %61 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %60, i32 0, i32 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = call i32 @EVDNS_UNLOCK(%struct.TYPE_7__* %62)
  br label %64

64:                                               ; preds = %44, %38
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i1 [ true, %64 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @EVUTIL_ASSERT(i32 %73)
  %75 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %76 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %71
  %80 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %81 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %82 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @add_cname_to_reply(%struct.evdns_getaddrinfo_request* %80, i32* %83)
  %85 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %86 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %85, i32 0, i32 1
  %87 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %86, align 8
  %88 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %89 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %92 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 %87(i32 0, i32* %90, i32 %93)
  %95 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %96 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %95, i32 0, i32 3
  store i32* null, i32** %96, align 8
  br label %114

97:                                               ; preds = %71
  %98 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %99 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* @EVUTIL_EAI_AGAIN, align 4
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %103, %97
  %106 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %107 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %106, i32 0, i32 1
  %108 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %111 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 %108(i32 %109, i32* null, i32 %112)
  br label %114

114:                                              ; preds = %105, %79
  %115 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %116 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %115, i32 0, i32 1
  store i32 (i32, i32*, i32)* null, i32 (i32, i32*, i32)** %116, align 8
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %9, align 8
  %124 = call i32 @free_getaddrinfo_request(%struct.evdns_getaddrinfo_request* %123)
  br label %125

125:                                              ; preds = %122, %119, %114
  ret void
}

declare dso_local i32 @evdns_cancel_request(i32*, i64) #1

declare dso_local i32 @EVDNS_LOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @add_cname_to_reply(%struct.evdns_getaddrinfo_request*, i32*) #1

declare dso_local i32 @free_getaddrinfo_request(%struct.evdns_getaddrinfo_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
