; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_timehist.c_timehist_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_timehist.c_timehist_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timehist = type { i32, %struct.th_buck* }
%struct.th_buck = type { i32 }

@NUM_BUCKETS_HIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.timehist* @timehist_setup() #0 {
  %1 = alloca %struct.timehist*, align 8
  %2 = alloca %struct.timehist*, align 8
  %3 = call i64 @calloc(i32 1, i32 16)
  %4 = inttoptr i64 %3 to %struct.timehist*
  store %struct.timehist* %4, %struct.timehist** %2, align 8
  %5 = load %struct.timehist*, %struct.timehist** %2, align 8
  %6 = icmp ne %struct.timehist* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.timehist* null, %struct.timehist** %1, align 8
  br label %30

8:                                                ; preds = %0
  %9 = load i32, i32* @NUM_BUCKETS_HIST, align 4
  %10 = load %struct.timehist*, %struct.timehist** %2, align 8
  %11 = getelementptr inbounds %struct.timehist, %struct.timehist* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.timehist*, %struct.timehist** %2, align 8
  %13 = getelementptr inbounds %struct.timehist, %struct.timehist* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @calloc(i32 %14, i32 4)
  %16 = inttoptr i64 %15 to %struct.th_buck*
  %17 = load %struct.timehist*, %struct.timehist** %2, align 8
  %18 = getelementptr inbounds %struct.timehist, %struct.timehist* %17, i32 0, i32 1
  store %struct.th_buck* %16, %struct.th_buck** %18, align 8
  %19 = load %struct.timehist*, %struct.timehist** %2, align 8
  %20 = getelementptr inbounds %struct.timehist, %struct.timehist* %19, i32 0, i32 1
  %21 = load %struct.th_buck*, %struct.th_buck** %20, align 8
  %22 = icmp ne %struct.th_buck* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %8
  %24 = load %struct.timehist*, %struct.timehist** %2, align 8
  %25 = call i32 @free(%struct.timehist* %24)
  store %struct.timehist* null, %struct.timehist** %1, align 8
  br label %30

26:                                               ; preds = %8
  %27 = load %struct.timehist*, %struct.timehist** %2, align 8
  %28 = call i32 @dosetup(%struct.timehist* %27)
  %29 = load %struct.timehist*, %struct.timehist** %2, align 8
  store %struct.timehist* %29, %struct.timehist** %1, align 8
  br label %30

30:                                               ; preds = %26, %23, %7
  %31 = load %struct.timehist*, %struct.timehist** %1, align 8
  ret %struct.timehist* %31
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.timehist*) #1

declare dso_local i32 @dosetup(%struct.timehist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
