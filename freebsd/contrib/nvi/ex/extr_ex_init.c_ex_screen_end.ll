; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_init.c_ex_screen_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_init.c_ex_screen_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32* }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }

@SC_SCRIPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_screen_end(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %7 = call %struct.TYPE_17__* @EXP(%struct.TYPE_16__* %6)
  store %struct.TYPE_17__* %7, %struct.TYPE_17__** %4, align 8
  %8 = icmp eq %struct.TYPE_17__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

10:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = load i32, i32* @SC_SCRIPT, align 4
  %13 = call i64 @F_ISSET(%struct.TYPE_16__* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = call i64 @sscr_end(%struct.TYPE_16__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %15, %10
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = call i64 @argv_free(%struct.TYPE_16__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = icmp ne %struct.TYPE_17__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = call i32 @free(%struct.TYPE_17__* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = icmp ne %struct.TYPE_17__* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = call i32 @free(%struct.TYPE_17__* %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = icmp ne %struct.TYPE_17__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = call i32 @free(%struct.TYPE_17__* %57)
  br label %59

59:                                               ; preds = %52, %45
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = call i64 @ex_tag_free(%struct.TYPE_16__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %59
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = call i64 @cscope_end(%struct.TYPE_16__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 1, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %64
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %71 = call i32 @free(%struct.TYPE_17__* %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %69, %9
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_17__* @EXP(%struct.TYPE_16__*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @sscr_end(%struct.TYPE_16__*) #1

declare dso_local i64 @argv_free(%struct.TYPE_16__*) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

declare dso_local i64 @ex_tag_free(%struct.TYPE_16__*) #1

declare dso_local i64 @cscope_end(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
