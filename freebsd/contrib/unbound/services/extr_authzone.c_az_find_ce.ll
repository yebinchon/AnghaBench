; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_find_ce.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_find_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i64 }
%struct.query_info = type { i64, i64 }
%struct.auth_data = type { i64 }
%struct.auth_rrset = type { i32 }

@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.query_info*, %struct.auth_data*, i32, %struct.auth_data**, %struct.auth_rrset**)* @az_find_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_find_ce(%struct.auth_zone* %0, %struct.query_info* %1, %struct.auth_data* %2, i32 %3, %struct.auth_data** %4, %struct.auth_rrset** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.auth_zone*, align 8
  %9 = alloca %struct.query_info*, align 8
  %10 = alloca %struct.auth_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.auth_data**, align 8
  %13 = alloca %struct.auth_rrset**, align 8
  %14 = alloca %struct.auth_data*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %8, align 8
  store %struct.query_info* %1, %struct.query_info** %9, align 8
  store %struct.auth_data* %2, %struct.auth_data** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.auth_data** %4, %struct.auth_data*** %12, align 8
  store %struct.auth_rrset** %5, %struct.auth_rrset*** %13, align 8
  %15 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  store %struct.auth_data* %15, %struct.auth_data** %14, align 8
  %16 = load %struct.auth_data**, %struct.auth_data*** %12, align 8
  store %struct.auth_data* null, %struct.auth_data** %16, align 8
  %17 = load %struct.auth_rrset**, %struct.auth_rrset*** %13, align 8
  store %struct.auth_rrset* null, %struct.auth_rrset** %17, align 8
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %6
  %21 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %22 = load %struct.query_info*, %struct.query_info** %9, align 8
  %23 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %24 = call %struct.auth_data* @az_find_candidate_ce(%struct.auth_zone* %21, %struct.query_info* %22, %struct.auth_data* %23)
  store %struct.auth_data* %24, %struct.auth_data** %14, align 8
  br label %28

25:                                               ; preds = %6
  %26 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %27 = load %struct.auth_data**, %struct.auth_data*** %12, align 8
  store %struct.auth_data* %26, %struct.auth_data** %27, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %30 = icmp ne %struct.auth_data* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %33 = call i64 @domain_has_only_nsec3(%struct.auth_data* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  %36 = load %struct.auth_data**, %struct.auth_data*** %12, align 8
  store %struct.auth_data* null, %struct.auth_data** %36, align 8
  br label %37

37:                                               ; preds = %35, %31, %28
  br label %38

38:                                               ; preds = %100, %37
  %39 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %40 = icmp ne %struct.auth_data* %39, null
  br i1 %40, label %41, label %104

41:                                               ; preds = %38
  %42 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %43 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %46 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %41
  %50 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %51 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %52 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %50, i32 %51)
  %53 = load %struct.auth_rrset**, %struct.auth_rrset*** %13, align 8
  store %struct.auth_rrset* %52, %struct.auth_rrset** %53, align 8
  %54 = icmp ne %struct.auth_rrset* %52, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load %struct.query_info*, %struct.query_info** %9, align 8
  %57 = getelementptr inbounds %struct.query_info, %struct.query_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %55
  %62 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %63 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.query_info*, %struct.query_info** %9, align 8
  %66 = getelementptr inbounds %struct.query_info, %struct.query_info* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61, %55
  %70 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %71 = load %struct.auth_data**, %struct.auth_data*** %12, align 8
  store %struct.auth_data* %70, %struct.auth_data** %71, align 8
  store i32 0, i32* %7, align 4
  br label %106

72:                                               ; preds = %61, %49, %41
  %73 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %74 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.query_info*, %struct.query_info** %9, align 8
  %77 = getelementptr inbounds %struct.query_info, %struct.query_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %72
  %81 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %82 = load i32, i32* @LDNS_RR_TYPE_DNAME, align 4
  %83 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %81, i32 %82)
  %84 = load %struct.auth_rrset**, %struct.auth_rrset*** %13, align 8
  store %struct.auth_rrset* %83, %struct.auth_rrset** %84, align 8
  %85 = icmp ne %struct.auth_rrset* %83, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %88 = load %struct.auth_data**, %struct.auth_data*** %12, align 8
  store %struct.auth_data* %87, %struct.auth_data** %88, align 8
  store i32 0, i32* %7, align 4
  br label %106

89:                                               ; preds = %80, %72
  %90 = load %struct.auth_data**, %struct.auth_data*** %12, align 8
  %91 = load %struct.auth_data*, %struct.auth_data** %90, align 8
  %92 = icmp eq %struct.auth_data* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %95 = call i64 @domain_has_only_nsec3(%struct.auth_data* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %99 = load %struct.auth_data**, %struct.auth_data*** %12, align 8
  store %struct.auth_data* %98, %struct.auth_data** %99, align 8
  br label %100

100:                                              ; preds = %97, %93, %89
  %101 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %102 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %103 = call %struct.auth_data* @az_domain_go_up(%struct.auth_zone* %101, %struct.auth_data* %102)
  store %struct.auth_data* %103, %struct.auth_data** %14, align 8
  br label %38

104:                                              ; preds = %38
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %104, %86, %69
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local %struct.auth_data* @az_find_candidate_ce(%struct.auth_zone*, %struct.query_info*, %struct.auth_data*) #1

declare dso_local i64 @domain_has_only_nsec3(%struct.auth_data*) #1

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i32) #1

declare dso_local %struct.auth_data* @az_domain_go_up(%struct.auth_zone*, %struct.auth_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
