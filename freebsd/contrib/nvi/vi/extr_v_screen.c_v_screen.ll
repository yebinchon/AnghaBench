; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_screen.c_v_screen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_screen.c_v_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@SC_COMEDIT = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"308|Enter <CR> to execute a command, :q to exit\00", align 1
@q = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"187|No other screen to switch to\00", align 1
@SC_STATUS = common dso_local global i32 0, align 4
@SC_SSWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_screen(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %7 = load i32, i32* @SC_COMEDIT, align 4
  %8 = call i64 @F_ISSET(%struct.TYPE_11__* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = load i32, i32* @M_ERR, align 4
  %13 = call i32 @msgq(%struct.TYPE_11__* %11, i32 %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = load i32, i32* @q, align 4
  %17 = call %struct.TYPE_11__* @TAILQ_NEXT(%struct.TYPE_11__* %15, i32 %16)
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = load i32, i32* @q, align 4
  %22 = call %struct.TYPE_11__* @TAILQ_NEXT(%struct.TYPE_11__* %20, i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %24, align 8
  br label %48

25:                                               ; preds = %14
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_11__* @TAILQ_FIRST(i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = icmp eq %struct.TYPE_11__* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = load i32, i32* @M_ERR, align 4
  %37 = call i32 @msgq(%struct.TYPE_11__* %35, i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %59

38:                                               ; preds = %25
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_11__* @TAILQ_FIRST(i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %46, align 8
  br label %47

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %19
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load i32, i32* @SC_STATUS, align 4
  %53 = call i32 @F_SET(%struct.TYPE_11__* %51, i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = load i32, i32* @SC_SSWITCH, align 4
  %56 = load i32, i32* @SC_STATUS, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @F_SET(%struct.TYPE_11__* %54, i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %48, %34, %10
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @F_ISSET(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @msgq(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local %struct.TYPE_11__* @TAILQ_NEXT(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @TAILQ_FIRST(i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
