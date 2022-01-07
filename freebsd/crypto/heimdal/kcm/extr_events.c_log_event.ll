; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_events.c_log_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_events.c_log_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [92 x i8] c"%s event %08x: fire_time %s fire_count %d expire_time %s backoff_time %d action %s cache %s\00", align 1
@action_strings = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @log_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_event(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %11 = call i32 @print_times(i32 %9, i8* %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %16 = call i32 @print_times(i32 %14, i8* %15)
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** @action_strings, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kcm_log(i32 7, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i8* %17, %struct.TYPE_6__* %18, i8* %19, i32 %22, i8* %23, i32 %26, i32 %32, i32 %37)
  ret void
}

declare dso_local i32 @print_times(i32, i8*) #1

declare dso_local i32 @kcm_log(i32, i8*, i8*, %struct.TYPE_6__*, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
