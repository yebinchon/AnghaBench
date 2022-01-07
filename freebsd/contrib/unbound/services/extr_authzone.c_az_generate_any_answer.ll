; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_any_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_any_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { i32 }
%struct.auth_data = type { %struct.auth_rrset* }
%struct.auth_rrset = type { i32 }

@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_MX = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*)* @az_generate_any_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_generate_any_answer(%struct.auth_zone* %0, %struct.regional* %1, %struct.dns_msg* %2, %struct.auth_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.auth_zone*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca %struct.dns_msg*, align 8
  %9 = alloca %struct.auth_data*, align 8
  %10 = alloca %struct.auth_rrset*, align 8
  %11 = alloca i32, align 4
  store %struct.auth_zone* %0, %struct.auth_zone** %6, align 8
  store %struct.regional* %1, %struct.regional** %7, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %8, align 8
  store %struct.auth_data* %3, %struct.auth_data** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %13 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %14 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %12, i32 %13)
  store %struct.auth_rrset* %14, %struct.auth_rrset** %10, align 8
  %15 = icmp ne %struct.auth_rrset* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %18 = load %struct.regional*, %struct.regional** %7, align 8
  %19 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %20 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %21 = load %struct.auth_rrset*, %struct.auth_rrset** %10, align 8
  %22 = call i32 @msg_add_rrset_an(%struct.auth_zone* %17, %struct.regional* %18, %struct.dns_msg* %19, %struct.auth_data* %20, %struct.auth_rrset* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %103

25:                                               ; preds = %16
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %25, %4
  %29 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %30 = load i32, i32* @LDNS_RR_TYPE_MX, align 4
  %31 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %29, i32 %30)
  store %struct.auth_rrset* %31, %struct.auth_rrset** %10, align 8
  %32 = icmp ne %struct.auth_rrset* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %35 = load %struct.regional*, %struct.regional** %7, align 8
  %36 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %37 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %38 = load %struct.auth_rrset*, %struct.auth_rrset** %10, align 8
  %39 = call i32 @msg_add_rrset_an(%struct.auth_zone* %34, %struct.regional* %35, %struct.dns_msg* %36, %struct.auth_data* %37, %struct.auth_rrset* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %103

42:                                               ; preds = %33
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %42, %28
  %46 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %47 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %48 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %46, i32 %47)
  store %struct.auth_rrset* %48, %struct.auth_rrset** %10, align 8
  %49 = icmp ne %struct.auth_rrset* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %52 = load %struct.regional*, %struct.regional** %7, align 8
  %53 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %54 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %55 = load %struct.auth_rrset*, %struct.auth_rrset** %10, align 8
  %56 = call i32 @msg_add_rrset_an(%struct.auth_zone* %51, %struct.regional* %52, %struct.dns_msg* %53, %struct.auth_data* %54, %struct.auth_rrset* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %103

59:                                               ; preds = %50
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %59, %45
  %63 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %64 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %65 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %63, i32 %64)
  store %struct.auth_rrset* %65, %struct.auth_rrset** %10, align 8
  %66 = icmp ne %struct.auth_rrset* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %69 = load %struct.regional*, %struct.regional** %7, align 8
  %70 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %71 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %72 = load %struct.auth_rrset*, %struct.auth_rrset** %10, align 8
  %73 = call i32 @msg_add_rrset_an(%struct.auth_zone* %68, %struct.regional* %69, %struct.dns_msg* %70, %struct.auth_data* %71, %struct.auth_rrset* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %103

76:                                               ; preds = %67
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %76, %62
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %84 = icmp ne %struct.auth_data* %83, null
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %87 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %86, i32 0, i32 0
  %88 = load %struct.auth_rrset*, %struct.auth_rrset** %87, align 8
  %89 = icmp ne %struct.auth_rrset* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %92 = load %struct.regional*, %struct.regional** %7, align 8
  %93 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %94 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %95 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %96 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %95, i32 0, i32 0
  %97 = load %struct.auth_rrset*, %struct.auth_rrset** %96, align 8
  %98 = call i32 @msg_add_rrset_an(%struct.auth_zone* %91, %struct.regional* %92, %struct.dns_msg* %93, %struct.auth_data* %94, %struct.auth_rrset* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %90
  store i32 0, i32* %5, align 4
  br label %103

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %85, %82, %79
  store i32 1, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %100, %75, %58, %41, %24
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i32) #1

declare dso_local i32 @msg_add_rrset_an(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
