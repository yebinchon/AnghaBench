; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_connection_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_connection_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, i32, i32 }
%struct.evhttp_request = type { i32, i32 (%struct.evhttp_request*, i32)*, i32* }

@EVHTTP_CON_OUTGOING = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@EVCON_IDLE = common dso_local global i32 0, align 4
@EVHTTP_CON_AUTOFREE = common dso_local global i32 0, align 4
@EVCON_WRITING = common dso_local global i32 0, align 4
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
  br i1 %16, label %17, label %68

17:                                               ; preds = %1
  %18 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %19 = call i32 @evhttp_is_request_connection_close(%struct.evhttp_request* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %21 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %20, i32 0, i32 1
  %22 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %23 = load i32, i32* @next, align 4
  %24 = call i32 @TAILQ_REMOVE(i32* %21, %struct.evhttp_request* %22, i32 %23)
  %25 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %26 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* @EVCON_IDLE, align 4
  %28 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %29 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %17
  %33 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %34 = call i32 @evhttp_connection_reset_(%struct.evhttp_connection* %33)
  br label %35

35:                                               ; preds = %32, %17
  %36 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %37 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %36, i32 0, i32 1
  %38 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %37)
  %39 = icmp ne %struct.evhttp_request* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %42 = call i32 @evhttp_connected(%struct.evhttp_connection* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %46 = call i32 @evhttp_connection_connect_(%struct.evhttp_connection* %45)
  br label %50

47:                                               ; preds = %40
  %48 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %49 = call i32 @evhttp_request_dispatch(%struct.evhttp_connection* %48)
  br label %50

50:                                               ; preds = %47, %44
  br label %67

51:                                               ; preds = %35
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %56 = call i32 @evhttp_connection_start_detectclose(%struct.evhttp_connection* %55)
  br label %66

57:                                               ; preds = %51
  %58 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %59 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @EVHTTP_CON_AUTOFREE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %57
  br label %66

66:                                               ; preds = %65, %54
  br label %67

67:                                               ; preds = %66, %50
  br label %72

68:                                               ; preds = %1
  %69 = load i32, i32* @EVCON_WRITING, align 4
  %70 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %71 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %67
  %73 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %74 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %73, i32 0, i32 1
  %75 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %74, align 8
  %76 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %77 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %78 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 %75(%struct.evhttp_request* %76, i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %85 = call i32 @evhttp_request_free_auto(%struct.evhttp_request* %84)
  br label %86

86:                                               ; preds = %83, %72
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %91 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %90, i32 0, i32 1
  %92 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %91)
  %93 = icmp eq %struct.evhttp_request* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %96 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %95)
  br label %97

97:                                               ; preds = %94, %89, %86
  ret void
}

declare dso_local %struct.evhttp_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @evhttp_is_request_connection_close(%struct.evhttp_request*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evhttp_request*, i32) #1

declare dso_local i32 @evhttp_connection_reset_(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_connected(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_connection_connect_(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_request_dispatch(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_connection_start_detectclose(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_request_free_auto(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
