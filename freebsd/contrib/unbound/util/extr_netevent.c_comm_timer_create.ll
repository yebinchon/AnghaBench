; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_timer_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_timer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_timer = type { void (i8*)*, i8*, %struct.internal_timer* }
%struct.internal_timer = type { %struct.comm_timer, i32*, %struct.comm_base* }
%struct.comm_base = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@UB_EV_TIMEOUT = common dso_local global i32 0, align 4
@comm_timer_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"timer_create: event_base_set failed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comm_timer* @comm_timer_create(%struct.comm_base* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.comm_timer*, align 8
  %5 = alloca %struct.comm_base*, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.internal_timer*, align 8
  store %struct.comm_base* %0, %struct.comm_base** %5, align 8
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call i64 @calloc(i32 1, i32 40)
  %10 = inttoptr i64 %9 to %struct.internal_timer*
  store %struct.internal_timer* %10, %struct.internal_timer** %8, align 8
  %11 = load %struct.internal_timer*, %struct.internal_timer** %8, align 8
  %12 = icmp ne %struct.internal_timer* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.comm_timer* null, %struct.comm_timer** %4, align 8
  br label %54

15:                                               ; preds = %3
  %16 = load %struct.internal_timer*, %struct.internal_timer** %8, align 8
  %17 = load %struct.internal_timer*, %struct.internal_timer** %8, align 8
  %18 = getelementptr inbounds %struct.internal_timer, %struct.internal_timer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.comm_timer, %struct.comm_timer* %18, i32 0, i32 2
  store %struct.internal_timer* %16, %struct.internal_timer** %19, align 8
  %20 = load %struct.comm_base*, %struct.comm_base** %5, align 8
  %21 = load %struct.internal_timer*, %struct.internal_timer** %8, align 8
  %22 = getelementptr inbounds %struct.internal_timer, %struct.internal_timer* %21, i32 0, i32 2
  store %struct.comm_base* %20, %struct.comm_base** %22, align 8
  %23 = load void (i8*)*, void (i8*)** %6, align 8
  %24 = load %struct.internal_timer*, %struct.internal_timer** %8, align 8
  %25 = getelementptr inbounds %struct.internal_timer, %struct.internal_timer* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.comm_timer, %struct.comm_timer* %25, i32 0, i32 0
  store void (i8*)* %23, void (i8*)** %26, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.internal_timer*, %struct.internal_timer** %8, align 8
  %29 = getelementptr inbounds %struct.internal_timer, %struct.internal_timer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.comm_timer, %struct.comm_timer* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  %31 = load %struct.comm_base*, %struct.comm_base** %5, align 8
  %32 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @UB_EV_TIMEOUT, align 4
  %37 = load i32, i32* @comm_timer_callback, align 4
  %38 = load %struct.internal_timer*, %struct.internal_timer** %8, align 8
  %39 = getelementptr inbounds %struct.internal_timer, %struct.internal_timer* %38, i32 0, i32 0
  %40 = call i32* @ub_event_new(i32 %35, i32 -1, i32 %36, i32 %37, %struct.comm_timer* %39)
  %41 = load %struct.internal_timer*, %struct.internal_timer** %8, align 8
  %42 = getelementptr inbounds %struct.internal_timer, %struct.internal_timer* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.internal_timer*, %struct.internal_timer** %8, align 8
  %44 = getelementptr inbounds %struct.internal_timer, %struct.internal_timer* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %15
  %48 = call i32 @log_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.internal_timer*, %struct.internal_timer** %8, align 8
  %50 = call i32 @free(%struct.internal_timer* %49)
  store %struct.comm_timer* null, %struct.comm_timer** %4, align 8
  br label %54

51:                                               ; preds = %15
  %52 = load %struct.internal_timer*, %struct.internal_timer** %8, align 8
  %53 = getelementptr inbounds %struct.internal_timer, %struct.internal_timer* %52, i32 0, i32 0
  store %struct.comm_timer* %53, %struct.comm_timer** %4, align 8
  br label %54

54:                                               ; preds = %51, %47, %13
  %55 = load %struct.comm_timer*, %struct.comm_timer** %4, align 8
  ret %struct.comm_timer* %55
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32* @ub_event_new(i32, i32, i32, i32, %struct.comm_timer*) #1

declare dso_local i32 @free(%struct.internal_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
