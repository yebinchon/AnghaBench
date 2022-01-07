; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_task.c_task_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_task.c_task_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@ISC_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"task_shutdown\00", align 1
@isc_msgcat = common dso_local global i32 0, align 4
@ISC_MSGSET_GENERAL = common dso_local global i32 0, align 4
@ISC_MSG_SHUTTINGDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"shutting down\00", align 1
@TASK_F_SHUTTINGDOWN = common dso_local global i32 0, align 4
@task_state_idle = common dso_local global i64 0, align 8
@task_state_ready = common dso_local global i64 0, align 8
@ISC_TRUE = common dso_local global i32 0, align 4
@task_state_running = common dso_local global i64 0, align 8
@ev_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @task_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_shutdown(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load i32, i32* @ISC_FALSE, align 4
  store i32 %6, i32* %3, align 4
  %7 = call i32 @XTRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = call i32 @TASK_SHUTTINGDOWN(%struct.TYPE_4__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %79, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @isc_msgcat, align 4
  %13 = load i32, i32* @ISC_MSGSET_GENERAL, align 4
  %14 = load i32, i32* @ISC_MSG_SHUTTINGDOWN, align 4
  %15 = call i8* @isc_msgcat_get(i32 %12, i32 %13, i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @XTRACE(i8* %15)
  %17 = load i32, i32* @TASK_F_SHUTTINGDOWN, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @task_state_idle, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %11
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @EMPTY(i32 %30)
  %32 = call i32 @INSIST(i32 %31)
  %33 = load i64, i64* @task_state_ready, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @ISC_TRUE, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %27, %11
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @task_state_ready, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @task_state_running, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i1 [ true, %37 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @INSIST(i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @TAIL(i32 %55)
  store i32* %56, i32** %4, align 8
  br label %57

57:                                               ; preds = %76, %49
  %58 = load i32*, i32** %4, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @ev_link, align 4
  %63 = call i32* @PREV(i32* %61, i32 %62)
  store i32* %63, i32** %5, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @ev_link, align 4
  %69 = call i32 @DEQUEUE(i32 %66, i32* %67, i32 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @ev_link, align 4
  %75 = call i32 @ENQUEUE(i32 %72, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %60
  %77 = load i32*, i32** %5, align 8
  store i32* %77, i32** %4, align 8
  br label %57

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %78, %1
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @XTRACE(i8*) #1

declare dso_local i32 @TASK_SHUTTINGDOWN(%struct.TYPE_4__*) #1

declare dso_local i8* @isc_msgcat_get(i32, i32, i32, i8*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @EMPTY(i32) #1

declare dso_local i32* @TAIL(i32) #1

declare dso_local i32* @PREV(i32*, i32) #1

declare dso_local i32 @DEQUEUE(i32, i32*, i32) #1

declare dso_local i32 @ENQUEUE(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
