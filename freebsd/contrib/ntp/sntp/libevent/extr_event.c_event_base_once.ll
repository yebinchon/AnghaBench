; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_base_once.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_base_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.timeval = type { i32 }
%struct.event_once = type { void (i32, i16, i8*)*, i32, i8* }

@EV_SIGNAL = common dso_local global i16 0, align 2
@EV_PERSIST = common dso_local global i16 0, align 2
@EV_TIMEOUT = common dso_local global i16 0, align 2
@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@EV_CLOSED = common dso_local global i16 0, align 2
@event_once_cb = common dso_local global i32 0, align 4
@th_base_lock = common dso_local global i32 0, align 4
@next_once = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_base_once(%struct.event_base* %0, i32 %1, i16 signext %2, void (i32, i16, i8*)* %3, i8* %4, %struct.timeval* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.event_base*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca void (i32, i16, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.timeval*, align 8
  %14 = alloca %struct.event_once*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %8, align 8
  store i32 %1, i32* %9, align 4
  store i16 %2, i16* %10, align 2
  store void (i32, i16, i8*)* %3, void (i32, i16, i8*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.timeval* %5, %struct.timeval** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load i16, i16* %10, align 2
  %18 = sext i16 %17 to i32
  %19 = load i16, i16* @EV_SIGNAL, align 2
  %20 = sext i16 %19 to i32
  %21 = load i16, i16* @EV_PERSIST, align 2
  %22 = sext i16 %21 to i32
  %23 = or i32 %20, %22
  %24 = and i32 %18, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %148

27:                                               ; preds = %6
  %28 = call %struct.event_once* @mm_calloc(i32 1, i32 24)
  store %struct.event_once* %28, %struct.event_once** %14, align 8
  %29 = icmp eq %struct.event_once* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 -1, i32* %7, align 4
  br label %148

31:                                               ; preds = %27
  %32 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %11, align 8
  %33 = load %struct.event_once*, %struct.event_once** %14, align 8
  %34 = getelementptr inbounds %struct.event_once, %struct.event_once* %33, i32 0, i32 0
  store void (i32, i16, i8*)* %32, void (i32, i16, i8*)** %34, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.event_once*, %struct.event_once** %14, align 8
  %37 = getelementptr inbounds %struct.event_once, %struct.event_once* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i16, i16* %10, align 2
  %39 = sext i16 %38 to i32
  %40 = load i16, i16* @EV_TIMEOUT, align 2
  %41 = sext i16 %40 to i32
  %42 = load i16, i16* @EV_SIGNAL, align 2
  %43 = sext i16 %42 to i32
  %44 = or i32 %41, %43
  %45 = load i16, i16* @EV_READ, align 2
  %46 = sext i16 %45 to i32
  %47 = or i32 %44, %46
  %48 = load i16, i16* @EV_WRITE, align 2
  %49 = sext i16 %48 to i32
  %50 = or i32 %47, %49
  %51 = load i16, i16* @EV_CLOSED, align 2
  %52 = sext i16 %51 to i32
  %53 = or i32 %50, %52
  %54 = and i32 %39, %53
  %55 = load i16, i16* @EV_TIMEOUT, align 2
  %56 = sext i16 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %31
  %59 = load %struct.event_once*, %struct.event_once** %14, align 8
  %60 = getelementptr inbounds %struct.event_once, %struct.event_once* %59, i32 0, i32 1
  %61 = load %struct.event_base*, %struct.event_base** %8, align 8
  %62 = load i32, i32* @event_once_cb, align 4
  %63 = load %struct.event_once*, %struct.event_once** %14, align 8
  %64 = call i32 @evtimer_assign(i32* %60, %struct.event_base* %61, i32 %62, %struct.event_once* %63)
  %65 = load %struct.timeval*, %struct.timeval** %13, align 8
  %66 = icmp eq %struct.timeval* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = load %struct.timeval*, %struct.timeval** %13, align 8
  %69 = call i32 @evutil_timerisset(%struct.timeval* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67, %58
  store i32 1, i32* %16, align 4
  br label %72

72:                                               ; preds = %71, %67
  br label %111

73:                                               ; preds = %31
  %74 = load i16, i16* %10, align 2
  %75 = sext i16 %74 to i32
  %76 = load i16, i16* @EV_READ, align 2
  %77 = sext i16 %76 to i32
  %78 = load i16, i16* @EV_WRITE, align 2
  %79 = sext i16 %78 to i32
  %80 = or i32 %77, %79
  %81 = load i16, i16* @EV_CLOSED, align 2
  %82 = sext i16 %81 to i32
  %83 = or i32 %80, %82
  %84 = and i32 %75, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %73
  %87 = load i16, i16* @EV_READ, align 2
  %88 = sext i16 %87 to i32
  %89 = load i16, i16* @EV_WRITE, align 2
  %90 = sext i16 %89 to i32
  %91 = or i32 %88, %90
  %92 = load i16, i16* @EV_CLOSED, align 2
  %93 = sext i16 %92 to i32
  %94 = or i32 %91, %93
  %95 = load i16, i16* %10, align 2
  %96 = sext i16 %95 to i32
  %97 = and i32 %96, %94
  %98 = trunc i32 %97 to i16
  store i16 %98, i16* %10, align 2
  %99 = load %struct.event_once*, %struct.event_once** %14, align 8
  %100 = getelementptr inbounds %struct.event_once, %struct.event_once* %99, i32 0, i32 1
  %101 = load %struct.event_base*, %struct.event_base** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i16, i16* %10, align 2
  %104 = load i32, i32* @event_once_cb, align 4
  %105 = load %struct.event_once*, %struct.event_once** %14, align 8
  %106 = call i32 @event_assign(i32* %100, %struct.event_base* %101, i32 %102, i16 signext %103, i32 %104, %struct.event_once* %105)
  br label %110

107:                                              ; preds = %73
  %108 = load %struct.event_once*, %struct.event_once** %14, align 8
  %109 = call i32 @mm_free(%struct.event_once* %108)
  store i32 -1, i32* %7, align 4
  br label %148

110:                                              ; preds = %86
  br label %111

111:                                              ; preds = %110, %72
  %112 = load i32, i32* %15, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %147

114:                                              ; preds = %111
  %115 = load %struct.event_base*, %struct.event_base** %8, align 8
  %116 = load i32, i32* @th_base_lock, align 4
  %117 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %115, i32 %116)
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load %struct.event_once*, %struct.event_once** %14, align 8
  %122 = getelementptr inbounds %struct.event_once, %struct.event_once* %121, i32 0, i32 1
  %123 = load i16, i16* @EV_TIMEOUT, align 2
  %124 = call i32 @event_active_nolock_(i32* %122, i16 signext %123, i32 1)
  br label %130

125:                                              ; preds = %114
  %126 = load %struct.event_once*, %struct.event_once** %14, align 8
  %127 = getelementptr inbounds %struct.event_once, %struct.event_once* %126, i32 0, i32 1
  %128 = load %struct.timeval*, %struct.timeval** %13, align 8
  %129 = call i32 @event_add_nolock_(i32* %127, %struct.timeval* %128, i32 0)
  store i32 %129, i32* %15, align 4
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load %struct.event_once*, %struct.event_once** %14, align 8
  %135 = call i32 @mm_free(%struct.event_once* %134)
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %7, align 4
  br label %148

137:                                              ; preds = %130
  %138 = load %struct.event_base*, %struct.event_base** %8, align 8
  %139 = getelementptr inbounds %struct.event_base, %struct.event_base* %138, i32 0, i32 0
  %140 = load %struct.event_once*, %struct.event_once** %14, align 8
  %141 = load i32, i32* @next_once, align 4
  %142 = call i32 @LIST_INSERT_HEAD(i32* %139, %struct.event_once* %140, i32 %141)
  br label %143

143:                                              ; preds = %137
  %144 = load %struct.event_base*, %struct.event_base** %8, align 8
  %145 = load i32, i32* @th_base_lock, align 4
  %146 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %111
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %147, %133, %107, %30, %26
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local %struct.event_once* @mm_calloc(i32, i32) #1

declare dso_local i32 @evtimer_assign(i32*, %struct.event_base*, i32, %struct.event_once*) #1

declare dso_local i32 @evutil_timerisset(%struct.timeval*) #1

declare dso_local i32 @event_assign(i32*, %struct.event_base*, i32, i16 signext, i32, %struct.event_once*) #1

declare dso_local i32 @mm_free(%struct.event_once*) #1

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @event_active_nolock_(i32*, i16 signext, i32) #1

declare dso_local i32 @event_add_nolock_(i32*, %struct.timeval*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.event_once*, i32) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
