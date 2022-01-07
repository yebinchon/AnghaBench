; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_nxdomain_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_nxdomain_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.auth_data = type { i32, i32 }
%struct.auth_rrset = type { i32 }

@LDNS_RCODE_NXDOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_data*)* @az_generate_nxdomain_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_generate_nxdomain_answer(%struct.auth_zone* %0, %struct.regional* %1, %struct.dns_msg* %2, %struct.auth_data* %3, %struct.auth_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_zone*, align 8
  %8 = alloca %struct.regional*, align 8
  %9 = alloca %struct.dns_msg*, align 8
  %10 = alloca %struct.auth_data*, align 8
  %11 = alloca %struct.auth_data*, align 8
  %12 = alloca %struct.auth_rrset*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %7, align 8
  store %struct.regional* %1, %struct.regional** %8, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %9, align 8
  store %struct.auth_data* %3, %struct.auth_data** %10, align 8
  store %struct.auth_data* %4, %struct.auth_data** %11, align 8
  %13 = load i32, i32* @LDNS_RCODE_NXDOMAIN, align 4
  %14 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %15 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %13
  store i32 %19, i32* %17, align 4
  %20 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %21 = load %struct.regional*, %struct.regional** %8, align 8
  %22 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %23 = call i32 @az_add_negative_soa(%struct.auth_zone* %20, %struct.regional* %21, %struct.dns_msg* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %83

26:                                               ; preds = %5
  %27 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %28 = call %struct.auth_rrset* @az_find_nsec_cover(%struct.auth_zone* %27, %struct.auth_data** %11)
  store %struct.auth_rrset* %28, %struct.auth_rrset** %12, align 8
  %29 = icmp ne %struct.auth_rrset* %28, null
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %32 = load %struct.regional*, %struct.regional** %8, align 8
  %33 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %34 = load %struct.auth_data*, %struct.auth_data** %11, align 8
  %35 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %36 = call i32 @msg_add_rrset_ns(%struct.auth_zone* %31, %struct.regional* %32, %struct.dns_msg* %33, %struct.auth_data* %34, %struct.auth_rrset* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %83

39:                                               ; preds = %30
  %40 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %41 = icmp ne %struct.auth_data* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %44 = load %struct.regional*, %struct.regional** %8, align 8
  %45 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %46 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %47 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %50 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @az_nsec_wildcard_denial(%struct.auth_zone* %43, %struct.regional* %44, %struct.dns_msg* %45, i32 %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %83

55:                                               ; preds = %42, %39
  br label %82

56:                                               ; preds = %26
  %57 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %58 = icmp ne %struct.auth_data* %57, null
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %61 = load %struct.regional*, %struct.regional** %8, align 8
  %62 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %63 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %64 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %67 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %70 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %74 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @az_add_nsec3_proof(%struct.auth_zone* %60, %struct.regional* %61, %struct.dns_msg* %62, i32 %65, i32 %68, i32 %72, i32 %76, i32 0, i32 1, i32 1, i32 1)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %83

80:                                               ; preds = %59
  br label %81

81:                                               ; preds = %80, %56
  br label %82

82:                                               ; preds = %81, %55
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %79, %54, %38, %25
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @az_add_negative_soa(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*) #1

declare dso_local %struct.auth_rrset* @az_find_nsec_cover(%struct.auth_zone*, %struct.auth_data**) #1

declare dso_local i32 @msg_add_rrset_ns(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

declare dso_local i32 @az_nsec_wildcard_denial(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, i32, i32) #1

declare dso_local i32 @az_add_nsec3_proof(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
