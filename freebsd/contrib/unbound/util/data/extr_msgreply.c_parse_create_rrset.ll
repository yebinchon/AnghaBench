; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_create_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_create_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_parse = type { i32, i32, i32 }
%struct.packed_rrset_data = type { i32 }
%struct.regional = type { i32 }

@RR_COUNT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.rrset_parse*, %struct.packed_rrset_data**, %struct.regional*)* @parse_create_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_create_rrset(i32* %0, %struct.rrset_parse* %1, %struct.packed_rrset_data** %2, %struct.regional* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rrset_parse*, align 8
  %8 = alloca %struct.packed_rrset_data**, align 8
  %9 = alloca %struct.regional*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.rrset_parse* %1, %struct.rrset_parse** %7, align 8
  store %struct.packed_rrset_data** %2, %struct.packed_rrset_data*** %8, align 8
  store %struct.regional* %3, %struct.regional** %9, align 8
  %11 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %12 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RR_COUNT_MAX, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %4
  %17 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %18 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RR_COUNT_MAX, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %24 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RR_COUNT_MAX, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16, %4
  store i32 0, i32* %5, align 4
  br label %77

29:                                               ; preds = %22
  %30 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %31 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %34 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 20
  %39 = add i64 4, %38
  %40 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %41 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %39, %43
  store i64 %44, i64* %10, align 8
  %45 = load %struct.regional*, %struct.regional** %9, align 8
  %46 = icmp ne %struct.regional* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %29
  %48 = load %struct.regional*, %struct.regional** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call %struct.packed_rrset_data* @regional_alloc(%struct.regional* %48, i64 %49)
  %51 = load %struct.packed_rrset_data**, %struct.packed_rrset_data*** %8, align 8
  store %struct.packed_rrset_data* %50, %struct.packed_rrset_data** %51, align 8
  br label %56

52:                                               ; preds = %29
  %53 = load i64, i64* %10, align 8
  %54 = call %struct.packed_rrset_data* @malloc(i64 %53)
  %55 = load %struct.packed_rrset_data**, %struct.packed_rrset_data*** %8, align 8
  store %struct.packed_rrset_data* %54, %struct.packed_rrset_data** %55, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.packed_rrset_data**, %struct.packed_rrset_data*** %8, align 8
  %58 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %57, align 8
  %59 = icmp ne %struct.packed_rrset_data* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %77

61:                                               ; preds = %56
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %64 = load %struct.packed_rrset_data**, %struct.packed_rrset_data*** %8, align 8
  %65 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %64, align 8
  %66 = call i32 @parse_rr_copy(i32* %62, %struct.rrset_parse* %63, %struct.packed_rrset_data* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %61
  %69 = load %struct.regional*, %struct.regional** %9, align 8
  %70 = icmp ne %struct.regional* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load %struct.packed_rrset_data**, %struct.packed_rrset_data*** %8, align 8
  %73 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %72, align 8
  %74 = call i32 @free(%struct.packed_rrset_data* %73)
  br label %75

75:                                               ; preds = %71, %68
  store i32 0, i32* %5, align 4
  br label %77

76:                                               ; preds = %61
  store i32 1, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %75, %60, %28
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.packed_rrset_data* @regional_alloc(%struct.regional*, i64) #1

declare dso_local %struct.packed_rrset_data* @malloc(i64) #1

declare dso_local i32 @parse_rr_copy(i32*, %struct.rrset_parse*, %struct.packed_rrset_data*) #1

declare dso_local i32 @free(%struct.packed_rrset_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
