; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_once.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.event_once = type { void (i32, i16, i8*)*, i32, i8* }

@EV_SIGNAL = common dso_local global i16 0, align 2
@EV_TIMEOUT = common dso_local global i16 0, align 2
@event_once_cb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_once(i32 %0, i16 signext %1, void (i32, i16, i8*)* %2, i8* %3, %struct.timeval* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca void (i32, i16, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.timeval*, align 8
  %12 = alloca %struct.event_once*, align 8
  %13 = alloca %struct.timeval, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i16 %1, i16* %8, align 2
  store void (i32, i16, i8*)* %2, void (i32, i16, i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.timeval* %4, %struct.timeval** %11, align 8
  %15 = load i16, i16* %8, align 2
  %16 = sext i16 %15 to i32
  %17 = load i16, i16* @EV_SIGNAL, align 2
  %18 = sext i16 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %92

22:                                               ; preds = %5
  %23 = call %struct.event_once* @calloc(i32 1, i32 24)
  store %struct.event_once* %23, %struct.event_once** %12, align 8
  %24 = icmp eq %struct.event_once* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %92

26:                                               ; preds = %22
  %27 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %9, align 8
  %28 = load %struct.event_once*, %struct.event_once** %12, align 8
  %29 = getelementptr inbounds %struct.event_once, %struct.event_once* %28, i32 0, i32 0
  store void (i32, i16, i8*)* %27, void (i32, i16, i8*)** %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.event_once*, %struct.event_once** %12, align 8
  %32 = getelementptr inbounds %struct.event_once, %struct.event_once* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i16, i16* %8, align 2
  %34 = sext i16 %33 to i32
  %35 = load i16, i16* @EV_TIMEOUT, align 2
  %36 = sext i16 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %26
  %39 = load %struct.timeval*, %struct.timeval** %11, align 8
  %40 = icmp eq %struct.timeval* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @timerclear(%struct.timeval* %13)
  store %struct.timeval* %13, %struct.timeval** %11, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = load %struct.event_once*, %struct.event_once** %12, align 8
  %45 = getelementptr inbounds %struct.event_once, %struct.event_once* %44, i32 0, i32 1
  %46 = load i32, i32* @event_once_cb, align 4
  %47 = load %struct.event_once*, %struct.event_once** %12, align 8
  %48 = call i32 @evtimer_set(i32* %45, i32 %46, %struct.event_once* %47)
  br label %80

49:                                               ; preds = %26
  %50 = load i16, i16* %8, align 2
  %51 = sext i16 %50 to i32
  %52 = load i16, i16* @EV_READ, align 2
  %53 = sext i16 %52 to i32
  %54 = load i16, i16* @EV_WRITE, align 2
  %55 = sext i16 %54 to i32
  %56 = or i32 %53, %55
  %57 = and i32 %51, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %49
  %60 = load i16, i16* @EV_READ, align 2
  %61 = sext i16 %60 to i32
  %62 = load i16, i16* @EV_WRITE, align 2
  %63 = sext i16 %62 to i32
  %64 = or i32 %61, %63
  %65 = load i16, i16* %8, align 2
  %66 = sext i16 %65 to i32
  %67 = and i32 %66, %64
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %8, align 2
  %69 = load %struct.event_once*, %struct.event_once** %12, align 8
  %70 = getelementptr inbounds %struct.event_once, %struct.event_once* %69, i32 0, i32 1
  %71 = load i32, i32* %7, align 4
  %72 = load i16, i16* %8, align 2
  %73 = load i32, i32* @event_once_cb, align 4
  %74 = load %struct.event_once*, %struct.event_once** %12, align 8
  %75 = call i32 @event_set(i32* %70, i32 %71, i16 signext %72, i32 %73, %struct.event_once* %74)
  br label %79

76:                                               ; preds = %49
  %77 = load %struct.event_once*, %struct.event_once** %12, align 8
  %78 = call i32 @free(%struct.event_once* %77)
  store i32 -1, i32* %6, align 4
  br label %92

79:                                               ; preds = %59
  br label %80

80:                                               ; preds = %79, %43
  %81 = load %struct.event_once*, %struct.event_once** %12, align 8
  %82 = getelementptr inbounds %struct.event_once, %struct.event_once* %81, i32 0, i32 1
  %83 = load %struct.timeval*, %struct.timeval** %11, align 8
  %84 = call i32 @event_add(i32* %82, %struct.timeval* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.event_once*, %struct.event_once** %12, align 8
  %89 = call i32 @free(%struct.event_once* %88)
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %6, align 4
  br label %92

91:                                               ; preds = %80
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %87, %76, %25, %21
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local %struct.event_once* @calloc(i32, i32) #1

declare dso_local i32 @timerclear(%struct.timeval*) #1

declare dso_local i32 @evtimer_set(i32*, i32, %struct.event_once*) #1

declare dso_local i32 @event_set(i32*, i32, i16 signext, i32, %struct.event_once*) #1

declare dso_local i32 @free(%struct.event_once*) #1

declare dso_local i32 @event_add(i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
