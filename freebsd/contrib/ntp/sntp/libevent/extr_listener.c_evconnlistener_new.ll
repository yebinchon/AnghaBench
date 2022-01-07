; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_listener.c_evconnlistener_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_listener.c_evconnlistener_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evconnlistener = type { i32, i32, i32, i32, i8*, i32, i32* }
%struct.event_base = type { i32 }
%struct.evconnlistener_event = type { %struct.evconnlistener, i32 }

@evconnlistener_event_ops = common dso_local global i32 0, align 4
@LEV_OPT_LEAVE_SOCKETS_BLOCKING = common dso_local global i32 0, align 4
@EVUTIL_SOCK_NONBLOCK = common dso_local global i32 0, align 4
@LEV_OPT_CLOSE_ON_EXEC = common dso_local global i32 0, align 4
@EVUTIL_SOCK_CLOEXEC = common dso_local global i32 0, align 4
@LEV_OPT_THREADSAFE = common dso_local global i32 0, align 4
@EVTHREAD_LOCKTYPE_RECURSIVE = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@listener_read_cb = common dso_local global i32 0, align 4
@LEV_OPT_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evconnlistener* @evconnlistener_new(%struct.event_base* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.evconnlistener*, align 8
  %8 = alloca %struct.event_base*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.evconnlistener_event*, align 8
  store %struct.event_base* %0, %struct.event_base** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i64 @listen(i32 %18, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store %struct.evconnlistener* null, %struct.evconnlistener** %7, align 8
  br label %118

23:                                               ; preds = %17
  br label %34

24:                                               ; preds = %6
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %13, align 4
  %29 = call i64 @listen(i32 %28, i32 128)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store %struct.evconnlistener* null, %struct.evconnlistener** %7, align 8
  br label %118

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %24
  br label %34

34:                                               ; preds = %33, %23
  %35 = call %struct.evconnlistener_event* @mm_calloc(i32 1, i32 48)
  store %struct.evconnlistener_event* %35, %struct.evconnlistener_event** %14, align 8
  %36 = load %struct.evconnlistener_event*, %struct.evconnlistener_event** %14, align 8
  %37 = icmp ne %struct.evconnlistener_event* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store %struct.evconnlistener* null, %struct.evconnlistener** %7, align 8
  br label %118

39:                                               ; preds = %34
  %40 = load %struct.evconnlistener_event*, %struct.evconnlistener_event** %14, align 8
  %41 = getelementptr inbounds %struct.evconnlistener_event, %struct.evconnlistener_event* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %41, i32 0, i32 6
  store i32* @evconnlistener_event_ops, i32** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.evconnlistener_event*, %struct.evconnlistener_event** %14, align 8
  %45 = getelementptr inbounds %struct.evconnlistener_event, %struct.evconnlistener_event* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %45, i32 0, i32 5
  store i32 %43, i32* %46, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load %struct.evconnlistener_event*, %struct.evconnlistener_event** %14, align 8
  %49 = getelementptr inbounds %struct.evconnlistener_event, %struct.evconnlistener_event* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %49, i32 0, i32 4
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.evconnlistener_event*, %struct.evconnlistener_event** %14, align 8
  %53 = getelementptr inbounds %struct.evconnlistener_event, %struct.evconnlistener_event* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.evconnlistener_event*, %struct.evconnlistener_event** %14, align 8
  %56 = getelementptr inbounds %struct.evconnlistener_event, %struct.evconnlistener_event* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load %struct.evconnlistener_event*, %struct.evconnlistener_event** %14, align 8
  %59 = getelementptr inbounds %struct.evconnlistener_event, %struct.evconnlistener_event* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %59, i32 0, i32 3
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @LEV_OPT_LEAVE_SOCKETS_BLOCKING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %39
  %66 = load i32, i32* @EVUTIL_SOCK_NONBLOCK, align 4
  %67 = load %struct.evconnlistener_event*, %struct.evconnlistener_event** %14, align 8
  %68 = getelementptr inbounds %struct.evconnlistener_event, %struct.evconnlistener_event* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %39
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @LEV_OPT_CLOSE_ON_EXEC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* @EVUTIL_SOCK_CLOEXEC, align 4
  %79 = load %struct.evconnlistener_event*, %struct.evconnlistener_event** %14, align 8
  %80 = getelementptr inbounds %struct.evconnlistener_event, %struct.evconnlistener_event* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %78
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %77, %72
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @LEV_OPT_THREADSAFE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.evconnlistener_event*, %struct.evconnlistener_event** %14, align 8
  %91 = getelementptr inbounds %struct.evconnlistener_event, %struct.evconnlistener_event* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  %95 = call i32 @EVTHREAD_ALLOC_LOCK(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %89, %84
  %97 = load %struct.evconnlistener_event*, %struct.evconnlistener_event** %14, align 8
  %98 = getelementptr inbounds %struct.evconnlistener_event, %struct.evconnlistener_event* %97, i32 0, i32 1
  %99 = load %struct.event_base*, %struct.event_base** %8, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @EV_READ, align 4
  %102 = load i32, i32* @EV_PERSIST, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @listener_read_cb, align 4
  %105 = load %struct.evconnlistener_event*, %struct.evconnlistener_event** %14, align 8
  %106 = call i32 @event_assign(i32* %98, %struct.event_base* %99, i32 %100, i32 %103, i32 %104, %struct.evconnlistener_event* %105)
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @LEV_OPT_DISABLED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %96
  %112 = load %struct.evconnlistener_event*, %struct.evconnlistener_event** %14, align 8
  %113 = getelementptr inbounds %struct.evconnlistener_event, %struct.evconnlistener_event* %112, i32 0, i32 0
  %114 = call i32 @evconnlistener_enable(%struct.evconnlistener* %113)
  br label %115

115:                                              ; preds = %111, %96
  %116 = load %struct.evconnlistener_event*, %struct.evconnlistener_event** %14, align 8
  %117 = getelementptr inbounds %struct.evconnlistener_event, %struct.evconnlistener_event* %116, i32 0, i32 0
  store %struct.evconnlistener* %117, %struct.evconnlistener** %7, align 8
  br label %118

118:                                              ; preds = %115, %38, %31, %22
  %119 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  ret %struct.evconnlistener* %119
}

declare dso_local i64 @listen(i32, i32) #1

declare dso_local %struct.evconnlistener_event* @mm_calloc(i32, i32) #1

declare dso_local i32 @EVTHREAD_ALLOC_LOCK(i32, i32) #1

declare dso_local i32 @event_assign(i32*, %struct.event_base*, i32, i32, i32, %struct.evconnlistener_event*) #1

declare dso_local i32 @evconnlistener_enable(%struct.evconnlistener*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
