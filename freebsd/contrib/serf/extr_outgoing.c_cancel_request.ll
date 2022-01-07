; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_cancel_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_cancel_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32, i32, i32 (%struct.TYPE_6__*, i32*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_6__**, i32)* @cancel_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cancel_request(%struct.TYPE_6__* %0, %struct.TYPE_6__** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = load i32 (%struct.TYPE_6__*, i32*, i32, i32)*, i32 (%struct.TYPE_6__*, i32*, i32, i32)** %9, align 8
  %11 = icmp ne i32 (%struct.TYPE_6__*, i32*, i32, i32)* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i32 (%struct.TYPE_6__*, i32*, i32, i32)*, i32 (%struct.TYPE_6__*, i32*, i32, i32)** %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %18(%struct.TYPE_6__* %19, i32* null, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %15, %12, %3
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = icmp eq %struct.TYPE_6__* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %36, align 8
  br label %71

37:                                               ; preds = %27
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %7, align 8
  br label %40

40:                                               ; preds = %53, %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = icmp ne %struct.TYPE_6__* %48, %49
  br label %51

51:                                               ; preds = %45, %40
  %52 = phi i1 [ false, %40 ], [ %50, %45 ]
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %7, align 8
  br label %40

57:                                               ; preds = %51
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = icmp ne %struct.TYPE_6__* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %69, align 8
  br label %70

70:                                               ; preds = %62, %57
  br label %71

71:                                               ; preds = %70, %32
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = call i32 @destroy_request(%struct.TYPE_6__* %72)
  ret i32 %73
}

declare dso_local i32 @destroy_request(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
