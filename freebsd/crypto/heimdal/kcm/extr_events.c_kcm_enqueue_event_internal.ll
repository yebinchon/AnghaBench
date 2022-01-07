; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_events.c_kcm_enqueue_event_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_events.c_kcm_enqueue_event_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_5__*, i32, i32, i32, i64, i32 }

@KCM_EVENT_NONE = common dso_local global i64 0, align 8
@events_head = common dso_local global %struct.TYPE_5__* null, align 8
@KRB5_CC_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"enqueuing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kcm_enqueue_event_internal(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__**, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @KCM_EVENT_NONE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

13:                                               ; preds = %2
  store %struct.TYPE_5__** @events_head, %struct.TYPE_5__*** %6, align 8
  br label %14

14:                                               ; preds = %19, %13
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store %struct.TYPE_5__** %22, %struct.TYPE_5__*** %6, align 8
  br label %14

23:                                               ; preds = %14
  %24 = call i64 @malloc(i32 56)
  %25 = inttoptr i64 %24 to %struct.TYPE_5__*
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %26, align 8
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @KRB5_CC_NOMEM, align 4
  store i32 %31, i32* %3, align 4
  br label %80

32:                                               ; preds = %23
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 7
  store i32 %38, i32* %41, align 8
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  store i32 %53, i32* %56, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @kcm_retain_ccache(i32 %63, i32 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 8
  %74 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %76, align 8
  %77 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = call i32 @log_event(%struct.TYPE_5__* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %32, %30, %12
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @kcm_retain_ccache(i32, i32) #1

declare dso_local i32 @log_event(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
