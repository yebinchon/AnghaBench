; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_special_obtain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_special_obtain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.alloc_cache = type { %struct.TYPE_6__*, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [36 x i8] c"alloc_special_obtain: out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @alloc_special_obtain(%struct.alloc_cache* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.alloc_cache*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.alloc_cache* %0, %struct.alloc_cache** %3, align 8
  %5 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %6 = call i32 @log_assert(%struct.alloc_cache* %5)
  %7 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %8 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %7, i32 0, i32 2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %13 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = call i8* @alloc_special_next(%struct.TYPE_7__* %15)
  %17 = bitcast i8* %16 to %struct.TYPE_7__*
  %18 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %19 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %18, i32 0, i32 2
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %19, align 8
  %20 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %21 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %25 = call i8* @alloc_get_id(%struct.alloc_cache* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %2, align 8
  br label %91

29:                                               ; preds = %1
  %30 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %31 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %75

34:                                               ; preds = %29
  %35 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %36 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @lock_quick_lock(i32* %38)
  %40 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %41 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %4, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %34
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = call i8* @alloc_special_next(%struct.TYPE_7__* %47)
  %49 = bitcast i8* %48 to %struct.TYPE_7__*
  %50 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %51 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %53, align 8
  %54 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %55 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %46, %34
  %61 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %62 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i32 @lock_quick_unlock(i32* %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = icmp ne %struct.TYPE_7__* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %70 = call i8* @alloc_get_id(%struct.alloc_cache* %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %2, align 8
  br label %91

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %29
  %76 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %77 = call i32 @prealloc_setup(%struct.alloc_cache* %76)
  %78 = call i64 @malloc(i32 8)
  %79 = inttoptr i64 %78 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %4, align 8
  %80 = icmp ne %struct.TYPE_7__* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = call i32 @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %91

83:                                               ; preds = %75
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = call i32 @alloc_setup_special(%struct.TYPE_7__* %84)
  %86 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %87 = call i8* @alloc_get_id(%struct.alloc_cache* %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %2, align 8
  br label %91

91:                                               ; preds = %83, %81, %68, %11
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %92
}

declare dso_local i32 @log_assert(%struct.alloc_cache*) #1

declare dso_local i8* @alloc_special_next(%struct.TYPE_7__*) #1

declare dso_local i8* @alloc_get_id(%struct.alloc_cache*) #1

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

declare dso_local i32 @prealloc_setup(%struct.alloc_cache*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @alloc_setup_special(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
