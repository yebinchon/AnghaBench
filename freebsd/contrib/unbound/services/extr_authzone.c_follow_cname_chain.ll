; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_follow_cname_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_follow_cname_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { i32 }
%struct.packed_rrset_data = type { i64, i32*, i64* }
%struct.auth_data = type { i32 }
%struct.auth_rrset = type { %struct.packed_rrset_data* }

@MAX_CNAME_CHAIN = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_CNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, i32, %struct.regional*, %struct.dns_msg*, %struct.packed_rrset_data*)* @follow_cname_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @follow_cname_chain(%struct.auth_zone* %0, i32 %1, %struct.regional* %2, %struct.dns_msg* %3, %struct.packed_rrset_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_zone*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.regional*, align 8
  %10 = alloca %struct.dns_msg*, align 8
  %11 = alloca %struct.packed_rrset_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.auth_data*, align 8
  %14 = alloca %struct.auth_rrset*, align 8
  %15 = alloca i64, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.regional* %2, %struct.regional** %9, align 8
  store %struct.dns_msg* %3, %struct.dns_msg** %10, align 8
  store %struct.packed_rrset_data* %4, %struct.packed_rrset_data** %11, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %106, %5
  %17 = load i32, i32* %12, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @MAX_CNAME_CHAIN, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %110

21:                                               ; preds = %16
  %22 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %23 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %110

27:                                               ; preds = %21
  %28 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %29 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %110

35:                                               ; preds = %27
  %36 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %37 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 2
  %42 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %43 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 2
  %48 = call i64 @dname_valid(i64 %41, i32 %47)
  store i64 %48, i64* %15, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  br label %110

51:                                               ; preds = %35
  %52 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %53 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 2
  %58 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %59 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dname_subdomain_c(i64 %57, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %51
  br label %110

64:                                               ; preds = %51
  %65 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %66 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %67 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 2
  %72 = load i64, i64* %15, align 8
  %73 = call %struct.auth_data* @az_find_name(%struct.auth_zone* %65, i64 %71, i64 %72)
  store %struct.auth_data* %73, %struct.auth_data** %13, align 8
  %74 = icmp eq %struct.auth_data* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %110

76:                                               ; preds = %64
  %77 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %77, i32 %78)
  store %struct.auth_rrset* %79, %struct.auth_rrset** %14, align 8
  %80 = icmp ne %struct.auth_rrset* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %83 = load %struct.regional*, %struct.regional** %9, align 8
  %84 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %85 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %86 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %87 = call i32 @msg_add_rrset_an(%struct.auth_zone* %82, %struct.regional* %83, %struct.dns_msg* %84, %struct.auth_data* %85, %struct.auth_rrset* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %111

90:                                               ; preds = %81
  br label %110

91:                                               ; preds = %76
  %92 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %93 = load i32, i32* @LDNS_RR_TYPE_CNAME, align 4
  %94 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %92, i32 %93)
  store %struct.auth_rrset* %94, %struct.auth_rrset** %14, align 8
  %95 = icmp eq %struct.auth_rrset* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %110

97:                                               ; preds = %91
  %98 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %99 = load %struct.regional*, %struct.regional** %9, align 8
  %100 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %101 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %102 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %103 = call i32 @msg_add_rrset_an(%struct.auth_zone* %98, %struct.regional* %99, %struct.dns_msg* %100, %struct.auth_data* %101, %struct.auth_rrset* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %111

106:                                              ; preds = %97
  %107 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %108 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %107, i32 0, i32 0
  %109 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %108, align 8
  store %struct.packed_rrset_data* %109, %struct.packed_rrset_data** %11, align 8
  br label %16

110:                                              ; preds = %96, %90, %75, %63, %50, %34, %26, %16
  store i32 1, i32* %6, align 4
  br label %111

111:                                              ; preds = %110, %105, %89
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i64 @dname_valid(i64, i32) #1

declare dso_local i32 @dname_subdomain_c(i64, i32) #1

declare dso_local %struct.auth_data* @az_find_name(%struct.auth_zone*, i64, i64) #1

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i32) #1

declare dso_local i32 @msg_add_rrset_an(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
