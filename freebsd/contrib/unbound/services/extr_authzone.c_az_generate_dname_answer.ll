; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_dname_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_dname_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.query_info = type { i32, i32, i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__**, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.auth_data = type { i32 }
%struct.auth_rrset = type { i32 }
%struct.packed_rrset_data = type { i32 }

@LDNS_RCODE_YXDOMAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.query_info*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*)* @az_generate_dname_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_generate_dname_answer(%struct.auth_zone* %0, %struct.query_info* %1, %struct.regional* %2, %struct.dns_msg* %3, %struct.auth_data* %4, %struct.auth_rrset* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.auth_zone*, align 8
  %9 = alloca %struct.query_info*, align 8
  %10 = alloca %struct.regional*, align 8
  %11 = alloca %struct.dns_msg*, align 8
  %12 = alloca %struct.auth_data*, align 8
  %13 = alloca %struct.auth_rrset*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %8, align 8
  store %struct.query_info* %1, %struct.query_info** %9, align 8
  store %struct.regional* %2, %struct.regional** %10, align 8
  store %struct.dns_msg* %3, %struct.dns_msg** %11, align 8
  store %struct.auth_data* %4, %struct.auth_data** %12, align 8
  store %struct.auth_rrset* %5, %struct.auth_rrset** %13, align 8
  %14 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %15 = call i32 @log_assert(%struct.auth_data* %14)
  %16 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %17 = load %struct.regional*, %struct.regional** %10, align 8
  %18 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %19 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %20 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %21 = call i32 @msg_add_rrset_an(%struct.auth_zone* %16, %struct.regional* %17, %struct.dns_msg* %18, %struct.auth_data* %19, %struct.auth_rrset* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %102

24:                                               ; preds = %6
  %25 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %26 = load %struct.query_info*, %struct.query_info** %9, align 8
  %27 = getelementptr inbounds %struct.query_info, %struct.query_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.query_info*, %struct.query_info** %9, align 8
  %30 = getelementptr inbounds %struct.query_info, %struct.query_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.regional*, %struct.regional** %10, align 8
  %33 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %34 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %35 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %36 = call i32 @add_synth_cname(%struct.auth_zone* %25, i32 %28, i32 %31, %struct.regional* %32, %struct.dns_msg* %33, %struct.auth_data* %34, %struct.auth_rrset* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %102

39:                                               ; preds = %24
  %40 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %41 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @FLAGS_GET_RCODE(i32 %44)
  %46 = load i64, i64* @LDNS_RCODE_YXDOMAIN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %102

49:                                               ; preds = %39
  %50 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %51 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %49
  %57 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %58 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %60, align 8
  %62 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %63 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %61, i64 %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = icmp ne %struct.TYPE_5__* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %56, %49
  store i32 0, i32* %7, align 4
  br label %102

73:                                               ; preds = %56
  %74 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %75 = load %struct.query_info*, %struct.query_info** %9, align 8
  %76 = getelementptr inbounds %struct.query_info, %struct.query_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.regional*, %struct.regional** %10, align 8
  %79 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %80 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %81 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %83, align 8
  %85 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %86 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %84, i64 %91
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.packed_rrset_data*
  %98 = call i32 @follow_cname_chain(%struct.auth_zone* %74, i32 %77, %struct.regional* %78, %struct.dns_msg* %79, %struct.packed_rrset_data* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %73
  store i32 0, i32* %7, align 4
  br label %102

101:                                              ; preds = %73
  store i32 1, i32* %7, align 4
  br label %102

102:                                              ; preds = %101, %100, %72, %48, %38, %23
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @log_assert(%struct.auth_data*) #1

declare dso_local i32 @msg_add_rrset_an(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

declare dso_local i32 @add_synth_cname(%struct.auth_zone*, i32, i32, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i32 @follow_cname_chain(%struct.auth_zone*, i32, %struct.regional*, %struct.dns_msg*, %struct.packed_rrset_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
