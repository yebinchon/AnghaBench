; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_run_deferred_callbacks_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_run_deferred_callbacks_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_callback = type { i32 }
%struct.bufferevent_private = type { i32, i32, i64, i64, %struct.bufferevent }
%struct.bufferevent = type { i32, i32 (%struct.bufferevent*, i16, i32)*, i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)* }

@BEV_EVENT_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_callback*, i8*)* @bufferevent_run_deferred_callbacks_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_run_deferred_callbacks_locked(%struct.event_callback* %0, i8* %1) #0 {
  %3 = alloca %struct.event_callback*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bufferevent_private*, align 8
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.event_callback* %0, %struct.event_callback** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bufferevent_private*
  store %struct.bufferevent_private* %10, %struct.bufferevent_private** %5, align 8
  %11 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %12 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %11, i32 0, i32 4
  store %struct.bufferevent* %12, %struct.bufferevent** %6, align 8
  %13 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %14 = call i32 @BEV_LOCK(%struct.bufferevent* %13)
  %15 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %16 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BEV_EVENT_CONNECTED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %2
  %22 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %23 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %22, i32 0, i32 1
  %24 = load i32 (%struct.bufferevent*, i16, i32)*, i32 (%struct.bufferevent*, i16, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.bufferevent*, i16, i32)* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load i32, i32* @BEV_EVENT_CONNECTED, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %30 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %34 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %33, i32 0, i32 1
  %35 = load i32 (%struct.bufferevent*, i16, i32)*, i32 (%struct.bufferevent*, i16, i32)** %34, align 8
  %36 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %37 = load i32, i32* @BEV_EVENT_CONNECTED, align 4
  %38 = trunc i32 %37 to i16
  %39 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %40 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %35(%struct.bufferevent* %36, i16 signext %38, i32 %41)
  br label %43

43:                                               ; preds = %26, %21, %2
  %44 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %45 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %50 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %49, i32 0, i32 3
  %51 = load i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)** %50, align 8
  %52 = icmp ne i32 (%struct.bufferevent*, i32)* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %55 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %57 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %56, i32 0, i32 3
  %58 = load i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)** %57, align 8
  %59 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %60 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %61 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %58(%struct.bufferevent* %59, i32 %62)
  br label %64

64:                                               ; preds = %53, %48, %43
  %65 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %66 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %64
  %70 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %71 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %70, i32 0, i32 2
  %72 = load i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)** %71, align 8
  %73 = icmp ne i32 (%struct.bufferevent*, i32)* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %76 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %78 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %77, i32 0, i32 2
  %79 = load i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)** %78, align 8
  %80 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %81 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %82 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 %79(%struct.bufferevent* %80, i32 %83)
  br label %85

85:                                               ; preds = %74, %69, %64
  %86 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %87 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %118

90:                                               ; preds = %85
  %91 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %92 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %91, i32 0, i32 1
  %93 = load i32 (%struct.bufferevent*, i16, i32)*, i32 (%struct.bufferevent*, i16, i32)** %92, align 8
  %94 = icmp ne i32 (%struct.bufferevent*, i16, i32)* %93, null
  br i1 %94, label %95, label %118

95:                                               ; preds = %90
  %96 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %97 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = trunc i32 %98 to i16
  store i16 %99, i16* %7, align 2
  %100 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %101 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %8, align 4
  %103 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %104 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %106 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @EVUTIL_SET_SOCKET_ERROR(i32 %107)
  %109 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %110 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %109, i32 0, i32 1
  %111 = load i32 (%struct.bufferevent*, i16, i32)*, i32 (%struct.bufferevent*, i16, i32)** %110, align 8
  %112 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %113 = load i16, i16* %7, align 2
  %114 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %115 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 %111(%struct.bufferevent* %112, i16 signext %113, i32 %116)
  br label %118

118:                                              ; preds = %95, %90, %85
  %119 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %120 = call i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %119)
  ret void
}

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_SET_SOCKET_ERROR(i32) #1

declare dso_local i32 @bufferevent_decref_and_unlock_(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
