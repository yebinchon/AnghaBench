; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_radix.c_ldns_radix_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_radix.c_ldns_radix_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__*, i64, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ldns_radix_next(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %86

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = call %struct.TYPE_8__* @ldns_radix_next_in_subtree(%struct.TYPE_8__* %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %4, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %2, align 8
  br label %86

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %10
  br label %24

24:                                               ; preds = %84, %23
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %85

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %81, %29
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %84

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = icmp ne %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %80

53:                                               ; preds = %44
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %53
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %2, align 8
  br label %86

72:                                               ; preds = %53
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = call %struct.TYPE_8__* @ldns_radix_next_in_subtree(%struct.TYPE_8__* %73)
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %6, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = icmp ne %struct.TYPE_8__* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %2, align 8
  br label %86

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %44
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %5, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %5, align 8
  br label %38

84:                                               ; preds = %38
  br label %24

85:                                               ; preds = %24
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %86

86:                                               ; preds = %85, %77, %64, %20, %9
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %87
}

declare dso_local %struct.TYPE_8__* @ldns_radix_next_in_subtree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
