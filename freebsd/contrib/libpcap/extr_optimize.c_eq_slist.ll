; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_eq_slist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_eq_slist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slist = type { %struct.slist*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@NOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slist*, %struct.slist*)* @eq_slist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eq_slist(%struct.slist* %0, %struct.slist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.slist*, align 8
  %5 = alloca %struct.slist*, align 8
  store %struct.slist* %0, %struct.slist** %4, align 8
  store %struct.slist* %1, %struct.slist** %5, align 8
  br label %6

6:                                                ; preds = %75, %2
  br label %7

7:                                                ; preds = %19, %6
  %8 = load %struct.slist*, %struct.slist** %4, align 8
  %9 = icmp ne %struct.slist* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load %struct.slist*, %struct.slist** %4, align 8
  %12 = getelementptr inbounds %struct.slist, %struct.slist* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NOP, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %10, %7
  %18 = phi i1 [ false, %7 ], [ %16, %10 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = load %struct.slist*, %struct.slist** %4, align 8
  %21 = getelementptr inbounds %struct.slist, %struct.slist* %20, i32 0, i32 0
  %22 = load %struct.slist*, %struct.slist** %21, align 8
  store %struct.slist* %22, %struct.slist** %4, align 8
  br label %7

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %36, %23
  %25 = load %struct.slist*, %struct.slist** %5, align 8
  %26 = icmp ne %struct.slist* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.slist*, %struct.slist** %5, align 8
  %29 = getelementptr inbounds %struct.slist, %struct.slist* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NOP, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %27, %24
  %35 = phi i1 [ false, %24 ], [ %33, %27 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = load %struct.slist*, %struct.slist** %5, align 8
  %38 = getelementptr inbounds %struct.slist, %struct.slist* %37, i32 0, i32 0
  %39 = load %struct.slist*, %struct.slist** %38, align 8
  store %struct.slist* %39, %struct.slist** %5, align 8
  br label %24

40:                                               ; preds = %34
  %41 = load %struct.slist*, %struct.slist** %4, align 8
  %42 = icmp eq %struct.slist* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.slist*, %struct.slist** %5, align 8
  %45 = icmp eq %struct.slist* %44, null
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %82

47:                                               ; preds = %40
  %48 = load %struct.slist*, %struct.slist** %5, align 8
  %49 = icmp eq %struct.slist* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.slist*, %struct.slist** %4, align 8
  %52 = icmp eq %struct.slist* %51, null
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %82

54:                                               ; preds = %47
  %55 = load %struct.slist*, %struct.slist** %4, align 8
  %56 = getelementptr inbounds %struct.slist, %struct.slist* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.slist*, %struct.slist** %5, align 8
  %60 = getelementptr inbounds %struct.slist, %struct.slist* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %58, %62
  br i1 %63, label %74, label %64

64:                                               ; preds = %54
  %65 = load %struct.slist*, %struct.slist** %4, align 8
  %66 = getelementptr inbounds %struct.slist, %struct.slist* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.slist*, %struct.slist** %5, align 8
  %70 = getelementptr inbounds %struct.slist, %struct.slist* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %68, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64, %54
  store i32 0, i32* %3, align 4
  br label %82

75:                                               ; preds = %64
  %76 = load %struct.slist*, %struct.slist** %4, align 8
  %77 = getelementptr inbounds %struct.slist, %struct.slist* %76, i32 0, i32 0
  %78 = load %struct.slist*, %struct.slist** %77, align 8
  store %struct.slist* %78, %struct.slist** %4, align 8
  %79 = load %struct.slist*, %struct.slist** %5, align 8
  %80 = getelementptr inbounds %struct.slist, %struct.slist* %79, i32 0, i32 0
  %81 = load %struct.slist*, %struct.slist** %80, align 8
  store %struct.slist* %81, %struct.slist** %5, align 8
  br label %6

82:                                               ; preds = %74, %50, %43
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
