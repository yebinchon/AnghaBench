; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_t4.h_t4_sq_consume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_t4.h_t4_sq_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_wq = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_wq*)* @t4_sq_consume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_sq_consume(%struct.t4_wq* %0) #0 {
  %2 = alloca %struct.t4_wq*, align 8
  store %struct.t4_wq* %0, %struct.t4_wq** %2, align 8
  %3 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %4 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp sge i32 %6, 1
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %11 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %15 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %13, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %21 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i64 -1, i64* %22, align 8
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %25 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %30 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %35 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %41 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %23
  %44 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %45 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %49 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %47, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %43
  %54 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %55 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br label %59

59:                                               ; preds = %53, %43
  %60 = phi i1 [ true, %43 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %64 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %59
  %68 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %69 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %73 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %77 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i64 %71, i64* %82, align 8
  br label %83

83:                                               ; preds = %67, %59
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
