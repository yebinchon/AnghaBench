; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evrpc.c_evrpc_pool_add_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evrpc.c_evrpc_pool_add_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_pool = type { i32, i32, i32*, i32 }
%struct.evhttp_connection = type { i32, i32* }
%struct.evrpc_request_wrapper = type { i32 }

@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evrpc_pool_add_connection(%struct.evrpc_pool* %0, %struct.evhttp_connection* %1) #0 {
  %3 = alloca %struct.evrpc_pool*, align 8
  %4 = alloca %struct.evhttp_connection*, align 8
  %5 = alloca %struct.evrpc_request_wrapper*, align 8
  store %struct.evrpc_pool* %0, %struct.evrpc_pool** %3, align 8
  store %struct.evhttp_connection* %1, %struct.evhttp_connection** %4, align 8
  %6 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %7 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @EVUTIL_ASSERT(i32 %10)
  %12 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %13 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %12, i32 0, i32 3
  %14 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %15 = load i32, i32* @next, align 4
  %16 = call i32 @TAILQ_INSERT_TAIL(i32* %13, %struct.evhttp_connection* %14, i32 %15)
  %17 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %18 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %23 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %24 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @evhttp_connection_set_base(%struct.evhttp_connection* %22, i32* %25)
  br label %27

27:                                               ; preds = %21, %2
  %28 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %29 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %28, i32 0, i32 0
  %30 = call i32 @evutil_timerisset(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %34 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %35 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @evhttp_connection_set_timeout(%struct.evhttp_connection* %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %40 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %39, i32 0, i32 0
  %41 = call %struct.evrpc_request_wrapper* @TAILQ_FIRST(i32* %40)
  %42 = icmp ne %struct.evrpc_request_wrapper* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %45 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %44, i32 0, i32 0
  %46 = call %struct.evrpc_request_wrapper* @TAILQ_FIRST(i32* %45)
  store %struct.evrpc_request_wrapper* %46, %struct.evrpc_request_wrapper** %5, align 8
  %47 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %48 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %47, i32 0, i32 0
  %49 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %50 = load i32, i32* @next, align 4
  %51 = call i32 @TAILQ_REMOVE(i32* %48, %struct.evrpc_request_wrapper* %49, i32 %50)
  %52 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %53 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %54 = call i32 @evrpc_schedule_request(%struct.evhttp_connection* %52, %struct.evrpc_request_wrapper* %53)
  br label %55

55:                                               ; preds = %43, %38
  ret void
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.evhttp_connection*, i32) #1

declare dso_local i32 @evhttp_connection_set_base(%struct.evhttp_connection*, i32*) #1

declare dso_local i32 @evutil_timerisset(i32*) #1

declare dso_local i32 @evhttp_connection_set_timeout(%struct.evhttp_connection*, i32) #1

declare dso_local %struct.evrpc_request_wrapper* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evrpc_request_wrapper*, i32) #1

declare dso_local i32 @evrpc_schedule_request(%struct.evhttp_connection*, %struct.evrpc_request_wrapper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
