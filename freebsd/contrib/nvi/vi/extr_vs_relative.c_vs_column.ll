; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_relative.c_vs_column.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_relative.c_vs_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@O_LEFTRIGHT = common dso_local global i32 0, align 4
@O_NUMBER = common dso_local global i32 0, align 4
@O_NUMBER_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vs_column(%struct.TYPE_10__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = call %struct.TYPE_9__* @VIP(%struct.TYPE_10__* %6)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = load i32, i32* @O_LEFTRIGHT, align 4
  %10 = call i64 @O_ISSET(%struct.TYPE_10__* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  br label %29

29:                                               ; preds = %18, %12
  %30 = phi i32 [ %17, %12 ], [ %28, %18 ]
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %30, %33
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = load i32, i32* @O_NUMBER, align 4
  %37 = call i64 @O_ISSET(%struct.TYPE_10__* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @O_NUMBER_LENGTH, align 4
  br label %42

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  %44 = sub nsw i32 %34, %43
  %45 = sext i32 %44 to i64
  %46 = load i64*, i64** %4, align 8
  store i64 %45, i64* %46, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_9__* @VIP(%struct.TYPE_10__*) #1

declare dso_local i64 @O_ISSET(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
