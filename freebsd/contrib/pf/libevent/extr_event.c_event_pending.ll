; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32, i32, i32, i32 }
%struct.timeval = type { i32 }

@EVLIST_INSERTED = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@EVLIST_ACTIVE = common dso_local global i32 0, align 4
@EVLIST_TIMEOUT = common dso_local global i32 0, align 4
@EV_TIMEOUT = common dso_local global i32 0, align 4
@EVLIST_SIGNAL = common dso_local global i32 0, align 4
@EV_SIGNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_pending(%struct.event* %0, i16 signext %1, %struct.timeval* %2) #0 {
  %4 = alloca %struct.event*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i32, align 4
  store %struct.event* %0, %struct.event** %4, align 8
  store i16 %1, i16* %5, align 2
  store %struct.timeval* %2, %struct.timeval** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.event*, %struct.event** %4, align 8
  %11 = getelementptr inbounds %struct.event, %struct.event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @EVLIST_INSERTED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.event*, %struct.event** %4, align 8
  %18 = getelementptr inbounds %struct.event, %struct.event* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EV_READ, align 4
  %21 = load i32, i32* @EV_WRITE, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %16, %3
  %27 = load %struct.event*, %struct.event** %4, align 8
  %28 = getelementptr inbounds %struct.event, %struct.event* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @EVLIST_ACTIVE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.event*, %struct.event** %4, align 8
  %35 = getelementptr inbounds %struct.event, %struct.event* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %33, %26
  %40 = load %struct.event*, %struct.event** %4, align 8
  %41 = getelementptr inbounds %struct.event, %struct.event* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EVLIST_TIMEOUT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @EV_TIMEOUT, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.event*, %struct.event** %4, align 8
  %52 = getelementptr inbounds %struct.event, %struct.event* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @EVLIST_SIGNAL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @EV_SIGNAL, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load i32, i32* @EV_TIMEOUT, align 4
  %63 = load i32, i32* @EV_READ, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @EV_WRITE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @EV_SIGNAL, align 4
  %68 = or i32 %66, %67
  %69 = load i16, i16* %5, align 2
  %70 = sext i16 %69 to i32
  %71 = and i32 %70, %68
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %5, align 2
  %73 = load %struct.timeval*, %struct.timeval** %6, align 8
  %74 = icmp ne %struct.timeval* %73, null
  br i1 %74, label %75, label %91

75:                                               ; preds = %61
  %76 = load i32, i32* %9, align 4
  %77 = load i16, i16* %5, align 2
  %78 = sext i16 %77 to i32
  %79 = and i32 %76, %78
  %80 = load i32, i32* @EV_TIMEOUT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = call i32 @gettime(%struct.timeval* %7)
  %85 = load %struct.event*, %struct.event** %4, align 8
  %86 = getelementptr inbounds %struct.event, %struct.event* %85, i32 0, i32 3
  %87 = call i32 @timersub(i32* %86, %struct.timeval* %7, %struct.timeval* %8)
  %88 = call i32 @gettimeofday(%struct.timeval* %7, i32* null)
  %89 = load %struct.timeval*, %struct.timeval** %6, align 8
  %90 = call i32 @timeradd(%struct.timeval* %7, %struct.timeval* %8, %struct.timeval* %89)
  br label %91

91:                                               ; preds = %83, %75, %61
  %92 = load i32, i32* %9, align 4
  %93 = load i16, i16* %5, align 2
  %94 = sext i16 %93 to i32
  %95 = and i32 %92, %94
  ret i32 %95
}

declare dso_local i32 @gettime(%struct.timeval*) #1

declare dso_local i32 @timersub(i32*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @timeradd(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
