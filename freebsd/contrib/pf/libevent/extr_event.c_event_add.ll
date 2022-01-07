; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32, i32, i32, i32, i32, i64*, i64, %struct.event_base* }
%struct.event_base = type { i8*, %struct.eventop* }
%struct.eventop = type { i32 (i8*, %struct.event.0*)* }
%struct.event.0 = type opaque
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"event_add: event: %p, %s%s%scall %p\00", align 1
@EV_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"EV_READ \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@EV_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"EV_WRITE \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"EV_TIMEOUT \00", align 1
@EVLIST_ALL = common dso_local global i32 0, align 4
@EVLIST_TIMEOUT = common dso_local global i32 0, align 4
@EVLIST_ACTIVE = common dso_local global i32 0, align 4
@EV_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"event_add: timeout in %d seconds, call %p\00", align 1
@EVLIST_INSERTED = common dso_local global i32 0, align 4
@EV_SIGNAL = common dso_local global i32 0, align 4
@EVLIST_SIGNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_add(%struct.event* %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca %struct.event_base*, align 8
  %7 = alloca %struct.eventop*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.timeval, align 4
  store %struct.event* %0, %struct.event** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %10 = load %struct.event*, %struct.event** %4, align 8
  %11 = getelementptr inbounds %struct.event, %struct.event* %10, i32 0, i32 7
  %12 = load %struct.event_base*, %struct.event_base** %11, align 8
  store %struct.event_base* %12, %struct.event_base** %6, align 8
  %13 = load %struct.event_base*, %struct.event_base** %6, align 8
  %14 = getelementptr inbounds %struct.event_base, %struct.event_base* %13, i32 0, i32 1
  %15 = load %struct.eventop*, %struct.eventop** %14, align 8
  store %struct.eventop* %15, %struct.eventop** %7, align 8
  %16 = load %struct.event_base*, %struct.event_base** %6, align 8
  %17 = getelementptr inbounds %struct.event_base, %struct.event_base* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load %struct.event*, %struct.event** %4, align 8
  %20 = load %struct.event*, %struct.event** %4, align 8
  %21 = getelementptr inbounds %struct.event, %struct.event* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @EV_READ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %28 = load %struct.event*, %struct.event** %4, align 8
  %29 = getelementptr inbounds %struct.event, %struct.event* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EV_WRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %36 = load %struct.timeval*, %struct.timeval** %5, align 8
  %37 = icmp ne %struct.timeval* %36, null
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %40 = load %struct.event*, %struct.event** %4, align 8
  %41 = getelementptr inbounds %struct.event, %struct.event* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @event_debug(i8* %44)
  %46 = load %struct.event*, %struct.event** %4, align 8
  %47 = getelementptr inbounds %struct.event, %struct.event* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @EVLIST_ALL, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.timeval*, %struct.timeval** %5, align 8
  %57 = icmp ne %struct.timeval* %56, null
  br i1 %57, label %58, label %122

58:                                               ; preds = %2
  %59 = load %struct.event*, %struct.event** %4, align 8
  %60 = getelementptr inbounds %struct.event, %struct.event* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @EVLIST_TIMEOUT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.event_base*, %struct.event_base** %6, align 8
  %67 = load %struct.event*, %struct.event** %4, align 8
  %68 = load i32, i32* @EVLIST_TIMEOUT, align 4
  %69 = call i32 @event_queue_remove(%struct.event_base* %66, %struct.event* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %58
  %71 = load %struct.event*, %struct.event** %4, align 8
  %72 = getelementptr inbounds %struct.event, %struct.event* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @EVLIST_ACTIVE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %70
  %78 = load %struct.event*, %struct.event** %4, align 8
  %79 = getelementptr inbounds %struct.event, %struct.event* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @EV_TIMEOUT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %77
  %85 = load %struct.event*, %struct.event** %4, align 8
  %86 = getelementptr inbounds %struct.event, %struct.event* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load %struct.event*, %struct.event** %4, align 8
  %91 = getelementptr inbounds %struct.event, %struct.event* %90, i32 0, i32 5
  %92 = load i64*, i64** %91, align 8
  %93 = icmp ne i64* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.event*, %struct.event** %4, align 8
  %96 = getelementptr inbounds %struct.event, %struct.event* %95, i32 0, i32 5
  %97 = load i64*, i64** %96, align 8
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %89, %84
  %99 = load %struct.event_base*, %struct.event_base** %6, align 8
  %100 = load %struct.event*, %struct.event** %4, align 8
  %101 = load i32, i32* @EVLIST_ACTIVE, align 4
  %102 = call i32 @event_queue_remove(%struct.event_base* %99, %struct.event* %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %77, %70
  %104 = call i32 @gettime(%struct.timeval* %9)
  %105 = load %struct.timeval*, %struct.timeval** %5, align 8
  %106 = load %struct.event*, %struct.event** %4, align 8
  %107 = getelementptr inbounds %struct.event, %struct.event* %106, i32 0, i32 4
  %108 = call i32 @timeradd(%struct.timeval* %9, %struct.timeval* %105, i32* %107)
  %109 = load %struct.timeval*, %struct.timeval** %5, align 8
  %110 = getelementptr inbounds %struct.timeval, %struct.timeval* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.event*, %struct.event** %4, align 8
  %113 = getelementptr inbounds %struct.event, %struct.event* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 @event_debug(i8* %116)
  %118 = load %struct.event_base*, %struct.event_base** %6, align 8
  %119 = load %struct.event*, %struct.event** %4, align 8
  %120 = load i32, i32* @EVLIST_TIMEOUT, align 4
  %121 = call i32 @event_queue_insert(%struct.event_base* %118, %struct.event* %119, i32 %120)
  br label %122

122:                                              ; preds = %103, %2
  %123 = load %struct.event*, %struct.event** %4, align 8
  %124 = getelementptr inbounds %struct.event, %struct.event* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @EV_READ, align 4
  %127 = load i32, i32* @EV_WRITE, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %125, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %122
  %132 = load %struct.event*, %struct.event** %4, align 8
  %133 = getelementptr inbounds %struct.event, %struct.event* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @EVLIST_INSERTED, align 4
  %136 = load i32, i32* @EVLIST_ACTIVE, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %134, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %152, label %140

140:                                              ; preds = %131
  %141 = load %struct.event_base*, %struct.event_base** %6, align 8
  %142 = load %struct.event*, %struct.event** %4, align 8
  %143 = load i32, i32* @EVLIST_INSERTED, align 4
  %144 = call i32 @event_queue_insert(%struct.event_base* %141, %struct.event* %142, i32 %143)
  %145 = load %struct.eventop*, %struct.eventop** %7, align 8
  %146 = getelementptr inbounds %struct.eventop, %struct.eventop* %145, i32 0, i32 0
  %147 = load i32 (i8*, %struct.event.0*)*, i32 (i8*, %struct.event.0*)** %146, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = load %struct.event*, %struct.event** %4, align 8
  %150 = bitcast %struct.event* %149 to %struct.event.0*
  %151 = call i32 %147(i8* %148, %struct.event.0* %150)
  store i32 %151, i32* %3, align 4
  br label %180

152:                                              ; preds = %131, %122
  %153 = load %struct.event*, %struct.event** %4, align 8
  %154 = getelementptr inbounds %struct.event, %struct.event* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @EV_SIGNAL, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %178

159:                                              ; preds = %152
  %160 = load %struct.event*, %struct.event** %4, align 8
  %161 = getelementptr inbounds %struct.event, %struct.event* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @EVLIST_SIGNAL, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %178, label %166

166:                                              ; preds = %159
  %167 = load %struct.event_base*, %struct.event_base** %6, align 8
  %168 = load %struct.event*, %struct.event** %4, align 8
  %169 = load i32, i32* @EVLIST_SIGNAL, align 4
  %170 = call i32 @event_queue_insert(%struct.event_base* %167, %struct.event* %168, i32 %169)
  %171 = load %struct.eventop*, %struct.eventop** %7, align 8
  %172 = getelementptr inbounds %struct.eventop, %struct.eventop* %171, i32 0, i32 0
  %173 = load i32 (i8*, %struct.event.0*)*, i32 (i8*, %struct.event.0*)** %172, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = load %struct.event*, %struct.event** %4, align 8
  %176 = bitcast %struct.event* %175 to %struct.event.0*
  %177 = call i32 %173(i8* %174, %struct.event.0* %176)
  store i32 %177, i32* %3, align 4
  br label %180

178:                                              ; preds = %159, %152
  br label %179

179:                                              ; preds = %178
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %179, %166, %140
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @event_debug(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @event_queue_remove(%struct.event_base*, %struct.event*, i32) #1

declare dso_local i32 @gettime(%struct.timeval*) #1

declare dso_local i32 @timeradd(%struct.timeval*, %struct.timeval*, i32*) #1

declare dso_local i32 @event_queue_insert(%struct.event_base*, %struct.event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
