; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_event_changelist_add_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_event_changelist_add_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.event_changelist }
%struct.event_changelist = type { i32 }
%struct.event_changelist_fdinfo = type { i32 }
%struct.event_change = type { i16, i16, i16 }

@EV_READ = common dso_local global i16 0, align 2
@EV_SIGNAL = common dso_local global i16 0, align 2
@EV_CHANGE_ADD = common dso_local global i16 0, align 2
@EV_ET = common dso_local global i16 0, align 2
@EV_PERSIST = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@EV_CLOSED = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_changelist_add_(%struct.event_base* %0, i32 %1, i16 signext %2, i16 signext %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca %struct.event_changelist*, align 8
  %13 = alloca %struct.event_changelist_fdinfo*, align 8
  %14 = alloca %struct.event_change*, align 8
  store %struct.event_base* %0, %struct.event_base** %7, align 8
  store i32 %1, i32* %8, align 4
  store i16 %2, i16* %9, align 2
  store i16 %3, i16* %10, align 2
  store i8* %4, i8** %11, align 8
  %15 = load %struct.event_base*, %struct.event_base** %7, align 8
  %16 = getelementptr inbounds %struct.event_base, %struct.event_base* %15, i32 0, i32 0
  store %struct.event_changelist* %16, %struct.event_changelist** %12, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to %struct.event_changelist_fdinfo*
  store %struct.event_changelist_fdinfo* %18, %struct.event_changelist_fdinfo** %13, align 8
  %19 = load %struct.event_base*, %struct.event_base** %7, align 8
  %20 = call i32 @event_changelist_check(%struct.event_base* %19)
  %21 = load %struct.event_changelist*, %struct.event_changelist** %12, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i16, i16* %9, align 2
  %24 = load %struct.event_changelist_fdinfo*, %struct.event_changelist_fdinfo** %13, align 8
  %25 = call %struct.event_change* @event_changelist_get_or_construct(%struct.event_changelist* %21, i32 %22, i16 signext %23, %struct.event_changelist_fdinfo* %24)
  store %struct.event_change* %25, %struct.event_change** %14, align 8
  %26 = load %struct.event_change*, %struct.event_change** %14, align 8
  %27 = icmp ne %struct.event_change* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %110

29:                                               ; preds = %5
  %30 = load i16, i16* %10, align 2
  %31 = sext i16 %30 to i32
  %32 = load i16, i16* @EV_READ, align 2
  %33 = sext i16 %32 to i32
  %34 = load i16, i16* @EV_SIGNAL, align 2
  %35 = sext i16 %34 to i32
  %36 = or i32 %33, %35
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %29
  %40 = load i16, i16* @EV_CHANGE_ADD, align 2
  %41 = sext i16 %40 to i32
  %42 = load i16, i16* %10, align 2
  %43 = sext i16 %42 to i32
  %44 = load i16, i16* @EV_ET, align 2
  %45 = sext i16 %44 to i32
  %46 = load i16, i16* @EV_PERSIST, align 2
  %47 = sext i16 %46 to i32
  %48 = or i32 %45, %47
  %49 = load i16, i16* @EV_SIGNAL, align 2
  %50 = sext i16 %49 to i32
  %51 = or i32 %48, %50
  %52 = and i32 %43, %51
  %53 = or i32 %41, %52
  %54 = trunc i32 %53 to i16
  %55 = load %struct.event_change*, %struct.event_change** %14, align 8
  %56 = getelementptr inbounds %struct.event_change, %struct.event_change* %55, i32 0, i32 0
  store i16 %54, i16* %56, align 2
  br label %57

57:                                               ; preds = %39, %29
  %58 = load i16, i16* %10, align 2
  %59 = sext i16 %58 to i32
  %60 = load i16, i16* @EV_WRITE, align 2
  %61 = sext i16 %60 to i32
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %57
  %65 = load i16, i16* @EV_CHANGE_ADD, align 2
  %66 = sext i16 %65 to i32
  %67 = load i16, i16* %10, align 2
  %68 = sext i16 %67 to i32
  %69 = load i16, i16* @EV_ET, align 2
  %70 = sext i16 %69 to i32
  %71 = load i16, i16* @EV_PERSIST, align 2
  %72 = sext i16 %71 to i32
  %73 = or i32 %70, %72
  %74 = load i16, i16* @EV_SIGNAL, align 2
  %75 = sext i16 %74 to i32
  %76 = or i32 %73, %75
  %77 = and i32 %68, %76
  %78 = or i32 %66, %77
  %79 = trunc i32 %78 to i16
  %80 = load %struct.event_change*, %struct.event_change** %14, align 8
  %81 = getelementptr inbounds %struct.event_change, %struct.event_change* %80, i32 0, i32 1
  store i16 %79, i16* %81, align 2
  br label %82

82:                                               ; preds = %64, %57
  %83 = load i16, i16* %10, align 2
  %84 = sext i16 %83 to i32
  %85 = load i16, i16* @EV_CLOSED, align 2
  %86 = sext i16 %85 to i32
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %82
  %90 = load i16, i16* @EV_CHANGE_ADD, align 2
  %91 = sext i16 %90 to i32
  %92 = load i16, i16* %10, align 2
  %93 = sext i16 %92 to i32
  %94 = load i16, i16* @EV_ET, align 2
  %95 = sext i16 %94 to i32
  %96 = load i16, i16* @EV_PERSIST, align 2
  %97 = sext i16 %96 to i32
  %98 = or i32 %95, %97
  %99 = load i16, i16* @EV_SIGNAL, align 2
  %100 = sext i16 %99 to i32
  %101 = or i32 %98, %100
  %102 = and i32 %93, %101
  %103 = or i32 %91, %102
  %104 = trunc i32 %103 to i16
  %105 = load %struct.event_change*, %struct.event_change** %14, align 8
  %106 = getelementptr inbounds %struct.event_change, %struct.event_change* %105, i32 0, i32 2
  store i16 %104, i16* %106, align 2
  br label %107

107:                                              ; preds = %89, %82
  %108 = load %struct.event_base*, %struct.event_base** %7, align 8
  %109 = call i32 @event_changelist_check(%struct.event_base* %108)
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %107, %28
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @event_changelist_check(%struct.event_base*) #1

declare dso_local %struct.event_change* @event_changelist_get_or_construct(%struct.event_changelist*, i32, i16 signext, %struct.event_changelist_fdinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
