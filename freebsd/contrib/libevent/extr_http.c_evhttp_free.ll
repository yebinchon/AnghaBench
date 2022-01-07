; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { %struct.evhttp*, i32, %struct.evhttp*, i32, %struct.evhttp*, i32, i32, i32, i32 }
%struct.evhttp_cb = type { %struct.evhttp_cb*, i32, %struct.evhttp_cb*, i32, %struct.evhttp_cb*, i32, i32, i32, i32 }
%struct.evhttp_connection = type { i32 }
%struct.evhttp_bound_socket = type { %struct.evhttp_bound_socket*, i32, %struct.evhttp_bound_socket*, i32, %struct.evhttp_bound_socket*, i32, i32, i32, i32 }
%struct.evhttp_server_alias = type { %struct.evhttp_server_alias*, i32, %struct.evhttp_server_alias*, i32, %struct.evhttp_server_alias*, i32, i32, i32, i32 }

@next = common dso_local global i32 0, align 4
@next_vhost = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_free(%struct.evhttp* %0) #0 {
  %2 = alloca %struct.evhttp*, align 8
  %3 = alloca %struct.evhttp_cb*, align 8
  %4 = alloca %struct.evhttp_connection*, align 8
  %5 = alloca %struct.evhttp_bound_socket*, align 8
  %6 = alloca %struct.evhttp*, align 8
  %7 = alloca %struct.evhttp_server_alias*, align 8
  store %struct.evhttp* %0, %struct.evhttp** %2, align 8
  br label %8

8:                                                ; preds = %14, %1
  %9 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %10 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %9, i32 0, i32 8
  %11 = call i8* @TAILQ_FIRST(i32* %10)
  %12 = bitcast i8* %11 to %struct.evhttp_bound_socket*
  store %struct.evhttp_bound_socket* %12, %struct.evhttp_bound_socket** %5, align 8
  %13 = icmp ne %struct.evhttp_bound_socket* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %16 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %15, i32 0, i32 8
  %17 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %5, align 8
  %18 = bitcast %struct.evhttp_bound_socket* %17 to %struct.evhttp_server_alias*
  %19 = load i32, i32* @next, align 4
  %20 = call i32 @TAILQ_REMOVE(i32* %16, %struct.evhttp_server_alias* %18, i32 %19)
  %21 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %5, align 8
  %22 = getelementptr inbounds %struct.evhttp_bound_socket, %struct.evhttp_bound_socket* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @evconnlistener_free(i32 %23)
  %25 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %5, align 8
  %26 = bitcast %struct.evhttp_bound_socket* %25 to %struct.evhttp_server_alias*
  %27 = call i32 @mm_free(%struct.evhttp_server_alias* %26)
  br label %8

28:                                               ; preds = %8
  br label %29

