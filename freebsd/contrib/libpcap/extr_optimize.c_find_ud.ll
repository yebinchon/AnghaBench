; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_find_ud.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_find_ud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.block** }
%struct.block = type { i32, i32, i32, i32, %struct.block* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.block*)* @find_ud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_ud(%struct.TYPE_5__* %0, %struct.block* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.block*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.block* %1, %struct.block** %4, align 8
  %8 = load %struct.block*, %struct.block** %4, align 8
  %9 = getelementptr inbounds %struct.block, %struct.block* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %36, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.block**, %struct.block*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.block*, %struct.block** %18, i64 %20
  %22 = load %struct.block*, %struct.block** %21, align 8
  store %struct.block* %22, %struct.block** %7, align 8
  br label %23

23:                                               ; preds = %31, %15
  %24 = load %struct.block*, %struct.block** %7, align 8
  %25 = icmp ne %struct.block* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.block*, %struct.block** %7, align 8
  %28 = call i32 @compute_local_ud(%struct.block* %27)
  %29 = load %struct.block*, %struct.block** %7, align 8
  %30 = getelementptr inbounds %struct.block, %struct.block* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %26
  %32 = load %struct.block*, %struct.block** %7, align 8
  %33 = getelementptr inbounds %struct.block, %struct.block* %32, i32 0, i32 4
  %34 = load %struct.block*, %struct.block** %33, align 8
  store %struct.block* %34, %struct.block** %7, align 8
  br label %23

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %5, align 4
  br label %12

39:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %86, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %89

44:                                               ; preds = %40
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.block**, %struct.block*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.block*, %struct.block** %47, i64 %49
  %51 = load %struct.block*, %struct.block** %50, align 8
  store %struct.block* %51, %struct.block** %7, align 8
  br label %52

52:                                               ; preds = %81, %44
  %53 = load %struct.block*, %struct.block** %7, align 8
  %54 = icmp ne %struct.block* %53, null
  br i1 %54, label %55, label %85

55:                                               ; preds = %52
  %56 = load %struct.block*, %struct.block** %7, align 8
  %57 = call %struct.TYPE_6__* @JT(%struct.block* %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.block*, %struct.block** %7, align 8
  %61 = call %struct.TYPE_7__* @JF(%struct.block* %60)
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %59, %63
  %65 = load %struct.block*, %struct.block** %7, align 8
  %66 = getelementptr inbounds %struct.block, %struct.block* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.block*, %struct.block** %7, align 8
  %70 = getelementptr inbounds %struct.block, %struct.block* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.block*, %struct.block** %7, align 8
  %73 = getelementptr inbounds %struct.block, %struct.block* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %71, %75
  %77 = load %struct.block*, %struct.block** %7, align 8
  %78 = getelementptr inbounds %struct.block, %struct.block* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %55
  %82 = load %struct.block*, %struct.block** %7, align 8
  %83 = getelementptr inbounds %struct.block, %struct.block* %82, i32 0, i32 4
  %84 = load %struct.block*, %struct.block** %83, align 8
  store %struct.block* %84, %struct.block** %7, align 8
  br label %52

85:                                               ; preds = %52
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %40

89:                                               ; preds = %40
  ret void
}

declare dso_local i32 @compute_local_ud(%struct.block*) #1

declare dso_local %struct.TYPE_6__* @JT(%struct.block*) #1

declare dso_local %struct.TYPE_7__* @JF(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
