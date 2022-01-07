; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_answer_nonexistnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_answer_nonexistnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.query_info = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { i32 }
%struct.auth_rrset = type { i64 }
%struct.auth_data = type { i32 }

@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DNAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.query_info*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*, %struct.auth_data*)* @az_generate_answer_nonexistnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_generate_answer_nonexistnode(%struct.auth_zone* %0, %struct.query_info* %1, %struct.regional* %2, %struct.dns_msg* %3, %struct.auth_data* %4, %struct.auth_rrset* %5, %struct.auth_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.auth_zone*, align 8
  %10 = alloca %struct.query_info*, align 8
  %11 = alloca %struct.regional*, align 8
  %12 = alloca %struct.dns_msg*, align 8
  %13 = alloca %struct.auth_data*, align 8
  %14 = alloca %struct.auth_rrset*, align 8
  %15 = alloca %struct.auth_data*, align 8
  %16 = alloca %struct.auth_data*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %9, align 8
  store %struct.query_info* %1, %struct.query_info** %10, align 8
  store %struct.regional* %2, %struct.regional** %11, align 8
  store %struct.dns_msg* %3, %struct.dns_msg** %12, align 8
  store %struct.auth_data* %4, %struct.auth_data** %13, align 8
  store %struct.auth_rrset* %5, %struct.auth_rrset** %14, align 8
  store %struct.auth_data* %6, %struct.auth_data** %15, align 8
  %17 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %18 = icmp ne %struct.auth_data* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %7
  %20 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %21 = icmp ne %struct.auth_rrset* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %24 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %30 = load %struct.regional*, %struct.regional** %11, align 8
  %31 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %32 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %33 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %34 = call i32 @az_generate_referral_answer(%struct.auth_zone* %29, %struct.regional* %30, %struct.dns_msg* %31, %struct.auth_data* %32, %struct.auth_rrset* %33)
  store i32 %34, i32* %8, align 4
  br label %89

35:                                               ; preds = %22, %19, %7
  %36 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %37 = icmp ne %struct.auth_data* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %40 = icmp ne %struct.auth_rrset* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %43 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %49 = load %struct.query_info*, %struct.query_info** %10, align 8
  %50 = load %struct.regional*, %struct.regional** %11, align 8
  %51 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %52 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %53 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %54 = call i32 @az_generate_dname_answer(%struct.auth_zone* %48, %struct.query_info* %49, %struct.regional* %50, %struct.dns_msg* %51, %struct.auth_data* %52, %struct.auth_rrset* %53)
  store i32 %54, i32* %8, align 4
  br label %89

55:                                               ; preds = %41, %38, %35
  %56 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %57 = load %struct.query_info*, %struct.query_info** %10, align 8
  %58 = load %struct.auth_data*, %struct.auth_data** %15, align 8
  %59 = call i64 @az_empty_nonterminal(%struct.auth_zone* %56, %struct.query_info* %57, %struct.auth_data* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %63 = load %struct.regional*, %struct.regional** %11, align 8
  %64 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %65 = load %struct.auth_data*, %struct.auth_data** %15, align 8
  %66 = call i32 @az_generate_notype_answer(%struct.auth_zone* %62, %struct.regional* %63, %struct.dns_msg* %64, %struct.auth_data* %65)
  store i32 %66, i32* %8, align 4
  br label %89

67:                                               ; preds = %55
  %68 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %69 = load %struct.query_info*, %struct.query_info** %10, align 8
  %70 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %71 = call %struct.auth_data* @az_find_wildcard(%struct.auth_zone* %68, %struct.query_info* %69, %struct.auth_data* %70)
  store %struct.auth_data* %71, %struct.auth_data** %16, align 8
  %72 = icmp ne %struct.auth_data* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %75 = load %struct.query_info*, %struct.query_info** %10, align 8
  %76 = load %struct.regional*, %struct.regional** %11, align 8
  %77 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %78 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %79 = load %struct.auth_data*, %struct.auth_data** %16, align 8
  %80 = load %struct.auth_data*, %struct.auth_data** %15, align 8
  %81 = call i32 @az_generate_wildcard_answer(%struct.auth_zone* %74, %struct.query_info* %75, %struct.regional* %76, %struct.dns_msg* %77, %struct.auth_data* %78, %struct.auth_data* %79, %struct.auth_data* %80)
  store i32 %81, i32* %8, align 4
  br label %89

82:                                               ; preds = %67
  %83 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %84 = load %struct.regional*, %struct.regional** %11, align 8
  %85 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %86 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %87 = load %struct.auth_data*, %struct.auth_data** %15, align 8
  %88 = call i32 @az_generate_nxdomain_answer(%struct.auth_zone* %83, %struct.regional* %84, %struct.dns_msg* %85, %struct.auth_data* %86, %struct.auth_data* %87)
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %82, %73, %61, %47, %28
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i32 @az_generate_referral_answer(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

declare dso_local i32 @az_generate_dname_answer(%struct.auth_zone*, %struct.query_info*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

declare dso_local i64 @az_empty_nonterminal(%struct.auth_zone*, %struct.query_info*, %struct.auth_data*) #1

declare dso_local i32 @az_generate_notype_answer(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*) #1

declare dso_local %struct.auth_data* @az_find_wildcard(%struct.auth_zone*, %struct.query_info*, %struct.auth_data*) #1

declare dso_local i32 @az_generate_wildcard_answer(%struct.auth_zone*, %struct.query_info*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_data*, %struct.auth_data*) #1

declare dso_local i32 @az_generate_nxdomain_answer(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
