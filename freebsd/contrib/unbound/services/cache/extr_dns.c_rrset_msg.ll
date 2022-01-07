; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_rrset_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_rrset_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i64, i64, i32, i64, i64, i32, i64, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.regional = type { i32 }
%struct.query_info = type { i32 }
%struct.packed_rrset_data = type { i64 }

@BIT_QR = common dso_local global i32 0, align 4
@SERVE_EXPIRED_TTL = common dso_local global i64 0, align 8
@sec_status_unchecked = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dns_msg* (%struct.ub_packed_rrset_key*, %struct.regional*, i64, %struct.query_info*)* @rrset_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dns_msg* @rrset_msg(%struct.ub_packed_rrset_key* %0, %struct.regional* %1, i64 %2, %struct.query_info* %3) #0 {
  %5 = alloca %struct.dns_msg*, align 8
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.query_info*, align 8
  %10 = alloca %struct.dns_msg*, align 8
  %11 = alloca %struct.packed_rrset_data*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %6, align 8
  store %struct.regional* %1, %struct.regional** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.query_info* %3, %struct.query_info** %9, align 8
  %12 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %13 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %16, %struct.packed_rrset_data** %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %19 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store %struct.dns_msg* null, %struct.dns_msg** %5, align 8
  br label %116

23:                                               ; preds = %4
  %24 = load %struct.regional*, %struct.regional** %7, align 8
  %25 = load %struct.query_info*, %struct.query_info** %9, align 8
  %26 = call %struct.dns_msg* @gen_dns_msg(%struct.regional* %24, %struct.query_info* %25, i32 1)
  store %struct.dns_msg* %26, %struct.dns_msg** %10, align 8
  %27 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %28 = icmp ne %struct.dns_msg* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store %struct.dns_msg* null, %struct.dns_msg** %5, align 8
  br label %116

30:                                               ; preds = %23
  %31 = load i32, i32* @BIT_QR, align 4
  %32 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %33 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 11
  store i32 %31, i32* %35, align 8
  %36 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %37 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 10
  store i64 0, i64* %39, align 8
  %40 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %41 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %45 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %50 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 7
  store i64 %48, i64* %52, align 8
  %53 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %54 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @PREFETCH_TTL_CALC(i64 %57)
  %59 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %60 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 9
  store i32 %58, i32* %62, align 8
  %63 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %64 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SERVE_EXPIRED_TTL, align 8
  %69 = add nsw i64 %67, %68
  %70 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %71 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 8
  store i64 %69, i64* %73, align 8
  %74 = load i32, i32* @sec_status_unchecked, align 4
  %75 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %76 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 6
  store i32 %74, i32* %78, align 8
  %79 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %80 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %84 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %88 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  store i64 0, i64* %90, align 8
  %91 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %92 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %96 = load %struct.regional*, %struct.regional** %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @packed_rrset_copy_region(%struct.ub_packed_rrset_key* %95, %struct.regional* %96, i64 %97)
  %99 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %100 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %98, i32* %104, align 4
  %105 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  %106 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %30
  store %struct.dns_msg* null, %struct.dns_msg** %5, align 8
  br label %116

114:                                              ; preds = %30
  %115 = load %struct.dns_msg*, %struct.dns_msg** %10, align 8
  store %struct.dns_msg* %115, %struct.dns_msg** %5, align 8
  br label %116

116:                                              ; preds = %114, %113, %29, %22
  %117 = load %struct.dns_msg*, %struct.dns_msg** %5, align 8
  ret %struct.dns_msg* %117
}

declare dso_local %struct.dns_msg* @gen_dns_msg(%struct.regional*, %struct.query_info*, i32) #1

declare dso_local i32 @PREFETCH_TTL_CALC(i64) #1

declare dso_local i32 @packed_rrset_copy_region(%struct.ub_packed_rrset_key*, %struct.regional*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
