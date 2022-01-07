; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_answer_with_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_answer_with_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.query_info = type { i64 }
%struct.regional = type { i32 }
%struct.dns_msg = type { i32 }
%struct.auth_data = type { i32 }
%struct.auth_rrset = type { i32 }

@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.query_info*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*)* @az_generate_answer_with_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_generate_answer_with_node(%struct.auth_zone* %0, %struct.query_info* %1, %struct.regional* %2, %struct.dns_msg* %3, %struct.auth_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_zone*, align 8
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.regional*, align 8
  %10 = alloca %struct.dns_msg*, align 8
  %11 = alloca %struct.auth_data*, align 8
  %12 = alloca %struct.auth_rrset*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %7, align 8
  store %struct.query_info* %1, %struct.query_info** %8, align 8
  store %struct.regional* %2, %struct.regional** %9, align 8
  store %struct.dns_msg* %3, %struct.dns_msg** %10, align 8
  store %struct.auth_data* %4, %struct.auth_data** %11, align 8
  %13 = load %struct.auth_data*, %struct.auth_data** %11, align 8
  %14 = load %struct.query_info*, %struct.query_info** %8, align 8
  %15 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %13, i64 %16)
  store %struct.auth_rrset* %17, %struct.auth_rrset** %12, align 8
  %18 = icmp ne %struct.auth_rrset* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %21 = load %struct.regional*, %struct.regional** %9, align 8
  %22 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %23 = load %struct.auth_data*, %struct.auth_data** %11, align 8
  %24 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %25 = call i32 @az_generate_positive_answer(%struct.auth_zone* %20, %struct.regional* %21, %struct.dns_msg* %22, %struct.auth_data* %23, %struct.auth_rrset* %24)
  store i32 %25, i32* %6, align 4
  br label %57

26:                                               ; preds = %5
  %27 = load %struct.auth_data*, %struct.auth_data** %11, align 8
  %28 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %29 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %27, i64 %28)
  store %struct.auth_rrset* %29, %struct.auth_rrset** %12, align 8
  %30 = icmp ne %struct.auth_rrset* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %33 = load %struct.query_info*, %struct.query_info** %8, align 8
  %34 = load %struct.regional*, %struct.regional** %9, align 8
  %35 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %36 = load %struct.auth_data*, %struct.auth_data** %11, align 8
  %37 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %38 = call i32 @az_generate_cname_answer(%struct.auth_zone* %32, %struct.query_info* %33, %struct.regional* %34, %struct.dns_msg* %35, %struct.auth_data* %36, %struct.auth_rrset* %37)
  store i32 %38, i32* %6, align 4
  br label %57

39:                                               ; preds = %26
  %40 = load %struct.query_info*, %struct.query_info** %8, align 8
  %41 = getelementptr inbounds %struct.query_info, %struct.query_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %47 = load %struct.regional*, %struct.regional** %9, align 8
  %48 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %49 = load %struct.auth_data*, %struct.auth_data** %11, align 8
  %50 = call i32 @az_generate_any_answer(%struct.auth_zone* %46, %struct.regional* %47, %struct.dns_msg* %48, %struct.auth_data* %49)
  store i32 %50, i32* %6, align 4
  br label %57

51:                                               ; preds = %39
  %52 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %53 = load %struct.regional*, %struct.regional** %9, align 8
  %54 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %55 = load %struct.auth_data*, %struct.auth_data** %11, align 8
  %56 = call i32 @az_generate_notype_answer(%struct.auth_zone* %52, %struct.regional* %53, %struct.dns_msg* %54, %struct.auth_data* %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %51, %45, %31, %19
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i64) #1

declare dso_local i32 @az_generate_positive_answer(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

declare dso_local i32 @az_generate_cname_answer(%struct.auth_zone*, %struct.query_info*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

declare dso_local i32 @az_generate_any_answer(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*) #1

declare dso_local i32 @az_generate_notype_answer(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
