; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_add_server_port_with_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_add_server_port_with_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_server_port = type { i32, i32, i32, i32, %struct.event_base*, i32*, i8*, i32, i64, i64 }
%struct.event_base = type { i32 }

@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@server_port_ready_callback = common dso_local global i32 0, align 4
@EVTHREAD_LOCKTYPE_RECURSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evdns_server_port* @evdns_add_server_port_with_base(%struct.event_base* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.evdns_server_port*, align 8
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.evdns_server_port*, align 8
  store %struct.event_base* %0, %struct.event_base** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store %struct.evdns_server_port* null, %struct.evdns_server_port** %6, align 8
  br label %71

16:                                               ; preds = %5
  %17 = call %struct.evdns_server_port* @mm_malloc(i32 64)
  store %struct.evdns_server_port* %17, %struct.evdns_server_port** %12, align 8
  %18 = icmp ne %struct.evdns_server_port* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store %struct.evdns_server_port* null, %struct.evdns_server_port** %6, align 8
  br label %71

20:                                               ; preds = %16
  %21 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %22 = call i32 @memset(%struct.evdns_server_port* %21, i32 0, i32 64)
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %25 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %27 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %29 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %28, i32 0, i32 9
  store i64 0, i64* %29, align 8
  %30 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %31 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %30, i32 0, i32 8
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %34 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %37 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %39 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %38, i32 0, i32 5
  store i32* null, i32** %39, align 8
  %40 = load %struct.event_base*, %struct.event_base** %7, align 8
  %41 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %42 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %41, i32 0, i32 4
  store %struct.event_base* %40, %struct.event_base** %42, align 8
  %43 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %44 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %43, i32 0, i32 2
  %45 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %46 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %45, i32 0, i32 4
  %47 = load %struct.event_base*, %struct.event_base** %46, align 8
  %48 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %49 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @EV_READ, align 4
  %52 = load i32, i32* @EV_PERSIST, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @server_port_ready_callback, align 4
  %55 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %56 = call i32 @event_assign(i32* %44, %struct.event_base* %47, i32 %50, i32 %53, i32 %54, %struct.evdns_server_port* %55)
  %57 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %58 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %57, i32 0, i32 2
  %59 = call i64 @event_add(i32* %58, i32* null)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %20
  %62 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %63 = call i32 @mm_free(%struct.evdns_server_port* %62)
  store %struct.evdns_server_port* null, %struct.evdns_server_port** %6, align 8
  br label %71

64:                                               ; preds = %20
  %65 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  %66 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  %69 = call i32 @EVTHREAD_ALLOC_LOCK(i32 %67, i32 %68)
  %70 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  store %struct.evdns_server_port* %70, %struct.evdns_server_port** %6, align 8
  br label %71

71:                                               ; preds = %64, %61, %19, %15
  %72 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  ret %struct.evdns_server_port* %72
}

declare dso_local %struct.evdns_server_port* @mm_malloc(i32) #1

declare dso_local i32 @memset(%struct.evdns_server_port*, i32, i32) #1

declare dso_local i32 @event_assign(i32*, %struct.event_base*, i32, i32, i32, %struct.evdns_server_port*) #1

declare dso_local i64 @event_add(i32*, i32*) #1

declare dso_local i32 @mm_free(%struct.evdns_server_port*) #1

declare dso_local i32 @EVTHREAD_ALLOC_LOCK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
