; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evrpc.c_evrpc_reply_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evrpc.c_evrpc_reply_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.evrpc_request_wrapper = type { i32, i32, %struct.evhttp_request*, i32, %struct.evrpc_pool* }
%struct.evrpc_pool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @evrpc_reply_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evrpc_reply_done(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evrpc_request_wrapper*, align 8
  %6 = alloca %struct.evrpc_pool*, align 8
  %7 = alloca i32, align 4
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.evrpc_request_wrapper*
  store %struct.evrpc_request_wrapper* %9, %struct.evrpc_request_wrapper** %5, align 8
  %10 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %11 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %10, i32 0, i32 4
  %12 = load %struct.evrpc_pool*, %struct.evrpc_pool** %11, align 8
  store %struct.evrpc_pool* %12, %struct.evrpc_pool** %6, align 8
  store i32 130, i32* %7, align 4
  %13 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %14 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %13, i32 0, i32 3
  %15 = call i32 @event_del(i32* %14)
  %16 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %17 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %18 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %17, i32 0, i32 2
  store %struct.evhttp_request* %16, %struct.evhttp_request** %18, align 8
  %19 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %20 = icmp eq %struct.evhttp_request* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %23 = call i32 @evrpc_reply_done_closure(%struct.evrpc_request_wrapper* %22, i32 130)
  br label %74

24:                                               ; preds = %2
  %25 = load %struct.evrpc_pool*, %struct.evrpc_pool** %6, align 8
  %26 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %25, i32 0, i32 0
  %27 = call i32* @TAILQ_FIRST(i32* %26)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %70

29:                                               ; preds = %24
  %30 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %31 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %30, i32 0, i32 1
  %32 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %33 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @evrpc_hook_associate_meta_(i32* %31, i32 %34)
  %36 = load %struct.evrpc_pool*, %struct.evrpc_pool** %6, align 8
  %37 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %36, i32 0, i32 0
  %38 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %39 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %40 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %41 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @evrpc_process_hooks(i32* %37, %struct.evrpc_request_wrapper* %38, %struct.evhttp_request* %39, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  switch i32 %44, label %56 [
    i32 128, label %45
    i32 130, label %45
    i32 129, label %46
  ]

45:                                               ; preds = %29, %29
  br label %69

46:                                               ; preds = %29
  %47 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %48 = icmp ne %struct.evhttp_request* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %51 = call i32 @evhttp_request_own(%struct.evhttp_request* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.evrpc_pool*, %struct.evrpc_pool** %6, align 8
  %54 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %55 = call i32 @evrpc_pause_request(%struct.evrpc_pool* %53, %struct.evrpc_request_wrapper* %54, i32 (%struct.evrpc_request_wrapper*, i32)* @evrpc_reply_done_closure)
  br label %74

56:                                               ; preds = %29
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 128
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 130
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 129
  br label %65

65:                                               ; preds = %62, %59, %56
  %66 = phi i1 [ true, %59 ], [ true, %56 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @EVUTIL_ASSERT(i32 %67)
  br label %69

69:                                               ; preds = %65, %45
  br label %70

70:                                               ; preds = %69, %24
  %71 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @evrpc_reply_done_closure(%struct.evrpc_request_wrapper* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %52, %21
  ret void
}

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @evrpc_reply_done_closure(%struct.evrpc_request_wrapper*, i32) #1

declare dso_local i32* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @evrpc_hook_associate_meta_(i32*, i32) #1

declare dso_local i32 @evrpc_process_hooks(i32*, %struct.evrpc_request_wrapper*, %struct.evhttp_request*, i32) #1

declare dso_local i32 @evhttp_request_own(%struct.evhttp_request*) #1

declare dso_local i32 @evrpc_pause_request(%struct.evrpc_pool*, %struct.evrpc_request_wrapper*, i32 (%struct.evrpc_request_wrapper*, i32)*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
