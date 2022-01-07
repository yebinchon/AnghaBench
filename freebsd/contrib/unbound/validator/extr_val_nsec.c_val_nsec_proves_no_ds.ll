; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_val_nsec_proves_no_ds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_val_nsec_proves_no_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.query_info = type { i64, i32 }

@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@sec_status_bogus = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@sec_status_insecure = common dso_local global i32 0, align 4
@sec_status_secure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_packed_rrset_key*, %struct.query_info*)* @val_nsec_proves_no_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @val_nsec_proves_no_ds(%struct.ub_packed_rrset_key* %0, %struct.query_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca %struct.query_info*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %4, align 8
  store %struct.query_info* %1, %struct.query_info** %5, align 8
  %6 = load %struct.query_info*, %struct.query_info** %5, align 8
  %7 = getelementptr inbounds %struct.query_info, %struct.query_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @log_assert(i32 %11)
  %13 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %14 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ntohs(i32 %16)
  %18 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @log_assert(i32 %20)
  %22 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %23 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %24 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.query_info*, %struct.query_info** %5, align 8
  %28 = getelementptr inbounds %struct.query_info, %struct.query_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @sec_status_bogus, align 4
  store i32 %32, i32* %3, align 4
  br label %49

33:                                               ; preds = %26, %2
  %34 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %35 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %36 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @sec_status_bogus, align 4
  store i32 %39, i32* %3, align 4
  br label %49

40:                                               ; preds = %33
  %41 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %42 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %43 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @sec_status_insecure, align 4
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @sec_status_secure, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %45, %38, %31
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @nsec_has_type(%struct.ub_packed_rrset_key*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
