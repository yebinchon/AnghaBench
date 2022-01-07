; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zone_does_not_cover.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zone_does_not_cover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zone = type { i64, i32 }
%struct.query_info = type { i32, i32, i32 }
%struct.local_data = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.local_data* }
%struct.local_rrset = type { i32 }

@local_zone_always_transparent = common dso_local global i64 0, align 8
@local_zone_transparent = common dso_local global i64 0, align 8
@local_zone_typetransparent = common dso_local global i64 0, align 8
@local_zone_inform = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.local_zone*, %struct.query_info*, i32)* @local_zone_does_not_cover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_zone_does_not_cover(%struct.local_zone* %0, %struct.query_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.local_zone*, align 8
  %6 = alloca %struct.query_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.local_data, align 8
  %9 = alloca %struct.local_data*, align 8
  %10 = alloca %struct.local_rrset*, align 8
  store %struct.local_zone* %0, %struct.local_zone** %5, align 8
  store %struct.query_info* %1, %struct.query_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.local_data* null, %struct.local_data** %9, align 8
  store %struct.local_rrset* null, %struct.local_rrset** %10, align 8
  %11 = load %struct.local_zone*, %struct.local_zone** %5, align 8
  %12 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @local_zone_always_transparent, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %82

17:                                               ; preds = %3
  %18 = load %struct.local_zone*, %struct.local_zone** %5, align 8
  %19 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @local_zone_transparent, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load %struct.local_zone*, %struct.local_zone** %5, align 8
  %25 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @local_zone_typetransparent, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.local_zone*, %struct.local_zone** %5, align 8
  %31 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @local_zone_inform, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %82

36:                                               ; preds = %29, %23, %17
  %37 = getelementptr inbounds %struct.local_data, %struct.local_data* %8, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.local_data* %8, %struct.local_data** %38, align 8
  %39 = load %struct.query_info*, %struct.query_info** %6, align 8
  %40 = getelementptr inbounds %struct.query_info, %struct.query_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.local_data, %struct.local_data* %8, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load %struct.query_info*, %struct.query_info** %6, align 8
  %44 = getelementptr inbounds %struct.query_info, %struct.query_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.local_data, %struct.local_data* %8, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = getelementptr inbounds %struct.local_data, %struct.local_data* %8, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.local_zone*, %struct.local_zone** %5, align 8
  %50 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.local_data, %struct.local_data* %8, i32 0, i32 1
  %52 = call i64 @rbtree_search(i32* %50, %struct.TYPE_2__* %51)
  %53 = inttoptr i64 %52 to %struct.local_data*
  store %struct.local_data* %53, %struct.local_data** %9, align 8
  %54 = load %struct.local_zone*, %struct.local_zone** %5, align 8
  %55 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @local_zone_transparent, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %36
  %60 = load %struct.local_zone*, %struct.local_zone** %5, align 8
  %61 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @local_zone_inform, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59, %36
  %66 = load %struct.local_data*, %struct.local_data** %9, align 8
  %67 = icmp eq %struct.local_data* %66, null
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %82

69:                                               ; preds = %59
  %70 = load %struct.local_data*, %struct.local_data** %9, align 8
  %71 = icmp ne %struct.local_data* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.local_data*, %struct.local_data** %9, align 8
  %74 = load %struct.query_info*, %struct.query_info** %6, align 8
  %75 = getelementptr inbounds %struct.query_info, %struct.query_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.local_rrset* @local_data_find_type(%struct.local_data* %73, i32 %76, i32 1)
  store %struct.local_rrset* %77, %struct.local_rrset** %10, align 8
  br label %78

78:                                               ; preds = %72, %69
  %79 = load %struct.local_rrset*, %struct.local_rrset** %10, align 8
  %80 = icmp eq %struct.local_rrset* %79, null
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %65, %35, %16
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @rbtree_search(i32*, %struct.TYPE_2__*) #1

declare dso_local %struct.local_rrset* @local_data_find_type(%struct.local_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
