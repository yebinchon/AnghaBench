; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_collect_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_collect_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__* }

@sessions = common dso_local global %struct.TYPE_9__* null, align 8
@SE_SHUTDOWN = common dso_local global i32 0, align 4
@clean_ttys = common dso_local global i32 0, align 4
@requested_transition = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @collect_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_child(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sessions, align 8
  %7 = icmp ne %struct.TYPE_9__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %73

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.TYPE_9__* @find_session(i32 %10)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %3, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %73

14:                                               ; preds = %9
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = call i32 @del_session(%struct.TYPE_9__* %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SE_SHUTDOWN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %14
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = call i64 @session_has_no_tty(%struct.TYPE_9__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %25, %14
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %4, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 4
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %39, align 8
  br label %44

40:                                               ; preds = %29
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** @sessions, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %5, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %54, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = call i32 @free_session(%struct.TYPE_9__* %56)
  br label %73

58:                                               ; preds = %25
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = call i32 @start_getty(%struct.TYPE_9__* %59)
  store i32 %60, i32* %2, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @clean_ttys, align 4
  store i32 %63, i32* @requested_transition, align 4
  br label %73

64:                                               ; preds = %58
  %65 = load i32, i32* %2, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = call i32 @time(i32* null)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = call i32 @add_session(%struct.TYPE_9__* %71)
  br label %73

73:                                               ; preds = %64, %62, %55, %13, %8
  ret void
}

declare dso_local %struct.TYPE_9__* @find_session(i32) #1

declare dso_local i32 @del_session(%struct.TYPE_9__*) #1

declare dso_local i64 @session_has_no_tty(%struct.TYPE_9__*) #1

declare dso_local i32 @free_session(%struct.TYPE_9__*) #1

declare dso_local i32 @start_getty(%struct.TYPE_9__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @add_session(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
