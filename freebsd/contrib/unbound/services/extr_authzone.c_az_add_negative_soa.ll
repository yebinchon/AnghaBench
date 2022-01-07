; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_add_negative_soa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_add_negative_soa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32, i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i64, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.packed_rrset_data = type { i64, i32*, i32*, i8**, i8* }
%struct.auth_rrset = type { i32 }
%struct.auth_data = type { i32 }

@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@SERVE_EXPIRED_TTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.regional*, %struct.dns_msg*)* @az_add_negative_soa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_add_negative_soa(%struct.auth_zone* %0, %struct.regional* %1, %struct.dns_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auth_zone*, align 8
  %6 = alloca %struct.regional*, align 8
  %7 = alloca %struct.dns_msg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.packed_rrset_data*, align 8
  %10 = alloca %struct.auth_rrset*, align 8
  %11 = alloca %struct.auth_data*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %5, align 8
  store %struct.regional* %1, %struct.regional** %6, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %7, align 8
  %12 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  %13 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  %14 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  %17 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.auth_data* @az_find_name(%struct.auth_zone* %12, i32 %15, i32 %18)
  store %struct.auth_data* %19, %struct.auth_data** %11, align 8
  %20 = load %struct.auth_data*, %struct.auth_data** %11, align 8
  %21 = icmp ne %struct.auth_data* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %136

23:                                               ; preds = %3
  %24 = load %struct.auth_data*, %struct.auth_data** %11, align 8
  %25 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %26 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %24, i32 %25)
  store %struct.auth_rrset* %26, %struct.auth_rrset** %10, align 8
  %27 = load %struct.auth_rrset*, %struct.auth_rrset** %10, align 8
  %28 = icmp ne %struct.auth_rrset* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %136

30:                                               ; preds = %23
  %31 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %32 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @log_assert(i32 %37)
  %39 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  %40 = load %struct.regional*, %struct.regional** %6, align 8
  %41 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %42 = load %struct.auth_data*, %struct.auth_data** %11, align 8
  %43 = load %struct.auth_rrset*, %struct.auth_rrset** %10, align 8
  %44 = call i32 @msg_add_rrset_ns(%struct.auth_zone* %39, %struct.regional* %40, %struct.dns_msg* %41, %struct.auth_data* %42, %struct.auth_rrset* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %136

47:                                               ; preds = %30
  %48 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %49 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %51, align 8
  %53 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %54 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %52, i64 %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %65, %struct.packed_rrset_data** %9, align 8
  %66 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %67 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %136

71:                                               ; preds = %47
  %72 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %73 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %76, 6
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %136

79:                                               ; preds = %71
  %80 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %81 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %86 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 4
  %91 = add nsw i32 %84, %90
  %92 = call i64 @sldns_read_uint32(i32 %91)
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %96 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load i64, i64* %8, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %100 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %99, i32 0, i32 3
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  store i8* %98, i8** %102, align 8
  %103 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %104 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %107, i64 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = call i64 @get_rrset_ttl(%struct.TYPE_6__* %109)
  %111 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %112 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i64 %110, i64* %114, align 8
  %115 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %116 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @PREFETCH_TTL_CALC(i64 %119)
  %121 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %122 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  store i32 %120, i32* %124, align 8
  %125 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %126 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %125, i32 0, i32 0
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SERVE_EXPIRED_TTL, align 8
  %131 = add nsw i64 %129, %130
  %132 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %133 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  store i64 %131, i64* %135, align 8
  store i32 1, i32* %4, align 4
  br label %136

136:                                              ; preds = %79, %78, %70, %46, %29, %22
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.auth_data* @az_find_name(%struct.auth_zone*, i32, i32) #1

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @msg_add_rrset_ns(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

declare dso_local i64 @sldns_read_uint32(i32) #1

declare dso_local i64 @get_rrset_ttl(%struct.TYPE_6__*) #1

declare dso_local i32 @PREFETCH_TTL_CALC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
