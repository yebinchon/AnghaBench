; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_gen_dns_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_gen_dns_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.reply_info*, %struct.TYPE_2__ }
%struct.reply_info = type { %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.regional = type { i32 }
%struct.query_info = type { i32, i32 }

@RR_COUNT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dns_msg* (%struct.regional*, %struct.query_info*, i64)* @gen_dns_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dns_msg* @gen_dns_msg(%struct.regional* %0, %struct.query_info* %1, i64 %2) #0 {
  %4 = alloca %struct.dns_msg*, align 8
  %5 = alloca %struct.regional*, align 8
  %6 = alloca %struct.query_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dns_msg*, align 8
  store %struct.regional* %0, %struct.regional** %5, align 8
  store %struct.query_info* %1, %struct.query_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.regional*, %struct.regional** %5, align 8
  %10 = call i64 @regional_alloc(%struct.regional* %9, i64 16)
  %11 = inttoptr i64 %10 to %struct.dns_msg*
  store %struct.dns_msg* %11, %struct.dns_msg** %8, align 8
  %12 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %13 = icmp ne %struct.dns_msg* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.dns_msg* null, %struct.dns_msg** %4, align 8
  br label %72

15:                                               ; preds = %3
  %16 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %17 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %16, i32 0, i32 1
  %18 = load %struct.query_info*, %struct.query_info** %6, align 8
  %19 = call i32 @memcpy(%struct.TYPE_2__* %17, %struct.query_info* %18, i32 8)
  %20 = load %struct.regional*, %struct.regional** %5, align 8
  %21 = load %struct.query_info*, %struct.query_info** %6, align 8
  %22 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.query_info*, %struct.query_info** %6, align 8
  %25 = getelementptr inbounds %struct.query_info, %struct.query_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regional_alloc_init(%struct.regional* %20, i32 %23, i32 %26)
  %28 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %29 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %32 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %15
  store %struct.dns_msg* null, %struct.dns_msg** %4, align 8
  br label %72

37:                                               ; preds = %15
  %38 = load %struct.regional*, %struct.regional** %5, align 8
  %39 = call i64 @regional_alloc(%struct.regional* %38, i64 4)
  %40 = inttoptr i64 %39 to %struct.reply_info*
  %41 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %42 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %41, i32 0, i32 0
  store %struct.reply_info* %40, %struct.reply_info** %42, align 8
  %43 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %44 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %43, i32 0, i32 0
  %45 = load %struct.reply_info*, %struct.reply_info** %44, align 8
  %46 = icmp ne %struct.reply_info* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  store %struct.dns_msg* null, %struct.dns_msg** %4, align 8
  br label %72

48:                                               ; preds = %37
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @RR_COUNT_MAX, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store %struct.dns_msg* null, %struct.dns_msg** %4, align 8
  br label %72

53:                                               ; preds = %48
  %54 = load %struct.regional*, %struct.regional** %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = mul i64 %55, 8
  %57 = call i64 @regional_alloc(%struct.regional* %54, i64 %56)
  %58 = inttoptr i64 %57 to %struct.ub_packed_rrset_key**
  %59 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %60 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %59, i32 0, i32 0
  %61 = load %struct.reply_info*, %struct.reply_info** %60, align 8
  %62 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %61, i32 0, i32 0
  store %struct.ub_packed_rrset_key** %58, %struct.ub_packed_rrset_key*** %62, align 8
  %63 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %64 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %63, i32 0, i32 0
  %65 = load %struct.reply_info*, %struct.reply_info** %64, align 8
  %66 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %65, i32 0, i32 0
  %67 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %66, align 8
  %68 = icmp ne %struct.ub_packed_rrset_key** %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %53
  store %struct.dns_msg* null, %struct.dns_msg** %4, align 8
  br label %72

70:                                               ; preds = %53
  %71 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  store %struct.dns_msg* %71, %struct.dns_msg** %4, align 8
  br label %72

72:                                               ; preds = %70, %69, %52, %47, %36, %14
  %73 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  ret %struct.dns_msg* %73
}

declare dso_local i64 @regional_alloc(%struct.regional*, i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.query_info*, i32) #1

declare dso_local i32 @regional_alloc_init(%struct.regional*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
