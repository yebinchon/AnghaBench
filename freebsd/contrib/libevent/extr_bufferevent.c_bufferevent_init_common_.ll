; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_init_common_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_init_common_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_private = type { i32, i32, i32, %struct.bufferevent }
%struct.bufferevent = type { i32*, i32*, i32, %struct.bufferevent_ops*, i32, i32, %struct.event_base* }
%struct.event_base = type { i32 }
%struct.bufferevent_ops = type { i32 }

@EV_WRITE = common dso_local global i32 0, align 4
@BEV_OPT_THREADSAFE = common dso_local global i32 0, align 4
@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4
@BEV_OPT_UNLOCK_CALLBACKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"UNLOCK_CALLBACKS requires DEFER_CALLBACKS\00", align 1
@bufferevent_run_deferred_callbacks_unlocked = common dso_local global i32 0, align 4
@bufferevent_run_deferred_callbacks_locked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_init_common_(%struct.bufferevent_private* %0, %struct.event_base* %1, %struct.bufferevent_ops* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufferevent_private*, align 8
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca %struct.bufferevent_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent_private* %0, %struct.bufferevent_private** %6, align 8
  store %struct.event_base* %1, %struct.event_base** %7, align 8
  store %struct.bufferevent_ops* %2, %struct.bufferevent_ops** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %12 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %11, i32 0, i32 3
  store %struct.bufferevent* %12, %struct.bufferevent** %10, align 8
  %13 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %14 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %4
  %18 = call i8* (...) @evbuffer_new()
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %21 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = icmp eq i32* %19, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %131

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %4
  %26 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %27 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = call i8* (...) @evbuffer_new()
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %34 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = icmp eq i32* %32, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %38 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @evbuffer_free(i32* %39)
  store i32 -1, i32* %5, align 4
  br label %131

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %44 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.event_base*, %struct.event_base** %7, align 8
  %46 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %47 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %46, i32 0, i32 6
  store %struct.event_base* %45, %struct.event_base** %47, align 8
  %48 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %49 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %48, i32 0, i32 5
  %50 = call i32 @evutil_timerclear(i32* %49)
  %51 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %52 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %51, i32 0, i32 4
  %53 = call i32 @evutil_timerclear(i32* %52)
  %54 = load %struct.bufferevent_ops*, %struct.bufferevent_ops** %8, align 8
  %55 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %56 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %55, i32 0, i32 3
  store %struct.bufferevent_ops* %54, %struct.bufferevent_ops** %56, align 8
  %57 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %58 = call i32 @bufferevent_ratelim_init_(%struct.bufferevent_private* %57)
  %59 = load i32, i32* @EV_WRITE, align 4
  %60 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %61 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @BEV_OPT_THREADSAFE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %42
  %67 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %68 = call i64 @bufferevent_enable_locking_(%struct.bufferevent* %67, i32* null)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %72 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @evbuffer_free(i32* %73)
  %75 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %76 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @evbuffer_free(i32* %77)
  %79 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %80 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  %81 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %82 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  store i32 -1, i32* %5, align 4
  br label %131

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83, %42
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %87 = load i32, i32* @BEV_OPT_UNLOCK_CALLBACKS, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = load i32, i32* @BEV_OPT_UNLOCK_CALLBACKS, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = call i32 @event_warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %131

94:                                               ; preds = %84
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @BEV_OPT_UNLOCK_CALLBACKS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %101 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %100, i32 0, i32 2
  %102 = load %struct.event_base*, %struct.event_base** %7, align 8
  %103 = call i32 @event_base_get_npriorities(%struct.event_base* %102)
  %104 = sdiv i32 %103, 2
  %105 = load i32, i32* @bufferevent_run_deferred_callbacks_unlocked, align 4
  %106 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %107 = call i32 @event_deferred_cb_init_(i32* %101, i32 %104, i32 %105, %struct.bufferevent_private* %106)
  br label %117

108:                                              ; preds = %94
  %109 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %110 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %109, i32 0, i32 2
  %111 = load %struct.event_base*, %struct.event_base** %7, align 8
  %112 = call i32 @event_base_get_npriorities(%struct.event_base* %111)
  %113 = sdiv i32 %112, 2
  %114 = load i32, i32* @bufferevent_run_deferred_callbacks_locked, align 4
  %115 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %116 = call i32 @event_deferred_cb_init_(i32* %110, i32 %113, i32 %114, %struct.bufferevent_private* %115)
  br label %117

117:                                              ; preds = %108, %99
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %120 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %122 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %125 = call i32 @evbuffer_set_parent_(i32* %123, %struct.bufferevent* %124)
  %126 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %127 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %130 = call i32 @evbuffer_set_parent_(i32* %128, %struct.bufferevent* %129)
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %117, %92, %70, %36, %23
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i8* @evbuffer_new(...) #1

declare dso_local i32 @evbuffer_free(i32*) #1

declare dso_local i32 @evutil_timerclear(i32*) #1

declare dso_local i32 @bufferevent_ratelim_init_(%struct.bufferevent_private*) #1

declare dso_local i64 @bufferevent_enable_locking_(%struct.bufferevent*, i32*) #1

declare dso_local i32 @event_warnx(i8*) #1

declare dso_local i32 @event_deferred_cb_init_(i32*, i32, i32, %struct.bufferevent_private*) #1

declare dso_local i32 @event_base_get_npriorities(%struct.event_base*) #1

declare dso_local i32 @evbuffer_set_parent_(i32*, %struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
