; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32, i64*, i64, %struct.event_base*, i32 }
%struct.event_base = type { i8*, %struct.eventop* }
%struct.eventop = type { i32 (i8*, %struct.event.0*)* }
%struct.event.0 = type opaque

@.str = private unnamed_addr constant [27 x i8] c"event_del: %p, callback %p\00", align 1
@EVLIST_ALL = common dso_local global i32 0, align 4
@EVLIST_TIMEOUT = common dso_local global i32 0, align 4
@EVLIST_ACTIVE = common dso_local global i32 0, align 4
@EVLIST_INSERTED = common dso_local global i32 0, align 4
@EVLIST_SIGNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_del(%struct.event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.event*, align 8
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca %struct.eventop*, align 8
  %6 = alloca i8*, align 8
  store %struct.event* %0, %struct.event** %3, align 8
  %7 = load %struct.event*, %struct.event** %3, align 8
  %8 = load %struct.event*, %struct.event** %3, align 8
  %9 = getelementptr inbounds %struct.event, %struct.event* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @event_debug(i8* %12)
  %14 = load %struct.event*, %struct.event** %3, align 8
  %15 = getelementptr inbounds %struct.event, %struct.event* %14, i32 0, i32 3
  %16 = load %struct.event_base*, %struct.event_base** %15, align 8
  %17 = icmp eq %struct.event_base* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %116

19:                                               ; preds = %1
  %20 = load %struct.event*, %struct.event** %3, align 8
  %21 = getelementptr inbounds %struct.event, %struct.event* %20, i32 0, i32 3
  %22 = load %struct.event_base*, %struct.event_base** %21, align 8
  store %struct.event_base* %22, %struct.event_base** %4, align 8
  %23 = load %struct.event_base*, %struct.event_base** %4, align 8
  %24 = getelementptr inbounds %struct.event_base, %struct.event_base* %23, i32 0, i32 1
  %25 = load %struct.eventop*, %struct.eventop** %24, align 8
  store %struct.eventop* %25, %struct.eventop** %5, align 8
  %26 = load %struct.event_base*, %struct.event_base** %4, align 8
  %27 = getelementptr inbounds %struct.event_base, %struct.event_base* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  %29 = load %struct.event*, %struct.event** %3, align 8
  %30 = getelementptr inbounds %struct.event, %struct.event* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EVLIST_ALL, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.event*, %struct.event** %3, align 8
  %40 = getelementptr inbounds %struct.event, %struct.event* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %19
  %44 = load %struct.event*, %struct.event** %3, align 8
  %45 = getelementptr inbounds %struct.event, %struct.event* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.event*, %struct.event** %3, align 8
  %50 = getelementptr inbounds %struct.event, %struct.event* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %43, %19
  %53 = load %struct.event*, %struct.event** %3, align 8
  %54 = getelementptr inbounds %struct.event, %struct.event* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @EVLIST_TIMEOUT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.event_base*, %struct.event_base** %4, align 8
  %61 = load %struct.event*, %struct.event** %3, align 8
  %62 = load i32, i32* @EVLIST_TIMEOUT, align 4
  %63 = call i32 @event_queue_remove(%struct.event_base* %60, %struct.event* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %52
  %65 = load %struct.event*, %struct.event** %3, align 8
  %66 = getelementptr inbounds %struct.event, %struct.event* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @EVLIST_ACTIVE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.event_base*, %struct.event_base** %4, align 8
  %73 = load %struct.event*, %struct.event** %3, align 8
  %74 = load i32, i32* @EVLIST_ACTIVE, align 4
  %75 = call i32 @event_queue_remove(%struct.event_base* %72, %struct.event* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %64
  %77 = load %struct.event*, %struct.event** %3, align 8
  %78 = getelementptr inbounds %struct.event, %struct.event* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @EVLIST_INSERTED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %76
  %84 = load %struct.event_base*, %struct.event_base** %4, align 8
  %85 = load %struct.event*, %struct.event** %3, align 8
  %86 = load i32, i32* @EVLIST_INSERTED, align 4
  %87 = call i32 @event_queue_remove(%struct.event_base* %84, %struct.event* %85, i32 %86)
  %88 = load %struct.eventop*, %struct.eventop** %5, align 8
  %89 = getelementptr inbounds %struct.eventop, %struct.eventop* %88, i32 0, i32 0
  %90 = load i32 (i8*, %struct.event.0*)*, i32 (i8*, %struct.event.0*)** %89, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load %struct.event*, %struct.event** %3, align 8
  %93 = bitcast %struct.event* %92 to %struct.event.0*
  %94 = call i32 %90(i8* %91, %struct.event.0* %93)
  store i32 %94, i32* %2, align 4
  br label %116

95:                                               ; preds = %76
  %96 = load %struct.event*, %struct.event** %3, align 8
  %97 = getelementptr inbounds %struct.event, %struct.event* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @EVLIST_SIGNAL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %95
  %103 = load %struct.event_base*, %struct.event_base** %4, align 8
  %104 = load %struct.event*, %struct.event** %3, align 8
  %105 = load i32, i32* @EVLIST_SIGNAL, align 4
  %106 = call i32 @event_queue_remove(%struct.event_base* %103, %struct.event* %104, i32 %105)
  %107 = load %struct.eventop*, %struct.eventop** %5, align 8
  %108 = getelementptr inbounds %struct.eventop, %struct.eventop* %107, i32 0, i32 0
  %109 = load i32 (i8*, %struct.event.0*)*, i32 (i8*, %struct.event.0*)** %108, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load %struct.event*, %struct.event** %3, align 8
  %112 = bitcast %struct.event* %111 to %struct.event.0*
  %113 = call i32 %109(i8* %110, %struct.event.0* %112)
  store i32 %113, i32* %2, align 4
  br label %116

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %102, %83, %18
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @event_debug(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @event_queue_remove(%struct.event_base*, %struct.event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
