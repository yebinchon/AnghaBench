; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_connection_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_connection_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, %struct.evhttp_connection*, %struct.evhttp_connection*, %struct.evhttp_connection*, i32*, i32, i32, %struct.evhttp*, i32, i32, i32 (%struct.evhttp_request*, i32)* }
%struct.evhttp = type { i32 }
%struct.evhttp_request = type { i32, %struct.evhttp_request*, %struct.evhttp_request*, %struct.evhttp_request*, i32*, i32, i32, %struct.evhttp*, i32, i32, {}* }

@next = common dso_local global i32 0, align 4
@EVUTIL_SHUT_WR = common dso_local global i32 0, align 4
@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_connection_free(%struct.evhttp_connection* %0) #0 {
  %2 = alloca %struct.evhttp_connection*, align 8
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca %struct.evhttp*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %2, align 8
  %5 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %6 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %11 = bitcast %struct.evhttp_connection* %10 to %struct.evhttp_request*
  %12 = call i64 @evhttp_connected(%struct.evhttp_request* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %16 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %15, i32 0, i32 10
  %17 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.evhttp_request*, i32)* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %21 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %20, i32 0, i32 10
  %22 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %21, align 8
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %24 = bitcast %struct.evhttp_connection* %23 to %struct.evhttp_request*
  %25 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %26 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %22(%struct.evhttp_request* %24, i32 %27)
  br label %29

29:                                               ; preds = %19, %14, %9
  br label %30

30:                                               ; preds = %29, %1
  br label %31

31:                                               ; preds = %36, %30
  %32 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %33 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %32, i32 0, i32 8
  %34 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %33)
  store %struct.evhttp_request* %34, %struct.evhttp_request** %3, align 8
  %35 = icmp ne %struct.evhttp_request* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %38 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %37, i32 0, i32 8
  %39 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %40 = load i32, i32* @next, align 4
  %41 = call i32 @TAILQ_REMOVE(i32* %38, %struct.evhttp_request* %39, i32 %40)
  %42 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %43 = call i32 @evhttp_request_free(%struct.evhttp_request* %42)
  br label %31

44:                                               ; preds = %31
  %45 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %46 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %45, i32 0, i32 7
  %47 = load %struct.evhttp*, %struct.evhttp** %46, align 8
  %48 = icmp ne %struct.evhttp* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %51 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %50, i32 0, i32 7
  %52 = load %struct.evhttp*, %struct.evhttp** %51, align 8
  store %struct.evhttp* %52, %struct.evhttp** %4, align 8
  %53 = load %struct.evhttp*, %struct.evhttp** %4, align 8
  %54 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %53, i32 0, i32 0
  %55 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %56 = bitcast %struct.evhttp_connection* %55 to %struct.evhttp_request*
  %57 = load i32, i32* @next, align 4
  %58 = call i32 @TAILQ_REMOVE(i32* %54, %struct.evhttp_request* %56, i32 %57)
  br label %59

59:                                               ; preds = %49, %44
  %60 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %61 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %60, i32 0, i32 6
  %62 = call i64 @event_initialized(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %66 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %65, i32 0, i32 6
  %67 = call i32 @event_del(i32* %66)
  %68 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %69 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %68, i32 0, i32 6
  %70 = call i32 @event_debug_unassign(i32* %69)
  br label %71

71:                                               ; preds = %64, %59
  %72 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %73 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %78 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @bufferevent_free(i32* %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %83 = bitcast %struct.evhttp_connection* %82 to %struct.evhttp_request*
  %84 = call i32 @get_deferred_queue(%struct.evhttp_request* %83)
  %85 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %86 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %85, i32 0, i32 5
  %87 = call i32 @event_deferred_cb_cancel_(i32 %84, i32* %86)
  %88 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %89 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %111

92:                                               ; preds = %81
  %93 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %94 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @EVUTIL_SHUT_WR, align 4
  %97 = call i32 @shutdown(i32 %95, i32 %96)
  %98 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %99 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @bufferevent_get_options_(i32* %100)
  %102 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %92
  %106 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %107 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @evutil_closesocket(i32 %108)
  br label %110

110:                                              ; preds = %105, %92
  br label %111

111:                                              ; preds = %110, %81
  %112 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %113 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %112, i32 0, i32 3
  %114 = load %struct.evhttp_connection*, %struct.evhttp_connection** %113, align 8
  %115 = icmp ne %struct.evhttp_connection* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %118 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %117, i32 0, i32 3
  %119 = load %struct.evhttp_connection*, %struct.evhttp_connection** %118, align 8
  %120 = bitcast %struct.evhttp_connection* %119 to %struct.evhttp_request*
  %121 = call i32 @mm_free(%struct.evhttp_request* %120)
  br label %122

122:                                              ; preds = %116, %111
  %123 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %124 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %123, i32 0, i32 2
  %125 = load %struct.evhttp_connection*, %struct.evhttp_connection** %124, align 8
  %126 = icmp ne %struct.evhttp_connection* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %129 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %128, i32 0, i32 2
  %130 = load %struct.evhttp_connection*, %struct.evhttp_connection** %129, align 8
  %131 = bitcast %struct.evhttp_connection* %130 to %struct.evhttp_request*
  %132 = call i32 @mm_free(%struct.evhttp_request* %131)
  br label %133

133:                                              ; preds = %127, %122
  %134 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %135 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %134, i32 0, i32 1
  %136 = load %struct.evhttp_connection*, %struct.evhttp_connection** %135, align 8
  %137 = icmp ne %struct.evhttp_connection* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %140 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %139, i32 0, i32 1
  %141 = load %struct.evhttp_connection*, %struct.evhttp_connection** %140, align 8
  %142 = bitcast %struct.evhttp_connection* %141 to %struct.evhttp_request*
  %143 = call i32 @mm_free(%struct.evhttp_request* %142)
  br label %144

144:                                              ; preds = %138, %133
  %145 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %146 = bitcast %struct.evhttp_connection* %145 to %struct.evhttp_request*
  %147 = call i32 @mm_free(%struct.evhttp_request* %146)
  ret void
}

declare dso_local i64 @evhttp_connected(%struct.evhttp_request*) #1

declare dso_local %struct.evhttp_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evhttp_request*, i32) #1

declare dso_local i32 @evhttp_request_free(%struct.evhttp_request*) #1

declare dso_local i64 @event_initialized(i32*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_debug_unassign(i32*) #1

declare dso_local i32 @bufferevent_free(i32*) #1

declare dso_local i32 @event_deferred_cb_cancel_(i32, i32*) #1

declare dso_local i32 @get_deferred_queue(%struct.evhttp_request*) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @bufferevent_get_options_(i32*) #1

declare dso_local i32 @evutil_closesocket(i32) #1

declare dso_local i32 @mm_free(%struct.evhttp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
