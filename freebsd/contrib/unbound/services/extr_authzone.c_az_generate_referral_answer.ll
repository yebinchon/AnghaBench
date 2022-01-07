; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_referral_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_referral_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.auth_data = type { i32, i32 }
%struct.auth_rrset = type { i32 }

@BIT_AA = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*)* @az_generate_referral_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_generate_referral_answer(%struct.auth_zone* %0, %struct.regional* %1, %struct.dns_msg* %2, %struct.auth_data* %3, %struct.auth_rrset* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_zone*, align 8
  %8 = alloca %struct.regional*, align 8
  %9 = alloca %struct.dns_msg*, align 8
  %10 = alloca %struct.auth_data*, align 8
  %11 = alloca %struct.auth_rrset*, align 8
  %12 = alloca %struct.auth_rrset*, align 8
  %13 = alloca %struct.auth_rrset*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %7, align 8
  store %struct.regional* %1, %struct.regional** %8, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %9, align 8
  store %struct.auth_data* %3, %struct.auth_data** %10, align 8
  store %struct.auth_rrset* %4, %struct.auth_rrset** %11, align 8
  %14 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %15 = call i32 @log_assert(%struct.auth_data* %14)
  %16 = load i32, i32* @BIT_AA, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %19 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %17
  store i32 %23, i32* %21, align 4
  %24 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %25 = load %struct.regional*, %struct.regional** %8, align 8
  %26 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %27 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %28 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %29 = call i32 @msg_add_rrset_ns(%struct.auth_zone* %24, %struct.regional* %25, %struct.dns_msg* %26, %struct.auth_data* %27, %struct.auth_rrset* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %94

32:                                               ; preds = %5
  %33 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %34 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %35 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %33, i32 %34)
  store %struct.auth_rrset* %35, %struct.auth_rrset** %12, align 8
  %36 = icmp ne %struct.auth_rrset* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %39 = load %struct.regional*, %struct.regional** %8, align 8
  %40 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %41 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %42 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %43 = call i32 @msg_add_rrset_ns(%struct.auth_zone* %38, %struct.regional* %39, %struct.dns_msg* %40, %struct.auth_data* %41, %struct.auth_rrset* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %94

46:                                               ; preds = %37
  br label %85

47:                                               ; preds = %32
  %48 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %49 = load i32, i32* @LDNS_RR_TYPE_NSEC, align 4
  %50 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %48, i32 %49)
  store %struct.auth_rrset* %50, %struct.auth_rrset** %13, align 8
  %51 = icmp ne %struct.auth_rrset* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %54 = load %struct.regional*, %struct.regional** %8, align 8
  %55 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %56 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %57 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %58 = call i32 @msg_add_rrset_ns(%struct.auth_zone* %53, %struct.regional* %54, %struct.dns_msg* %55, %struct.auth_data* %56, %struct.auth_rrset* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %94

61:                                               ; preds = %52
  br label %84

62:                                               ; preds = %47
  %63 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %64 = load %struct.regional*, %struct.regional** %8, align 8
  %65 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %66 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %67 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %70 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %73 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %77 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @az_add_nsec3_proof(%struct.auth_zone* %63, %struct.regional* %64, %struct.dns_msg* %65, i32 %68, i32 %71, i32 %75, i32 %79, i32 1, i32 1, i32 0, i32 0)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %94

83:                                               ; preds = %62
  br label %84

84:                                               ; preds = %83, %61
  br label %85

85:                                               ; preds = %84, %46
  %86 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %87 = load %struct.regional*, %struct.regional** %8, align 8
  %88 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %89 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %90 = call i32 @az_add_additionals_from(%struct.auth_zone* %86, %struct.regional* %87, %struct.dns_msg* %88, %struct.auth_rrset* %89, i32 0)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  store i32 0, i32* %6, align 4
  br label %94

93:                                               ; preds = %85
  store i32 1, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %92, %82, %60, %45, %31
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @log_assert(%struct.auth_data*) #1

declare dso_local i32 @msg_add_rrset_ns(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i32) #1

declare dso_local i32 @az_add_nsec3_proof(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @az_add_additionals_from(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_rrset*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
