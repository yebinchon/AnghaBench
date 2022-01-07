; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_process_active.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_process_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32, %struct.event_list**, i32 }
%struct.event_list = type { i32 }
%struct.event = type { i16, i16*, i32, i32, i64, i32 (i32, i32, i32)* }

@EVLIST_ACTIVE = common dso_local global i32 0, align 4
@event_gotsig = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_base*)* @event_process_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_process_active(%struct.event_base* %0) #0 {
  %2 = alloca %struct.event_base*, align 8
  %3 = alloca %struct.event*, align 8
  %4 = alloca %struct.event_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.event_base* %0, %struct.event_base** %2, align 8
  store %struct.event_list* null, %struct.event_list** %4, align 8
  %7 = load %struct.event_base*, %struct.event_base** %2, align 8
  %8 = getelementptr inbounds %struct.event_base, %struct.event_base* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %92

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %38, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.event_base*, %struct.event_base** %2, align 8
  %16 = getelementptr inbounds %struct.event_base, %struct.event_base* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.event_base*, %struct.event_base** %2, align 8
  %21 = getelementptr inbounds %struct.event_base, %struct.event_base* %20, i32 0, i32 1
  %22 = load %struct.event_list**, %struct.event_list*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.event_list*, %struct.event_list** %22, i64 %24
  %26 = load %struct.event_list*, %struct.event_list** %25, align 8
  %27 = call %struct.event* @TAILQ_FIRST(%struct.event_list* %26)
  %28 = icmp ne %struct.event* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load %struct.event_base*, %struct.event_base** %2, align 8
  %31 = getelementptr inbounds %struct.event_base, %struct.event_base* %30, i32 0, i32 1
  %32 = load %struct.event_list**, %struct.event_list*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.event_list*, %struct.event_list** %32, i64 %34
  %36 = load %struct.event_list*, %struct.event_list** %35, align 8
  store %struct.event_list* %36, %struct.event_list** %4, align 8
  br label %41

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %13

41:                                               ; preds = %29, %13
  %42 = load %struct.event_list*, %struct.event_list** %4, align 8
  %43 = icmp ne %struct.event_list* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.event_list*, %struct.event_list** %4, align 8
  %47 = call %struct.event* @TAILQ_FIRST(%struct.event_list* %46)
  store %struct.event* %47, %struct.event** %3, align 8
  br label %48

48:                                               ; preds = %89, %41
  %49 = load %struct.event*, %struct.event** %3, align 8
  %50 = icmp ne %struct.event* %49, null
  br i1 %50, label %51, label %92

51:                                               ; preds = %48
  %52 = load %struct.event_base*, %struct.event_base** %2, align 8
  %53 = load %struct.event*, %struct.event** %3, align 8
  %54 = load i32, i32* @EVLIST_ACTIVE, align 4
  %55 = call i32 @event_queue_remove(%struct.event_base* %52, %struct.event* %53, i32 %54)
  %56 = load %struct.event*, %struct.event** %3, align 8
  %57 = getelementptr inbounds %struct.event, %struct.event* %56, i32 0, i32 0
  %58 = load i16, i16* %57, align 8
  store i16 %58, i16* %6, align 2
  %59 = load %struct.event*, %struct.event** %3, align 8
  %60 = getelementptr inbounds %struct.event, %struct.event* %59, i32 0, i32 1
  store i16* %6, i16** %60, align 8
  br label %61

61:                                               ; preds = %87, %51
  %62 = load i16, i16* %6, align 2
  %63 = icmp ne i16 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = load i16, i16* %6, align 2
  %66 = add i16 %65, -1
  store i16 %66, i16* %6, align 2
  %67 = load i16, i16* %6, align 2
  %68 = load %struct.event*, %struct.event** %3, align 8
  %69 = getelementptr inbounds %struct.event, %struct.event* %68, i32 0, i32 0
  store i16 %67, i16* %69, align 8
  %70 = load %struct.event*, %struct.event** %3, align 8
  %71 = getelementptr inbounds %struct.event, %struct.event* %70, i32 0, i32 5
  %72 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %71, align 8
  %73 = load %struct.event*, %struct.event** %3, align 8
  %74 = getelementptr inbounds %struct.event, %struct.event* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load %struct.event*, %struct.event** %3, align 8
  %78 = getelementptr inbounds %struct.event, %struct.event* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.event*, %struct.event** %3, align 8
  %81 = getelementptr inbounds %struct.event, %struct.event* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 %72(i32 %76, i32 %79, i32 %82)
  %84 = load i64, i64* @event_gotsig, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %64
  br label %92

87:                                               ; preds = %64
  br label %61

88:                                               ; preds = %61
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.event_list*, %struct.event_list** %4, align 8
  %91 = call %struct.event* @TAILQ_FIRST(%struct.event_list* %90)
  store %struct.event* %91, %struct.event** %3, align 8
  br label %48

92:                                               ; preds = %11, %86, %48
  ret void
}

declare dso_local %struct.event* @TAILQ_FIRST(%struct.event_list*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @event_queue_remove(%struct.event_base*, %struct.event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
