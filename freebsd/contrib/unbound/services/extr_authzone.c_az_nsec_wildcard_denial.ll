; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec_wildcard_denial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec_wildcard_denial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { i32 }
%struct.query_info = type { i32*, i64, i64, i64 }
%struct.auth_data = type { i32 }
%struct.auth_rrset = type { i32 }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, i32*, i64)* @az_nsec_wildcard_denial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_nsec_wildcard_denial(%struct.auth_zone* %0, %struct.regional* %1, %struct.dns_msg* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_zone*, align 8
  %8 = alloca %struct.regional*, align 8
  %9 = alloca %struct.dns_msg*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.query_info, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.auth_data*, align 8
  %15 = alloca %struct.auth_rrset*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.auth_zone* %0, %struct.auth_zone** %7, align 8
  store %struct.regional* %1, %struct.regional** %8, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load i64, i64* %11, align 8
  %24 = add i64 %23, 2
  %25 = mul nuw i64 4, %20
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %57

28:                                               ; preds = %5
  %29 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 1, i32* %29, align 16
  %30 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 42, i32* %30, align 4
  %31 = getelementptr inbounds i32, i32* %22, i64 2
  %32 = load i32*, i32** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @memmove(i32* %31, i32* %32, i64 %33)
  %35 = getelementptr inbounds %struct.query_info, %struct.query_info* %12, i32 0, i32 0
  store i32* %22, i32** %35, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 2
  %38 = getelementptr inbounds %struct.query_info, %struct.query_info* %12, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.query_info, %struct.query_info* %12, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.query_info, %struct.query_info* %12, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %42 = call i32 @az_find_domain(%struct.auth_zone* %41, %struct.query_info* %12, i32* %13, %struct.auth_data** %14)
  %43 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %44 = call %struct.auth_rrset* @az_find_nsec_cover(%struct.auth_zone* %43, %struct.auth_data** %14)
  store %struct.auth_rrset* %44, %struct.auth_rrset** %15, align 8
  %45 = icmp ne %struct.auth_rrset* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %28
  %47 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %48 = load %struct.regional*, %struct.regional** %8, align 8
  %49 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %50 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %51 = load %struct.auth_rrset*, %struct.auth_rrset** %15, align 8
  %52 = call i32 @msg_add_rrset_ns(%struct.auth_zone* %47, %struct.regional* %48, %struct.dns_msg* %49, %struct.auth_data* %50, %struct.auth_rrset* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %57

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %28
  store i32 1, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %57

57:                                               ; preds = %56, %54, %27
  %58 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memmove(i32*, i32*, i64) #2

declare dso_local i32 @az_find_domain(%struct.auth_zone*, %struct.query_info*, i32*, %struct.auth_data**) #2

declare dso_local %struct.auth_rrset* @az_find_nsec_cover(%struct.auth_zone*, %struct.auth_data**) #2

declare dso_local i32 @msg_add_rrset_ns(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
