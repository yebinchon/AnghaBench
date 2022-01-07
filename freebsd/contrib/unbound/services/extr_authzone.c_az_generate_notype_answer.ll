; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_notype_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_notype_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.auth_data = type { i32, i32 }
%struct.auth_rrset = type { i32 }

@LDNS_RR_TYPE_NSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*)* @az_generate_notype_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_generate_notype_answer(%struct.auth_zone* %0, %struct.regional* %1, %struct.dns_msg* %2, %struct.auth_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.auth_zone*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca %struct.dns_msg*, align 8
  %9 = alloca %struct.auth_data*, align 8
  %10 = alloca %struct.auth_rrset*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %6, align 8
  store %struct.regional* %1, %struct.regional** %7, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %8, align 8
  store %struct.auth_data* %3, %struct.auth_data** %9, align 8
  %11 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %12 = load %struct.regional*, %struct.regional** %7, align 8
  %13 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %14 = call i32 @az_add_negative_soa(%struct.auth_zone* %11, %struct.regional* %12, %struct.dns_msg* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %59

17:                                               ; preds = %4
  %18 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %19 = load i32, i32* @LDNS_RR_TYPE_NSEC, align 4
  %20 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %18, i32 %19)
  store %struct.auth_rrset* %20, %struct.auth_rrset** %10, align 8
  %21 = icmp ne %struct.auth_rrset* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %24 = load %struct.regional*, %struct.regional** %7, align 8
  %25 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %26 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %27 = load %struct.auth_rrset*, %struct.auth_rrset** %10, align 8
  %28 = call i32 @msg_add_rrset_ns(%struct.auth_zone* %23, %struct.regional* %24, %struct.dns_msg* %25, %struct.auth_data* %26, %struct.auth_rrset* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %59

31:                                               ; preds = %22
  br label %58

32:                                               ; preds = %17
  %33 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %34 = icmp ne %struct.auth_data* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %37 = load %struct.regional*, %struct.regional** %7, align 8
  %38 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %39 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %40 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %43 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %46 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %50 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @az_add_nsec3_proof(%struct.auth_zone* %36, %struct.regional* %37, %struct.dns_msg* %38, i32 %41, i32 %44, i32 %48, i32 %52, i32 1, i32 1, i32 0, i32 0)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %59

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %56, %32
  br label %58

58:                                               ; preds = %57, %31
  store i32 1, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %55, %30, %16
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @az_add_negative_soa(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*) #1

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i32) #1

declare dso_local i32 @msg_add_rrset_ns(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

declare dso_local i32 @az_add_nsec3_proof(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
