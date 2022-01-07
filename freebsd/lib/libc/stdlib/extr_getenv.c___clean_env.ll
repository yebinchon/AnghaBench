; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c___clean_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c___clean_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__*, i64 }

@envVars = common dso_local global %struct.TYPE_6__* null, align 8
@envVarsTotal = common dso_local global i32 0, align 4
@envActive = common dso_local global i64 0, align 8
@origEnviron = common dso_local global %struct.TYPE_6__* null, align 8
@environ = common dso_local global %struct.TYPE_6__* null, align 8
@intEnviron = common dso_local global %struct.TYPE_6__* null, align 8
@environSize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__clean_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__clean_env(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @envVars, align 8
  %5 = icmp ne %struct.TYPE_6__* %4, null
  br i1 %5, label %6, label %69

6:                                                ; preds = %1
  %7 = load i32, i32* @envVarsTotal, align 4
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %46, %6
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %9
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @envVars, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @__remove_putenv(i32 %24)
  br label %26

26:                                               ; preds = %23, %20
  br label %45

27:                                               ; preds = %12
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @envVars, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = call i32 @free(%struct.TYPE_6__* %36)
  br label %44

38:                                               ; preds = %27
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @envVars, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %38, %30
  br label %45

45:                                               ; preds = %44, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %3, align 4
  br label %9

49:                                               ; preds = %9
  %50 = load i32, i32* %2, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @envVars, align 8
  %54 = call i32 @free(%struct.TYPE_6__* %53)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @envVars, align 8
  br label %56

55:                                               ; preds = %49
  store i64 0, i64* @envActive, align 8
  br label %56

56:                                               ; preds = %55, %52
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @origEnviron, align 8
  %58 = icmp ne %struct.TYPE_6__* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @environ, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @intEnviron, align 8
  %62 = icmp eq %struct.TYPE_6__* %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @origEnviron, align 8
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** @environ, align 8
  br label %65

65:                                               ; preds = %63, %59
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @intEnviron, align 8
  %67 = call i32 @free(%struct.TYPE_6__* %66)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @intEnviron, align 8
  store i64 0, i64* @environSize, align 8
  br label %68

68:                                               ; preds = %65, %56
  br label %69

69:                                               ; preds = %68, %1
  ret void
}

declare dso_local i32 @__remove_putenv(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
