; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vi.c_v_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vi.c_v_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*)* }
%struct.TYPE_15__ = type { i32, i32 }

@GC_FATAL = common dso_local global i32 0, align 4
@K_VLNEXT = common dso_local global i32 0, align 4
@EC_QUOTED = common dso_local global i32 0, align 4
@GC_OK = common dso_local global i32 0, align 4
@GC_INTERRUPT = common dso_local global i32 0, align 4
@GC_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, %struct.TYPE_15__*, i32)* @v_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v_key(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_15__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %61, %4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = or i32 %14, %15
  %17 = call i64 @v_event_get(%struct.TYPE_14__* %12, %struct.TYPE_15__* %13, i32 0, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @GC_FATAL, align 4
  store i32 %20, i32* %5, align 4
  br label %62

21:                                               ; preds = %11
  store i32 0, i32* %10, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %56 [
    i32 133, label %25
    i32 131, label %35
    i32 132, label %35
    i32 130, label %37
    i32 129, label %46
    i32 128, label %54
  ]

25:                                               ; preds = %21
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @K_VLNEXT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @EC_QUOTED, align 4
  store i32 %32, i32* %10, align 4
  br label %61

33:                                               ; preds = %25
  %34 = load i32, i32* @GC_OK, align 4
  store i32 %34, i32* %5, align 4
  br label %62

35:                                               ; preds = %21, %21
  %36 = load i32, i32* @GC_FATAL, align 4
  store i32 %36, i32* %5, align 4
  br label %62

37:                                               ; preds = %21
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %41, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = call i32 %42(%struct.TYPE_14__* %43)
  %45 = load i32, i32* @GC_INTERRUPT, align 4
  store i32 %45, i32* %5, align 4
  br label %62

46:                                               ; preds = %21
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = call i32 @vs_repaint(%struct.TYPE_14__* %47, %struct.TYPE_15__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @GC_FATAL, align 4
  store i32 %52, i32* %5, align 4
  br label %62

53:                                               ; preds = %46
  br label %61

54:                                               ; preds = %21
  %55 = load i32, i32* @GC_ERR, align 4
  store i32 %55, i32* %5, align 4
  br label %62

56:                                               ; preds = %21
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = call i32 @v_event_err(%struct.TYPE_14__* %57, %struct.TYPE_15__* %58)
  %60 = load i32, i32* @GC_ERR, align 4
  store i32 %60, i32* %5, align 4
  br label %62

61:                                               ; preds = %53, %31
  br label %11

62:                                               ; preds = %56, %54, %51, %37, %35, %33, %19
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @v_event_get(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @vs_repaint(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @v_event_err(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
