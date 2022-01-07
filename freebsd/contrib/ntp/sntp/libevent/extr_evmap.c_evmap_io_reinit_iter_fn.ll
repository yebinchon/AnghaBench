; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_evmap_io_reinit_iter_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_evmap_io_reinit_iter_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.eventop* }
%struct.eventop = type { i32 (%struct.event_base.0*, i32, i32, i16, i8*)*, i64 }
%struct.event_base.0 = type opaque
%struct.evmap_io = type { i32, i64, i64, i64 }
%struct.event = type { i16 }

@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@EV_CLOSED = common dso_local global i16 0, align 2
@EV_ET = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_base*, i32, %struct.evmap_io*, i8*)* @evmap_io_reinit_iter_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evmap_io_reinit_iter_fn(%struct.event_base* %0, i32 %1, %struct.evmap_io* %2, i8* %3) #0 {
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evmap_io*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.eventop*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i16, align 2
  %13 = alloca %struct.event*, align 8
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.evmap_io* %2, %struct.evmap_io** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.event_base*, %struct.event_base** %5, align 8
  %15 = getelementptr inbounds %struct.event_base, %struct.event_base* %14, i32 0, i32 0
  %16 = load %struct.eventop*, %struct.eventop** %15, align 8
  store %struct.eventop* %16, %struct.eventop** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %11, align 8
  store i16 0, i16* %12, align 2
  %19 = load %struct.evmap_io*, %struct.evmap_io** %7, align 8
  %20 = call i32 @EVUTIL_ASSERT(%struct.evmap_io* %19)
  %21 = load %struct.evmap_io*, %struct.evmap_io** %7, align 8
  %22 = bitcast %struct.evmap_io* %21 to i8*
  %23 = getelementptr inbounds i8, i8* %22, i64 32
  store i8* %23, i8** %10, align 8
  %24 = load %struct.evmap_io*, %struct.evmap_io** %7, align 8
  %25 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load i16, i16* @EV_READ, align 2
  %30 = sext i16 %29 to i32
  %31 = load i16, i16* %12, align 2
  %32 = sext i16 %31 to i32
  %33 = or i32 %32, %30
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %12, align 2
  br label %35

35:                                               ; preds = %28, %4
  %36 = load %struct.evmap_io*, %struct.evmap_io** %7, align 8
  %37 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i16, i16* @EV_WRITE, align 2
  %42 = sext i16 %41 to i32
  %43 = load i16, i16* %12, align 2
  %44 = sext i16 %43 to i32
  %45 = or i32 %44, %42
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %12, align 2
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.evmap_io*, %struct.evmap_io** %7, align 8
  %49 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i16, i16* @EV_CLOSED, align 2
  %54 = sext i16 %53 to i32
  %55 = load i16, i16* %12, align 2
  %56 = sext i16 %55 to i32
  %57 = or i32 %56, %54
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %12, align 2
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.eventop*, %struct.eventop** %9, align 8
  %61 = getelementptr inbounds %struct.eventop, %struct.eventop* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i8*, i8** %10, align 8
  %66 = load %struct.eventop*, %struct.eventop** %9, align 8
  %67 = getelementptr inbounds %struct.eventop, %struct.eventop* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @memset(i8* %65, i32 0, i64 %68)
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i16, i16* %12, align 2
  %72 = sext i16 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load %struct.evmap_io*, %struct.evmap_io** %7, align 8
  %76 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %75, i32 0, i32 0
  %77 = call %struct.event* @LIST_FIRST(i32* %76)
  store %struct.event* %77, %struct.event** %13, align 8
  %78 = icmp ne %struct.event* %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %74
  %80 = load %struct.event*, %struct.event** %13, align 8
  %81 = getelementptr inbounds %struct.event, %struct.event* %80, i32 0, i32 0
  %82 = load i16, i16* %81, align 2
  %83 = sext i16 %82 to i32
  %84 = load i16, i16* @EV_ET, align 2
  %85 = sext i16 %84 to i32
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load i16, i16* @EV_ET, align 2
  %90 = sext i16 %89 to i32
  %91 = load i16, i16* %12, align 2
  %92 = sext i16 %91 to i32
  %93 = or i32 %92, %90
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %12, align 2
  br label %95

95:                                               ; preds = %88, %79, %74, %70
  %96 = load %struct.eventop*, %struct.eventop** %9, align 8
  %97 = getelementptr inbounds %struct.eventop, %struct.eventop* %96, i32 0, i32 0
  %98 = load i32 (%struct.event_base.0*, i32, i32, i16, i8*)*, i32 (%struct.event_base.0*, i32, i32, i16, i8*)** %97, align 8
  %99 = load %struct.event_base*, %struct.event_base** %5, align 8
  %100 = bitcast %struct.event_base* %99 to %struct.event_base.0*
  %101 = load i32, i32* %6, align 4
  %102 = load i16, i16* %12, align 2
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 %98(%struct.event_base.0* %100, i32 %101, i32 0, i16 signext %102, i8* %103)
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i32*, i32** %11, align 8
  store i32 -1, i32* %107, align 4
  br label %108

108:                                              ; preds = %106, %95
  ret i32 0
}

declare dso_local i32 @EVUTIL_ASSERT(%struct.evmap_io*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local %struct.event* @LIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
