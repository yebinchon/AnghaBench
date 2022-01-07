; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_connection_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_connection_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, i32, i32 }
%struct.evhttp_request = type { i32, i32, i32 (%struct.evhttp_request*, i32)*, i32, i32, i32* }

@EVHTTP_CON_OUTGOING = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@EVCON_IDLE = common dso_local global i32 0, align 4
@EVHTTP_CON_AUTOFREE = common dso_local global i32 0, align 4
@EVCON_WRITING = common dso_local global i32 0, align 4
@EVHTTP_USER_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*)* @evhttp_connection_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_connection_done(%struct.evhttp_connection* %0) #0 {
  %2 = alloca %struct.evhttp_connection*, align 8
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %2, align 8
  %7 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %8 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %7, i32 0, i32 1
  %9 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %8)
  store %struct.evhttp_request* %9, %struct.evhttp_request** %3, align 8
  %10 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %11 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @EVHTTP_CON_OUTGOING, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %86

17:                                               ; preds = %1
  %18 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %19 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %18, i32 0, i32 1
  %20 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %21 = load i32, i32* @next, align 4
  %22 = call i32 @TAILQ_REMOVE(i32* %19, %struct.evhttp_request* %20, i32 %21)
  %23 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %24 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %23, i32 0, i32 5
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* @EVCON_IDLE, align 4
  %26 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %27 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %29 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %32 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @evhttp_is_connection_close(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %17
  %37 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %38 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %41 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @evhttp_is_connection_close(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %36, %17
  %46 = phi i1 [ true, %17 ], [ %44, %36 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %52 = call i32 @evhttp_connection_reset_(%struct.evhttp_connection* %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %55 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %54, i32 0, i32 1
  %56 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %55)
  %57 = icmp ne %struct.evhttp_request* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %60 = call i32 @evhttp_connected(%struct.evhttp_connection* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %64 = call i32 @evhttp_connection_connect_(%struct.evhttp_connection* %63)
  br label %68

65:                                               ; preds = %58
  %66 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %67 = call i32 @evhttp_request_dispatch(%struct.evhttp_connection* %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %85

69:                                               ; preds = %53
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %74 = call i32 @evhttp_connection_start_detectclose(%struct.evhttp_connection* %73)
  br label %84

75:                                               ; preds = %69
  %76 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %77 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @EVHTTP_CON_AUTOFREE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 1, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %75
  br label %84

84:                                               ; preds = %83, %72
  br label %85

85:                                               ; preds = %84, %68
  br label %90

86:                                               ; preds = %1
  %87 = load i32, i32* @EVCON_WRITING, align 4
  %88 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %89 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %85
  %91 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %92 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %91, i32 0, i32 2
  %93 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %92, align 8
  %94 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %95 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %96 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 %93(%struct.evhttp_request* %94, i32 %97)
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %90
  %102 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %103 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @EVHTTP_USER_OWNED, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %110 = call i32 @evhttp_request_free(%struct.evhttp_request* %109)
  br label %111

111:                                              ; preds = %108, %101, %90
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %116 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %115, i32 0, i32 1
  %117 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %116)
  %118 = icmp eq %struct.evhttp_request* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %121 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %120)
  br label %122

122:                                              ; preds = %119, %114, %111
  ret void
}

declare dso_local %struct.evhttp_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evhttp_request*, i32) #1

declare dso_local i64 @evhttp_is_connection_close(i32, i32) #1

declare dso_local i32 @evhttp_connection_reset_(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_connected(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_connection_connect_(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_request_dispatch(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_connection_start_detectclose(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_request_free(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
