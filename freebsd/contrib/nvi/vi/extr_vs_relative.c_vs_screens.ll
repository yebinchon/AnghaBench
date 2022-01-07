; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_relative.c_vs_screens.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_relative.c_vs_screens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64 }

@O_LEFTRIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vs_screens(%struct.TYPE_7__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = load i32, i32* @O_LEFTRIGHT, align 4
  %12 = call i64 @O_ISSET(%struct.TYPE_7__* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i64 1, i64* %4, align 8
  br label %74

15:                                               ; preds = %3
  %16 = load i64*, i64** %7, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = call %struct.TYPE_8__* @VIP(%struct.TYPE_7__* %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = call %struct.TYPE_8__* @VIP(%struct.TYPE_7__* %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %4, align 8
  br label %74

30:                                               ; preds = %18
  br label %37

31:                                               ; preds = %15
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i64 1, i64* %4, align 8
  br label %74

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %30
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = call i64 @vs_columns(%struct.TYPE_7__* %38, i32* null, i64 %39, i64* %40, i32* null)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = udiv i64 %42, %45
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = urem i64 %47, %50
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = sext i32 %54 to i64
  %56 = add i64 %46, %55
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %37
  store i64 1, i64* %9, align 8
  br label %60

60:                                               ; preds = %59, %37
  %61 = load i64*, i64** %7, align 8
  %62 = icmp eq i64* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = call %struct.TYPE_8__* @VIP(%struct.TYPE_7__* %65)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = call %struct.TYPE_8__* @VIP(%struct.TYPE_7__* %69)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i64 %68, i64* %71, align 8
  br label %72

72:                                               ; preds = %63, %60
  %73 = load i64, i64* %9, align 8
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %72, %35, %25, %14
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local i64 @O_ISSET(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_8__* @VIP(%struct.TYPE_7__*) #1

declare dso_local i64 @vs_columns(%struct.TYPE_7__*, i32*, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
