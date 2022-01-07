; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_undo.c_v_undo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_undo.c_v_undo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@F_UNDO = common dso_local global i32 0, align 4
@VC_ISDOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_undo(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = call %struct.TYPE_14__* @VIP(%struct.TYPE_13__* %10)
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %6, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = load i32, i32* @F_UNDO, align 4
  %18 = call i32 @F_ISSET(%struct.TYPE_12__* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = load i32, i32* @F_UNDO, align 4
  %23 = call i32 @F_SET(%struct.TYPE_12__* %21, i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 129, i32* %25, align 4
  br label %41

26:                                               ; preds = %2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = load i32, i32* @VC_ISDOT, align 4
  %29 = call i32 @F_ISSET(%struct.TYPE_12__* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 129
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 128, i32 129
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %31, %26
  br label %41

41:                                               ; preds = %40, %20
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %55 [
    i32 129, label %45
    i32 128, label %50
  ]

45:                                               ; preds = %41
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = call i32 @log_backward(%struct.TYPE_13__* %46, i32* %48)
  store i32 %49, i32* %3, align 4
  br label %57

50:                                               ; preds = %41
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = call i32 @log_forward(%struct.TYPE_13__* %51, i32* %53)
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %41
  %56 = call i32 (...) @abort() #3
  unreachable

57:                                               ; preds = %50, %45
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_14__* @VIP(%struct.TYPE_13__*) #1

declare dso_local i32 @F_ISSET(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @log_backward(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @log_forward(%struct.TYPE_13__*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
