; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_ub_rrset_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_ub_rrset_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_rrset_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca %struct.ub_packed_rrset_key*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ub_packed_rrset_key*
  store %struct.ub_packed_rrset_key* %10, %struct.ub_packed_rrset_key** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ub_packed_rrset_key*
  store %struct.ub_packed_rrset_key* %12, %struct.ub_packed_rrset_key** %7, align 8
  %13 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %14 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %15 = icmp eq %struct.ub_packed_rrset_key* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %119

17:                                               ; preds = %2
  %18 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %19 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %23 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %21, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %17
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %29 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %33 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %119

38:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %119

39:                                               ; preds = %17
  %40 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %41 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %45 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %43, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %39
  %50 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %51 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %55 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %119

60:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %119

61:                                               ; preds = %39
  %62 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %63 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %67 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @query_dname_compare(i32 %65, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %119

74:                                               ; preds = %61
  %75 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %76 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %80 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %78, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %74
  %85 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %86 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %90 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  store i32 -1, i32* %3, align 4
  br label %119

95:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  br label %119

96:                                               ; preds = %74
  %97 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %98 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %102 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %100, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %96
  %107 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %108 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %112 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %110, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  store i32 -1, i32* %3, align 4
  br label %119

117:                                              ; preds = %106
  store i32 1, i32* %3, align 4
  br label %119

118:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %117, %116, %95, %94, %72, %60, %59, %38, %37, %16
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @query_dname_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
