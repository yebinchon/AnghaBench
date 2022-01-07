; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_event_changelist_del_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_event_changelist_del_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.event_changelist }
%struct.event_changelist = type { i32 }
%struct.event_changelist_fdinfo = type { i32 }
%struct.event_change = type { i16, i8*, i8*, i8* }

@EV_READ = common dso_local global i16 0, align 2
@EV_SIGNAL = common dso_local global i16 0, align 2
@EV_CHANGE_DEL = common dso_local global i8* null, align 8
@EV_WRITE = common dso_local global i16 0, align 2
@EV_CLOSED = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_changelist_del_(%struct.event_base* %0, i32 %1, i16 signext %2, i16 signext %3, i8* %4) #0 {
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
  %26 = load %struct.event_base*, %struct.event_base** %7, align 8
  %27 = call i32 @event_changelist_check(%struct.event_base* %26)
  %28 = load %struct.event_change*, %struct.event_change** %14, align 8
  %29 = icmp ne %struct.event_change* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %112

31:                                               ; preds = %5
  %32 = load i16, i16* %10, align 2
  %33 = sext i16 %32 to i32
  %34 = load i16, i16* @EV_READ, align 2
  %35 = sext i16 %34 to i32
  %36 = load i16, i16* @EV_SIGNAL, align 2
  %37 = sext i16 %36 to i32
  %38 = or i32 %35, %37
  %39 = and i32 %33, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %31
  %42 = load %struct.event_change*, %struct.event_change** %14, align 8
  %43 = getelementptr inbounds %struct.event_change, %struct.event_change* %42, i32 0, i32 0
  %44 = load i16, i16* %43, align 8
  %45 = sext i16 %44 to i32
  %46 = load i16, i16* @EV_READ, align 2
  %47 = sext i16 %46 to i32
  %48 = load i16, i16* @EV_SIGNAL, align 2
  %49 = sext i16 %48 to i32
  %50 = or i32 %47, %49
  %51 = and i32 %45, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %41
  %54 = load %struct.event_change*, %struct.event_change** %14, align 8
  %55 = getelementptr inbounds %struct.event_change, %struct.event_change* %54, i32 0, i32 3
  store i8* null, i8** %55, align 8
  br label %60

56:                                               ; preds = %41
  %57 = load i8*, i8** @EV_CHANGE_DEL, align 8
  %58 = load %struct.event_change*, %struct.event_change** %14, align 8
  %59 = getelementptr inbounds %struct.event_change, %struct.event_change* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i16, i16* %10, align 2
  %63 = sext i16 %62 to i32
  %64 = load i16, i16* @EV_WRITE, align 2
  %65 = sext i16 %64 to i32
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %61
  %69 = load %struct.event_change*, %struct.event_change** %14, align 8
  %70 = getelementptr inbounds %struct.event_change, %struct.event_change* %69, i32 0, i32 0
  %71 = load i16, i16* %70, align 8
  %72 = sext i16 %71 to i32
  %73 = load i16, i16* @EV_WRITE, align 2
  %74 = sext i16 %73 to i32
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %68
  %78 = load %struct.event_change*, %struct.event_change** %14, align 8
  %79 = getelementptr inbounds %struct.event_change, %struct.event_change* %78, i32 0, i32 2
  store i8* null, i8** %79, align 8
  br label %84

80:                                               ; preds = %68
  %81 = load i8*, i8** @EV_CHANGE_DEL, align 8
  %82 = load %struct.event_change*, %struct.event_change** %14, align 8
  %83 = getelementptr inbounds %struct.event_change, %struct.event_change* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %84, %61
  %86 = load i16, i16* %10, align 2
  %87 = sext i16 %86 to i32
  %88 = load i16, i16* @EV_CLOSED, align 2
  %89 = sext i16 %88 to i32
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %85
  %93 = load %struct.event_change*, %struct.event_change** %14, align 8
  %94 = getelementptr inbounds %struct.event_change, %struct.event_change* %93, i32 0, i32 0
  %95 = load i16, i16* %94, align 8
  %96 = sext i16 %95 to i32
  %97 = load i16, i16* @EV_CLOSED, align 2
  %98 = sext i16 %97 to i32
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %92
  %102 = load %struct.event_change*, %struct.event_change** %14, align 8
  %103 = getelementptr inbounds %struct.event_change, %struct.event_change* %102, i32 0, i32 1
  store i8* null, i8** %103, align 8
  br label %108

104:                                              ; preds = %92
  %105 = load i8*, i8** @EV_CHANGE_DEL, align 8
  %106 = load %struct.event_change*, %struct.event_change** %14, align 8
  %107 = getelementptr inbounds %struct.event_change, %struct.event_change* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %104, %101
  br label %109

109:                                              ; preds = %108, %85
  %110 = load %struct.event_base*, %struct.event_base** %7, align 8
  %111 = call i32 @event_changelist_check(%struct.event_base* %110)
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %109, %30
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @event_changelist_check(%struct.event_base*) #1

declare dso_local %struct.event_change* @event_changelist_get_or_construct(%struct.event_changelist*, i32, i16 signext, %struct.event_changelist_fdinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
