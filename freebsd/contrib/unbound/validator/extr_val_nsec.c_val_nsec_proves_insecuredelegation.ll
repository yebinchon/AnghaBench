; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_val_nsec_proves_insecuredelegation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_val_nsec_proves_insecuredelegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.query_info = type { i64, i32 }

@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_nsec_proves_insecuredelegation(%struct.ub_packed_rrset_key* %0, %struct.query_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca %struct.query_info*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %4, align 8
  store %struct.query_info* %1, %struct.query_info** %5, align 8
  %6 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %7 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %8 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %6, i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %2
  %11 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %12 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %13 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %51, label %15

15:                                               ; preds = %10
  %16 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %17 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %18 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %15
  %21 = load %struct.query_info*, %struct.query_info** %5, align 8
  %22 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.query_info*, %struct.query_info** %5, align 8
  %28 = getelementptr inbounds %struct.query_info, %struct.query_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %31 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @dname_strict_subdomain_c(i32 %29, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %52

37:                                               ; preds = %26
  br label %50

38:                                               ; preds = %20
  %39 = load %struct.query_info*, %struct.query_info** %5, align 8
  %40 = getelementptr inbounds %struct.query_info, %struct.query_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %43 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @dname_subdomain_c(i32 %41, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %52

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %37
  br label %51

51:                                               ; preds = %50, %15, %10, %2
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %48, %36
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @nsec_has_type(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i64 @dname_strict_subdomain_c(i32, i32) #1

declare dso_local i64 @dname_subdomain_c(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
