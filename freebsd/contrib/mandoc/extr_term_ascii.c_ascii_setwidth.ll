; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ascii.c_ascii_setwidth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ascii.c_ascii_setwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, i32, i32)* @ascii_setwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ascii_setwidth(%struct.termp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.termp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = sdiv i32 %7, 24
  store i32 %8, i32* %6, align 4
  %9 = load %struct.termp*, %struct.termp** %4, align 8
  %10 = getelementptr inbounds %struct.termp, %struct.termp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.termp*, %struct.termp** %4, align 8
  %13 = getelementptr inbounds %struct.termp, %struct.termp* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.termp*, %struct.termp** %4, align 8
  %21 = getelementptr inbounds %struct.termp, %struct.termp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %61

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  br label %37

33:                                               ; preds = %27
  %34 = load %struct.termp*, %struct.termp** %4, align 8
  %35 = getelementptr inbounds %struct.termp, %struct.termp* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i64 [ %32, %30 ], [ %36, %33 ]
  %39 = trunc i64 %38 to i32
  %40 = load %struct.termp*, %struct.termp** %4, align 8
  %41 = getelementptr inbounds %struct.termp, %struct.termp* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %60

42:                                               ; preds = %24
  %43 = load %struct.termp*, %struct.termp** %4, align 8
  %44 = getelementptr inbounds %struct.termp, %struct.termp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ugt i64 %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.termp*, %struct.termp** %4, align 8
  %53 = getelementptr inbounds %struct.termp, %struct.termp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %59

56:                                               ; preds = %42
  %57 = load %struct.termp*, %struct.termp** %4, align 8
  %58 = getelementptr inbounds %struct.termp, %struct.termp* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %59, %37
  br label %61

61:                                               ; preds = %60, %18
  %62 = load %struct.termp*, %struct.termp** %4, align 8
  %63 = getelementptr inbounds %struct.termp, %struct.termp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 1000
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.termp*, %struct.termp** %4, align 8
  %68 = getelementptr inbounds %struct.termp, %struct.termp* %67, i32 0, i32 0
  store i32 1000, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.termp*, %struct.termp** %4, align 8
  %71 = getelementptr inbounds %struct.termp, %struct.termp* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.termp*, %struct.termp** %4, align 8
  %77 = getelementptr inbounds %struct.termp, %struct.termp* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.termp*, %struct.termp** %4, align 8
  %79 = getelementptr inbounds %struct.termp, %struct.termp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.termp*, %struct.termp** %4, align 8
  %82 = getelementptr inbounds %struct.termp, %struct.termp* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.termp*, %struct.termp** %4, align 8
  %84 = getelementptr inbounds %struct.termp, %struct.termp* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %80, i32* %86, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
