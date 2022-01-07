; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_array_unlock_touch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_array_unlock_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_cache = type { i32 }
%struct.regional = type { i32 }
%struct.rrset_ref = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@RR_COUNT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"rrset LRU: memory allocation failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrset_array_unlock_touch(%struct.rrset_cache* %0, %struct.regional* %1, %struct.rrset_ref* %2, i64 %3) #0 {
  %5 = alloca %struct.rrset_cache*, align 8
  %6 = alloca %struct.regional*, align 8
  %7 = alloca %struct.rrset_ref*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.rrset_cache* %0, %struct.rrset_cache** %5, align 8
  store %struct.regional* %1, %struct.regional** %6, align 8
  store %struct.rrset_ref* %2, %struct.rrset_ref** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @RR_COUNT_MAX, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %4
  %15 = load %struct.regional*, %struct.regional** %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = call i64 @regional_alloc(%struct.regional* %15, i32 %18)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %14, %4
  %23 = call i32 @log_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %9, align 8
  br label %45

24:                                               ; preds = %14
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.rrset_ref*, %struct.rrset_ref** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %30, i64 %31
  %33 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %29
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %10, align 8
  br label %25

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44, %22
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %76, %45
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  %51 = load i64, i64* %10, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load %struct.rrset_ref*, %struct.rrset_ref** %7, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %54, i64 %55
  %57 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load %struct.rrset_ref*, %struct.rrset_ref** %7, align 8
  %60 = load i64, i64* %10, align 8
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %59, i64 %61
  %63 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = icmp eq %struct.TYPE_4__* %58, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %76

67:                                               ; preds = %53, %50
  %68 = load %struct.rrset_ref*, %struct.rrset_ref** %7, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %68, i64 %69
  %71 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = call i32 @lock_rw_unlock(i32* %74)
  br label %76

76:                                               ; preds = %67, %66
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %10, align 8
  br label %46

79:                                               ; preds = %46
  %80 = load i32*, i32** %9, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %125

82:                                               ; preds = %79
  store i64 0, i64* %10, align 8
  br label %83

83:                                               ; preds = %121, %82
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %124

87:                                               ; preds = %83
  %88 = load i64, i64* %10, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load %struct.rrset_ref*, %struct.rrset_ref** %7, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %91, i64 %92
  %94 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load %struct.rrset_ref*, %struct.rrset_ref** %7, align 8
  %97 = load i64, i64* %10, align 8
  %98 = sub i64 %97, 1
  %99 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %96, i64 %98
  %100 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = icmp eq %struct.TYPE_4__* %95, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  br label %121

104:                                              ; preds = %90, %87
  %105 = load %struct.rrset_cache*, %struct.rrset_cache** %5, align 8
  %106 = load %struct.rrset_ref*, %struct.rrset_ref** %7, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %106, i64 %107
  %109 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.rrset_ref*, %struct.rrset_ref** %7, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %115, i64 %116
  %118 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @rrset_cache_touch(%struct.rrset_cache* %105, %struct.TYPE_4__* %110, i32 %114, i32 %119)
  br label %121

121:                                              ; preds = %104, %103
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %10, align 8
  br label %83

124:                                              ; preds = %83
  br label %125

125:                                              ; preds = %124, %79
  ret void
}

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @rrset_cache_touch(%struct.rrset_cache*, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
