; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_positive_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_positive_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { i32 }
%struct.auth_data = type { i32 }
%struct.auth_rrset = type { i64 }

@LDNS_RR_TYPE_MX = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_SRV = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*)* @az_generate_positive_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_generate_positive_answer(%struct.auth_zone* %0, %struct.regional* %1, %struct.dns_msg* %2, %struct.auth_data* %3, %struct.auth_rrset* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_zone*, align 8
  %8 = alloca %struct.regional*, align 8
  %9 = alloca %struct.dns_msg*, align 8
  %10 = alloca %struct.auth_data*, align 8
  %11 = alloca %struct.auth_rrset*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %7, align 8
  store %struct.regional* %1, %struct.regional** %8, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %9, align 8
  store %struct.auth_data* %3, %struct.auth_data** %10, align 8
  store %struct.auth_rrset* %4, %struct.auth_rrset** %11, align 8
  %12 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %13 = load %struct.regional*, %struct.regional** %8, align 8
  %14 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %15 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %16 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %17 = call i32 @msg_add_rrset_an(%struct.auth_zone* %12, %struct.regional* %13, %struct.dns_msg* %14, %struct.auth_data* %15, %struct.auth_rrset* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %68

20:                                               ; preds = %5
  %21 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %22 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LDNS_RR_TYPE_MX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %28 = load %struct.regional*, %struct.regional** %8, align 8
  %29 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %30 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %31 = call i32 @az_add_additionals_from(%struct.auth_zone* %27, %struct.regional* %28, %struct.dns_msg* %29, %struct.auth_rrset* %30, i32 2)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %68

34:                                               ; preds = %26
  br label %67

35:                                               ; preds = %20
  %36 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %37 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LDNS_RR_TYPE_SRV, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %43 = load %struct.regional*, %struct.regional** %8, align 8
  %44 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %45 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %46 = call i32 @az_add_additionals_from(%struct.auth_zone* %42, %struct.regional* %43, %struct.dns_msg* %44, %struct.auth_rrset* %45, i32 6)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %68

49:                                               ; preds = %41
  br label %66

50:                                               ; preds = %35
  %51 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %52 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %58 = load %struct.regional*, %struct.regional** %8, align 8
  %59 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %60 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %61 = call i32 @az_add_additionals_from(%struct.auth_zone* %57, %struct.regional* %58, %struct.dns_msg* %59, %struct.auth_rrset* %60, i32 0)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %68

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %49
  br label %67

67:                                               ; preds = %66, %34
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %63, %48, %33, %19
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @msg_add_rrset_an(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

declare dso_local i32 @az_add_additionals_from(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_rrset*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
