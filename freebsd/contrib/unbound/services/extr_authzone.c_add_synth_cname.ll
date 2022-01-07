; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_add_synth_cname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_add_synth_cname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, %struct.ub_packed_rrset_key**, i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.auth_data = type { i32 }
%struct.auth_rrset = type { i32 }

@LDNS_RCODE_YXDOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, i32*, i64, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*)* @add_synth_cname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_synth_cname(%struct.auth_zone* %0, i32* %1, i64 %2, %struct.regional* %3, %struct.dns_msg* %4, %struct.auth_data* %5, %struct.auth_rrset* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.auth_zone*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.regional*, align 8
  %13 = alloca %struct.dns_msg*, align 8
  %14 = alloca %struct.auth_data*, align 8
  %15 = alloca %struct.auth_rrset*, align 8
  %16 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.regional* %3, %struct.regional** %12, align 8
  store %struct.dns_msg* %4, %struct.dns_msg** %13, align 8
  store %struct.auth_data* %5, %struct.auth_data** %14, align 8
  store %struct.auth_rrset* %6, %struct.auth_rrset** %15, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load %struct.regional*, %struct.regional** %12, align 8
  %20 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %21 = load %struct.auth_rrset*, %struct.auth_rrset** %15, align 8
  %22 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %23 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @create_synth_cname(i32* %17, i64 %18, %struct.regional* %19, %struct.auth_data* %20, %struct.auth_rrset* %21, i32 %24, %struct.ub_packed_rrset_key** %16)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %72

28:                                               ; preds = %7
  %29 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %30 = icmp ne %struct.ub_packed_rrset_key* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @LDNS_RCODE_YXDOMAIN, align 4
  %33 = load %struct.dns_msg*, %struct.dns_msg** %13, align 8
  %34 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 8
  store i32 1, i32* %8, align 4
  br label %72

39:                                               ; preds = %28
  %40 = load %struct.regional*, %struct.regional** %12, align 8
  %41 = load %struct.dns_msg*, %struct.dns_msg** %13, align 8
  %42 = call i32 @msg_grow_array(%struct.regional* %40, %struct.dns_msg* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %72

45:                                               ; preds = %39
  %46 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %47 = load %struct.dns_msg*, %struct.dns_msg** %13, align 8
  %48 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %50, align 8
  %52 = load %struct.dns_msg*, %struct.dns_msg** %13, align 8
  %53 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %51, i64 %56
  store %struct.ub_packed_rrset_key* %46, %struct.ub_packed_rrset_key** %57, align 8
  %58 = load %struct.dns_msg*, %struct.dns_msg** %13, align 8
  %59 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.dns_msg*, %struct.dns_msg** %13, align 8
  %65 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.dns_msg*, %struct.dns_msg** %13, align 8
  %71 = call i32 @msg_ttl(%struct.dns_msg* %70)
  store i32 1, i32* %8, align 4
  br label %72

72:                                               ; preds = %45, %44, %31, %27
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32 @create_synth_cname(i32*, i64, %struct.regional*, %struct.auth_data*, %struct.auth_rrset*, i32, %struct.ub_packed_rrset_key**) #1

declare dso_local i32 @msg_grow_array(%struct.regional*, %struct.dns_msg*) #1

declare dso_local i32 @msg_ttl(%struct.dns_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
