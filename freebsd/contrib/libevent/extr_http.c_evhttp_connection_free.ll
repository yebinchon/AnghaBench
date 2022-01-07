; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_connection_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_connection_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, %struct.evhttp_connection*, %struct.evhttp_connection*, i32*, i32, i32, %struct.evhttp*, i32, i32, i32 (%struct.evhttp_connection*, i32)* }
%struct.evhttp = type { i32 }
%struct.evhttp_request = type { i32 }

@next = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
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
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %11 = call i64 @evhttp_connected(%struct.evhttp_connection* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %15 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %14, i32 0, i32 9
  %16 = load i32 (%struct.evhttp_connection*, i32)*, i32 (%struct.evhttp_connection*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.evhttp_connection*, i32)* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %20 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %19, i32 0, i32 9
  %21 = load i32 (%struct.evhttp_connection*, i32)*, i32 (%struct.evhttp_connection*, i32)** %20, align 8
  %22 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %24 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %21(%struct.evhttp_connection* %22, i32 %25)
  br label %27

27:                                               ; preds = %18, %13, %9
  br label %28

28:                                               ; preds = %27, %1
  br label %29

29:                                               ; preds = %34, %28
  %30 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %31 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %30, i32 0, i32 7
  %32 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %31)
  store %struct.evhttp_request* %32, %struct.evhttp_request** %3, align 8
  %33 = icmp ne %struct.evhttp_request* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %36 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %37 = call i32 @evhttp_request_free_(%struct.evhttp_connection* %35, %struct.evhttp_request* %36)
  br label %29

38:                                               ; preds = %29
  %39 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %40 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %39, i32 0, i32 6
  %41 = load %struct.evhttp*, %struct.evhttp** %40, align 8
  %42 = icmp ne %struct.evhttp* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %45 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %44, i32 0, i32 6
  %46 = load %struct.evhttp*, %struct.evhttp** %45, align 8
  store %struct.evhttp* %46, %struct.evhttp** %4, align 8
  %47 = load %struct.evhttp*, %struct.evhttp** %4, align 8
  %48 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %47, i32 0, i32 0
  %49 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %50 = load i32, i32* @next, align 4
  %51 = call i32 @TAILQ_REMOVE(i32* %48, %struct.evhttp_connection* %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %38
  %53 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %54 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %53, i32 0, i32 5
  %55 = call i64 @event_initialized(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %59 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %58, i32 0, i32 5
  %60 = call i32 @event_del(i32* %59)
  %61 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %62 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %61, i32 0, i32 5
  %63 = call i32 @event_debug_unassign(i32* %62)
  br label %64

64:                                               ; preds = %57, %52
  %65 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %66 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %71 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @bufferevent_free(i32* %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %76 = call i32 @get_deferred_queue(%struct.evhttp_connection* %75)
  %77 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %78 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %77, i32 0, i32 4
  %79 = call i32 @event_deferred_cb_cancel_(i32 %76, i32* %78)
  %80 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %81 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %86 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @bufferevent_getfd(i32* %87)
  %89 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %90 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %84, %74
  %92 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %93 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, -1
  br i1 %95, label %96, label %122

96:                                               ; preds = %91
  %97 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %98 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @EV_READ, align 4
  %101 = load i32, i32* @EV_WRITE, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @bufferevent_disable(i32* %99, i32 %102)
  %104 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %105 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @EVUTIL_SHUT_WR, align 4
  %108 = call i32 @shutdown(i32 %106, i32 %107)
  %109 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %110 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @bufferevent_get_options_(i32* %111)
  %113 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %96
  %117 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %118 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @evutil_closesocket(i32 %119)
  br label %121

121:                                              ; preds = %116, %96
  br label %122

122:                                              ; preds = %121, %91
  %123 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %124 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %123, i32 0, i32 2
  %125 = load %struct.evhttp_connection*, %struct.evhttp_connection** %124, align 8
  %126 = icmp ne %struct.evhttp_connection* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %129 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %128, i32 0, i32 2
  %130 = load %struct.evhttp_connection*, %struct.evhttp_connection** %129, align 8
  %131 = call i32 @mm_free(%struct.evhttp_connection* %130)
  br label %132

132:                                              ; preds = %127, %122
  %133 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %134 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %133, i32 0, i32 1
  %135 = load %struct.evhttp_connection*, %struct.evhttp_connection** %134, align 8
  %136 = icmp ne %struct.evhttp_connection* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %139 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %138, i32 0, i32 1
  %140 = load %struct.evhttp_connection*, %struct.evhttp_connection** %139, align 8
  %141 = call i32 @mm_free(%struct.evhttp_connection* %140)
  br label %142

142:                                              ; preds = %137, %132
  %143 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %144 = call i32 @mm_free(%struct.evhttp_connection* %143)
  ret void
}

declare dso_local i64 @evhttp_connected(%struct.evhttp_connection*) #1

declare dso_local %struct.evhttp_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @evhttp_request_free_(%struct.evhttp_connection*, %struct.evhttp_request*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evhttp_connection*, i32) #1

declare dso_local i64 @event_initialized(i32*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_debug_unassign(i32*) #1

declare dso_local i32 @bufferevent_free(i32*) #1

declare dso_local i32 @event_deferred_cb_cancel_(i32, i32*) #1

declare dso_local i32 @get_deferred_queue(%struct.evhttp_connection*) #1

declare dso_local i32 @bufferevent_getfd(i32*) #1

declare dso_local i32 @bufferevent_disable(i32*, i32) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @bufferevent_get_options_(i32*) #1

declare dso_local i32 @evutil_closesocket(i32) #1

declare dso_local i32 @mm_free(%struct.evhttp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
