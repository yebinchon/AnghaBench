; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_del_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_del_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32 }
%struct.local_zone = type { i32, i32*, i32 }
%struct.local_data = type { i32, i32* }

@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_zones_del_data(%struct.local_zones* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.local_zones*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.local_zone*, align 8
  %12 = alloca %struct.local_data*, align 8
  store %struct.local_zones* %0, %struct.local_zones** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %14 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %13, i32 0, i32 0
  %15 = call i32 @lock_rw_rdlock(i32* %14)
  %16 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %22 = call %struct.local_zone* @local_zones_lookup(%struct.local_zones* %16, i32* %17, i64 %18, i32 %19, i32 %20, i32 %21)
  store %struct.local_zone* %22, %struct.local_zone** %11, align 8
  %23 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %24 = icmp ne %struct.local_zone* %23, null
  br i1 %24, label %25, label %50

25:                                               ; preds = %5
  %26 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %27 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %26, i32 0, i32 0
  %28 = call i32 @lock_rw_wrlock(i32* %27)
  %29 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.local_data* @lz_find_node(%struct.local_zone* %29, i32* %30, i64 %31, i32 %32)
  store %struct.local_data* %33, %struct.local_data** %12, align 8
  %34 = load %struct.local_data*, %struct.local_data** %12, align 8
  %35 = icmp ne %struct.local_data* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %25
  %37 = load %struct.local_data*, %struct.local_data** %12, align 8
  %38 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %39 = call i32 @del_local_rrset(%struct.local_data* %37, i32 %38)
  %40 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %41 = load %struct.local_data*, %struct.local_data** %12, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @del_empty_term(%struct.local_zone* %40, %struct.local_data* %41, i32* %42, i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %25
  %47 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %48 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %47, i32 0, i32 0
  %49 = call i32 @lock_rw_unlock(i32* %48)
  br label %50

50:                                               ; preds = %46, %5
  %51 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %52 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %51, i32 0, i32 0
  %53 = call i32 @lock_rw_unlock(i32* %52)
  %54 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %55 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %54, i32 0, i32 0
  %56 = call i32 @lock_rw_rdlock(i32* %55)
  %57 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call %struct.local_zone* @local_zones_lookup(%struct.local_zones* %57, i32* %58, i64 %59, i32 %60, i32 %61, i32 0)
  store %struct.local_zone* %62, %struct.local_zone** %11, align 8
  %63 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %64 = icmp ne %struct.local_zone* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %50
  %66 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %67 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %66, i32 0, i32 0
  %68 = call i32 @lock_rw_unlock(i32* %67)
  br label %108

69:                                               ; preds = %50
  %70 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %71 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %70, i32 0, i32 0
  %72 = call i32 @lock_rw_wrlock(i32* %71)
  %73 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %74 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %73, i32 0, i32 0
  %75 = call i32 @lock_rw_unlock(i32* %74)
  %76 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call %struct.local_data* @lz_find_node(%struct.local_zone* %76, i32* %77, i64 %78, i32 %79)
  store %struct.local_data* %80, %struct.local_data** %12, align 8
  %81 = load %struct.local_data*, %struct.local_data** %12, align 8
  %82 = icmp ne %struct.local_data* %81, null
  br i1 %82, label %83, label %104

83:                                               ; preds = %69
  %84 = load %struct.local_data*, %struct.local_data** %12, align 8
  %85 = getelementptr inbounds %struct.local_data, %struct.local_data* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  %86 = load %struct.local_data*, %struct.local_data** %12, align 8
  %87 = getelementptr inbounds %struct.local_data, %struct.local_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %90 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @query_dname_compare(i32 %88, i32 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %96 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %95, i32 0, i32 1
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %94, %83
  %98 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %99 = load %struct.local_data*, %struct.local_data** %12, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @del_empty_term(%struct.local_zone* %98, %struct.local_data* %99, i32* %100, i64 %101, i32 %102)
  br label %104

104:                                              ; preds = %97, %69
  %105 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %106 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %105, i32 0, i32 0
  %107 = call i32 @lock_rw_unlock(i32* %106)
  br label %108

108:                                              ; preds = %104, %65
  ret void
}

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local %struct.local_zone* @local_zones_lookup(%struct.local_zones*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local %struct.local_data* @lz_find_node(%struct.local_zone*, i32*, i64, i32) #1

declare dso_local i32 @del_local_rrset(%struct.local_data*, i32) #1

declare dso_local i32 @del_empty_term(%struct.local_zone*, %struct.local_data*, i32*, i64, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i64 @query_dname_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
