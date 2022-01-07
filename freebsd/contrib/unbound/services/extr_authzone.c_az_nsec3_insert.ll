; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec3_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec3_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { i32 }
%struct.auth_data = type { i32 }
%struct.auth_rrset = type { i32 }

@LDNS_RR_TYPE_NSEC3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*)* @az_nsec3_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_nsec3_insert(%struct.auth_zone* %0, %struct.regional* %1, %struct.dns_msg* %2, %struct.auth_data* %3) #0 {
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
  %11 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %12 = icmp ne %struct.auth_data* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %31

14:                                               ; preds = %4
  %15 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %16 = load i32, i32* @LDNS_RR_TYPE_NSEC3, align 4
  %17 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %15, i32 %16)
  store %struct.auth_rrset* %17, %struct.auth_rrset** %10, align 8
  %18 = load %struct.auth_rrset*, %struct.auth_rrset** %10, align 8
  %19 = icmp ne %struct.auth_rrset* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %31

21:                                               ; preds = %14
  %22 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %23 = load %struct.regional*, %struct.regional** %7, align 8
  %24 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %25 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %26 = load %struct.auth_rrset*, %struct.auth_rrset** %10, align 8
  %27 = call i32 @msg_add_rrset_ns(%struct.auth_zone* %22, %struct.regional* %23, %struct.dns_msg* %24, %struct.auth_data* %25, %struct.auth_rrset* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %31

30:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %29, %20, %13
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i32) #1

declare dso_local i32 @msg_add_rrset_ns(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
