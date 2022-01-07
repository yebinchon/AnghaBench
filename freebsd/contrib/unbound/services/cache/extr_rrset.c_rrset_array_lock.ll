; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_array_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_array_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_ref = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.packed_rrset_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrset_array_lock(%struct.rrset_ref* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rrset_ref*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rrset_ref* %0, %struct.rrset_ref** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %72, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %75

13:                                               ; preds = %9
  %14 = load i64, i64* %8, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load %struct.rrset_ref*, %struct.rrset_ref** %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %17, i64 %18
  %20 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.rrset_ref*, %struct.rrset_ref** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = sub i64 %23, 1
  %25 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %22, i64 %24
  %26 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp eq %struct.TYPE_4__* %21, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %72

30:                                               ; preds = %16, %13
  %31 = load %struct.rrset_ref*, %struct.rrset_ref** %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %31, i64 %32
  %34 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = call i32 @lock_rw_rdlock(i32* %37)
  %39 = load %struct.rrset_ref*, %struct.rrset_ref** %5, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %39, i64 %40
  %42 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.rrset_ref*, %struct.rrset_ref** %5, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %44, i64 %45
  %47 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %43, %50
  br i1 %51, label %66, label %52

52:                                               ; preds = %30
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.rrset_ref*, %struct.rrset_ref** %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %54, i64 %55
  %57 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.packed_rrset_data*
  %63 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %53, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %52, %30
  %67 = load %struct.rrset_ref*, %struct.rrset_ref** %5, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  %70 = call i32 @rrset_array_unlock(%struct.rrset_ref* %67, i64 %69)
  store i32 0, i32* %4, align 4
  br label %76

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71, %29
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %9

75:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %66
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local i32 @rrset_array_unlock(%struct.rrset_ref*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