29:                                               ; preds = %35, %28
  %30 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %31 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %30, i32 0, i32 6
  %32 = call i8* @TAILQ_FIRST(i32* %31)
  %33 = bitcast i8* %32 to %struct.evhttp_connection*
  store %struct.evhttp_connection* %33, %struct.evhttp_connection** %4, align 8
  %34 = icmp ne %struct.evhttp_connection* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %37 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %36)
  br label %29

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %45, %38
  %40 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %41 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %40, i32 0, i32 5
  %42 = call i8* @TAILQ_FIRST(i32* %41)
  %43 = bitcast i8* %42 to %struct.evhttp_cb*
  store %struct.evhttp_cb* %43, %struct.evhttp_cb** %3, align 8
  %44 = icmp ne %struct.evhttp_cb* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %47 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %46, i32 0, i32 5
  %48 = load %struct.evhttp_cb*, %struct.evhttp_cb** %3, align 8
  %49 = bitcast %struct.evhttp_cb* %48 to %struct.evhttp_server_alias*
  %50 = load i32, i32* @next, align 4
  %51 = call i32 @TAILQ_REMOVE(i32* %47, %struct.evhttp_server_alias* %49, i32 %50)
  %52 = load %struct.evhttp_cb*, %struct.evhttp_cb** %3, align 8
  %53 = getelementptr inbounds %struct.evhttp_cb, %struct.evhttp_cb* %52, i32 0, i32 4
  %54 = load %struct.evhttp_cb*, %struct.evhttp_cb** %53, align 8
  %55 = bitcast %struct.evhttp_cb* %54 to %struct.evhttp_server_alias*
  %56 = call i32 @mm_free(%struct.evhttp_server_alias* %55)
  %57 = load %struct.evhttp_cb*, %struct.evhttp_cb** %3, align 8
  %58 = bitcast %struct.evhttp_cb* %57 to %struct.evhttp_server_alias*
  %59 = call i32 @mm_free(%struct.evhttp_server_alias* %58)
  br label %39

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %67, %60
  %62 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %63 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %62, i32 0, i32 3
  %64 = call i8* @TAILQ_FIRST(i32* %63)
  %65 = bitcast i8* %64 to %struct.evhttp*
  store %struct.evhttp* %65, %struct.evhttp** %6, align 8
  %66 = icmp ne %struct.evhttp* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %69 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %68, i32 0, i32 3
  %70 = load %struct.evhttp*, %struct.evhttp** %6, align 8
  %71 = bitcast %struct.evhttp* %70 to %struct.evhttp_server_alias*
  %72 = load i32, i32* @next_vhost, align 4
  %73 = call i32 @TAILQ_REMOVE(i32* %69, %struct.evhttp_server_alias* %71, i32 %72)
  %74 = load %struct.evhttp*, %struct.evhttp** %6, align 8
  call void @evhttp_free(%struct.evhttp* %74)
  br label %61

75:                                               ; preds = %61
  %76 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %77 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %76, i32 0, i32 2
  %78 = load %struct.evhttp*, %struct.evhttp** %77, align 8
  %79 = icmp ne %struct.evhttp* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %82 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %81, i32 0, i32 2
  %83 = load %struct.evhttp*, %struct.evhttp** %82, align 8
  %84 = bitcast %struct.evhttp* %83 to %struct.evhttp_server_alias*
  %85 = call i32 @mm_free(%struct.evhttp_server_alias* %84)
  br label %86

86:                                               ; preds = %80, %75
  br label %87

87:                                               ; preds = %93, %86
  %88 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %89 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %88, i32 0, i32 1
  %90 = call i8* @TAILQ_FIRST(i32* %89)
  %91 = bitcast i8* %90 to %struct.evhttp_server_alias*
  store %struct.evhttp_server_alias* %91, %struct.evhttp_server_alias** %7, align 8
  %92 = icmp ne %struct.evhttp_server_alias* %91, null
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %95 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %94, i32 0, i32 1
  %96 = load %struct.evhttp_server_alias*, %struct.evhttp_server_alias** %7, align 8
  %97 = load i32, i32* @next, align 4
  %98 = call i32 @TAILQ_REMOVE(i32* %95, %struct.evhttp_server_alias* %96, i32 %97)
  %99 = load %struct.evhttp_server_alias*, %struct.evhttp_server_alias** %7, align 8
  %100 = getelementptr inbounds %struct.evhttp_server_alias, %struct.evhttp_server_alias* %99, i32 0, i32 0
  %101 = load %struct.evhttp_server_alias*, %struct.evhttp_server_alias** %100, align 8
  %102 = call i32 @mm_free(%struct.evhttp_server_alias* %101)
  %103 = load %struct.evhttp_server_alias*, %struct.evhttp_server_alias** %7, align 8
  %104 = call i32 @mm_free(%struct.evhttp_server_alias* %103)
  br label %87

105:                                              ; preds = %87
  %106 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %107 = bitcast %struct.evhttp* %106 to %struct.evhttp_server_alias*
  %108 = call i32 @mm_free(%struct.evhttp_server_alias* %107)
  ret void
}

declare dso_local i8* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evhttp_server_alias*, i32) #1

declare dso_local i32 @evconnlistener_free(i32) #1

declare dso_local i32 @mm_free(%struct.evhttp_server_alias*) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
