; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event.c_ub_get_event_sys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event.c_ub_get_event_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_event_base = type { i32 }
%struct.event_base = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"not obtainable\00", align 1
@EVFLAG_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ub_get_event_sys(%struct.ub_event_base* %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca %struct.ub_event_base*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.event_base*, align 8
  store %struct.ub_event_base* %0, %struct.ub_event_base** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %10 = load %struct.ub_event_base*, %struct.ub_event_base** %5, align 8
  %11 = call %struct.event_base* @AS_EVENT_BASE(%struct.ub_event_base* %10)
  store %struct.event_base* %11, %struct.event_base** %9, align 8
  %12 = call i8* (...) @event_get_version()
  %13 = load i8**, i8*** %7, align 8
  store i8* %12, i8** %13, align 8
  %14 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  %16 = load %struct.event_base*, %struct.event_base** %9, align 8
  ret void
}

declare dso_local %struct.event_base* @AS_EVENT_BASE(%struct.ub_event_base*) #1

declare dso_local i8* @event_get_version(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
