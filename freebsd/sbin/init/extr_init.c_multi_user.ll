; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_multi_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_multi_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__* }

@requested_transition = common dso_local global i64 0, align 8
@sessions = common dso_local global %struct.TYPE_6__* null, align 8
@clean_ttys = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @multi_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multi_user() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  store i64 0, i64* @requested_transition, align 8
  %3 = call i64 (...) @getsecuritylevel()
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @setsecuritylevel(i32 1)
  br label %7

7:                                                ; preds = %5, %0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sessions, align 8
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %2, align 8
  br label %9

9:                                                ; preds = %38, %7
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %38

18:                                               ; preds = %12
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = call i64 @session_has_no_tty(%struct.TYPE_6__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %38

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = call i32 @start_getty(%struct.TYPE_6__* %24)
  store i32 %25, i32* %1, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* @clean_ttys, align 8
  store i64 %28, i64* @requested_transition, align 8
  br label %42

29:                                               ; preds = %23
  %30 = load i32, i32* %1, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = call i32 @time(i32* null)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = call i32 @add_session(%struct.TYPE_6__* %36)
  br label %38

38:                                               ; preds = %29, %22, %17
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %2, align 8
  br label %9

42:                                               ; preds = %27, %9
  br label %43

43:                                               ; preds = %53, %42
  %44 = load i64, i64* @requested_transition, align 8
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = call i32 @waitpid(i32 -1, i32* null, i32 0)
  store i32 %48, i32* %1, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @collect_child(i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  br label %43

54:                                               ; preds = %43
  %55 = load i64, i64* @requested_transition, align 8
  %56 = trunc i64 %55 to i32
  ret i32 %56
}

declare dso_local i64 @getsecuritylevel(...) #1

declare dso_local i32 @setsecuritylevel(i32) #1

declare dso_local i64 @session_has_no_tty(%struct.TYPE_6__*) #1

declare dso_local i32 @start_getty(%struct.TYPE_6__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @add_session(%struct.TYPE_6__*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @collect_child(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
