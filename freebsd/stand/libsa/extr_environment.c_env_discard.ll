; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_environment.c_env_discard.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_environment.c_env_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_var = type { i32, %struct.env_var*, %struct.env_var*, %struct.env_var*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.env_var* }

@environ = common dso_local global %struct.env_var* null, align 8
@EV_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.env_var*)* @env_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @env_discard(%struct.env_var* %0) #0 {
  %2 = alloca %struct.env_var*, align 8
  store %struct.env_var* %0, %struct.env_var** %2, align 8
  %3 = load %struct.env_var*, %struct.env_var** %2, align 8
  %4 = getelementptr inbounds %struct.env_var, %struct.env_var* %3, i32 0, i32 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.env_var*, %struct.env_var** %2, align 8
  %9 = getelementptr inbounds %struct.env_var, %struct.env_var* %8, i32 0, i32 3
  %10 = load %struct.env_var*, %struct.env_var** %9, align 8
  %11 = load %struct.env_var*, %struct.env_var** %2, align 8
  %12 = getelementptr inbounds %struct.env_var, %struct.env_var* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.env_var* %10, %struct.env_var** %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.env_var*, %struct.env_var** %2, align 8
  %17 = getelementptr inbounds %struct.env_var, %struct.env_var* %16, i32 0, i32 3
  %18 = load %struct.env_var*, %struct.env_var** %17, align 8
  %19 = icmp ne %struct.env_var* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.env_var*, %struct.env_var** %2, align 8
  %22 = getelementptr inbounds %struct.env_var, %struct.env_var* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.env_var*, %struct.env_var** %2, align 8
  %25 = getelementptr inbounds %struct.env_var, %struct.env_var* %24, i32 0, i32 3
  %26 = load %struct.env_var*, %struct.env_var** %25, align 8
  %27 = getelementptr inbounds %struct.env_var, %struct.env_var* %26, i32 0, i32 4
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %27, align 8
  br label %28

28:                                               ; preds = %20, %15
  %29 = load %struct.env_var*, %struct.env_var** @environ, align 8
  %30 = load %struct.env_var*, %struct.env_var** %2, align 8
  %31 = icmp eq %struct.env_var* %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.env_var*, %struct.env_var** %2, align 8
  %34 = getelementptr inbounds %struct.env_var, %struct.env_var* %33, i32 0, i32 3
  %35 = load %struct.env_var*, %struct.env_var** %34, align 8
  store %struct.env_var* %35, %struct.env_var** @environ, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.env_var*, %struct.env_var** %2, align 8
  %38 = getelementptr inbounds %struct.env_var, %struct.env_var* %37, i32 0, i32 2
  %39 = load %struct.env_var*, %struct.env_var** %38, align 8
  %40 = call i32 @free(%struct.env_var* %39)
  %41 = load %struct.env_var*, %struct.env_var** %2, align 8
  %42 = getelementptr inbounds %struct.env_var, %struct.env_var* %41, i32 0, i32 1
  %43 = load %struct.env_var*, %struct.env_var** %42, align 8
  %44 = icmp ne %struct.env_var* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %36
  %46 = load %struct.env_var*, %struct.env_var** %2, align 8
  %47 = getelementptr inbounds %struct.env_var, %struct.env_var* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @EV_DYNAMIC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.env_var*, %struct.env_var** %2, align 8
  %54 = getelementptr inbounds %struct.env_var, %struct.env_var* %53, i32 0, i32 1
  %55 = load %struct.env_var*, %struct.env_var** %54, align 8
  %56 = call i32 @free(%struct.env_var* %55)
  br label %57

57:                                               ; preds = %52, %45, %36
  %58 = load %struct.env_var*, %struct.env_var** %2, align 8
  %59 = call i32 @free(%struct.env_var* %58)
  ret void
}

declare dso_local i32 @free(%struct.env_var*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
