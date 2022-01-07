; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_add_soa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_add_soa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_cache = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { i32 }
%struct.val_neg_zone = type { i64, i32, i32* }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@PACKED_RRSET_SOA_NEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rrset_cache*, i32, %struct.regional*, %struct.dns_msg*, %struct.val_neg_zone*)* @add_soa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_soa(%struct.rrset_cache* %0, i32 %1, %struct.regional* %2, %struct.dns_msg* %3, %struct.val_neg_zone* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rrset_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.regional*, align 8
  %10 = alloca %struct.dns_msg*, align 8
  %11 = alloca %struct.val_neg_zone*, align 8
  %12 = alloca %struct.ub_packed_rrset_key*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.rrset_cache* %0, %struct.rrset_cache** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.regional* %2, %struct.regional** %9, align 8
  store %struct.dns_msg* %3, %struct.dns_msg** %10, align 8
  store %struct.val_neg_zone* %4, %struct.val_neg_zone** %11, align 8
  %16 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %17 = icmp ne %struct.val_neg_zone* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %20 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  %22 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %23 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %14, align 8
  %25 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %26 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %15, align 4
  br label %37

28:                                               ; preds = %5
  %29 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %30 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @reply_nsec_signer(i32 %31, i64* %14, i32* %15)
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %66

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.rrset_cache*, %struct.rrset_cache** %7, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @PACKED_RRSET_SOA_NEG, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(%struct.rrset_cache* %38, i32* %39, i64 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 0)
  store %struct.ub_packed_rrset_key* %45, %struct.ub_packed_rrset_key** %12, align 8
  %46 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %47 = icmp ne %struct.ub_packed_rrset_key* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %66

49:                                               ; preds = %37
  %50 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %51 = load %struct.regional*, %struct.regional** %9, align 8
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @dns_msg_authadd(%struct.dns_msg* %50, %struct.regional* %51, %struct.ub_packed_rrset_key* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %58 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @lock_rw_unlock(i32* %59)
  store i32 0, i32* %6, align 4
  br label %66

61:                                               ; preds = %49
  %62 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %63 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @lock_rw_unlock(i32* %64)
  store i32 1, i32* %6, align 4
  br label %66

66:                                               ; preds = %61, %56, %48, %35
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32* @reply_nsec_signer(i32, i64*, i32*) #1

declare dso_local %struct.ub_packed_rrset_key* @rrset_cache_lookup(%struct.rrset_cache*, i32*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dns_msg_authadd(%struct.dns_msg*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
