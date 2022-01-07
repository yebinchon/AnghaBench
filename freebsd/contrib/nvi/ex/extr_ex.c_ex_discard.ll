; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex.c_ex_discard.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex.c_ex_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32 }

@E_NAMEDISCARD = common dso_local global i32 0, align 4
@AGV_ALL = common dso_local global i32 0, align 4
@q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @ex_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ex_discard(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %3, align 8
  br label %9

9:                                                ; preds = %57, %1
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_12__* @SLIST_FIRST(i32 %12)
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %4, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = load i32, i32* @E_NAMEDISCARD, align 4
  %16 = call i64 @F_ISSET(%struct.TYPE_12__* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %9
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = call i32 @free(%struct.TYPE_12__* %21)
  br label %23

23:                                               ; preds = %18, %9
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = icmp eq %struct.TYPE_12__* %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %65

29:                                               ; preds = %23
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AGV_ALL, align 4
  %34 = call i64 @FL_ISSET(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %43, %36
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_12__* @TAILQ_FIRST(i32 %40)
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %5, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = load i32, i32* @q, align 4
  %49 = call i32 @TAILQ_REMOVE(i32 %46, %struct.TYPE_12__* %47, i32 %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = call i32 @free(%struct.TYPE_12__* %50)
  br label %37

52:                                               ; preds = %37
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = call i32 @free(%struct.TYPE_12__* %55)
  br label %57

57:                                               ; preds = %52, %29
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @q, align 4
  %62 = call i32 @SLIST_REMOVE_HEAD(i32 %60, i32 %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = call i32 @free(%struct.TYPE_12__* %63)
  br label %9

65:                                               ; preds = %28
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %67, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_12__* @SLIST_FIRST(i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i64 @FL_ISSET(i32, i32) #1

declare dso_local %struct.TYPE_12__* @TAILQ_FIRST(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
