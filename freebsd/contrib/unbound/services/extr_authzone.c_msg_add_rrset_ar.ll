; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_msg_add_rrset_ar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_msg_add_rrset_ar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32* }
%struct.auth_data = type { i32, i32 }
%struct.auth_rrset = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*)* @msg_add_rrset_ar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_add_rrset_ar(%struct.auth_zone* %0, %struct.regional* %1, %struct.dns_msg* %2, %struct.auth_data* %3, %struct.auth_rrset* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_zone*, align 8
  %8 = alloca %struct.regional*, align 8
  %9 = alloca %struct.dns_msg*, align 8
  %10 = alloca %struct.auth_data*, align 8
  %11 = alloca %struct.auth_rrset*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %7, align 8
  store %struct.regional* %1, %struct.regional** %8, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %9, align 8
  store %struct.auth_data* %3, %struct.auth_data** %10, align 8
  store %struct.auth_rrset* %4, %struct.auth_rrset** %11, align 8
  %12 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %13 = icmp ne %struct.auth_rrset* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %16 = icmp ne %struct.auth_data* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %5
  store i32 1, i32* %6, align 4
  br label %75

18:                                               ; preds = %14
  %19 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %20 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %21 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %24 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %27 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %30 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @msg_rrset_duplicate(%struct.dns_msg* %19, i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  br label %75

35:                                               ; preds = %18
  %36 = load %struct.regional*, %struct.regional** %8, align 8
  %37 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %38 = call i32 @msg_grow_array(%struct.regional* %36, %struct.dns_msg* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %75

41:                                               ; preds = %35
  %42 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %43 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %44 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %45 = load %struct.regional*, %struct.regional** %8, align 8
  %46 = call i32 @auth_packed_rrset_copy_region(%struct.auth_zone* %42, %struct.auth_data* %43, %struct.auth_rrset* %44, %struct.regional* %45, i32 0)
  %47 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %48 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %53 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  store i32 %46, i32* %57, align 4
  %58 = icmp ne i32 %46, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %75

60:                                               ; preds = %41
  %61 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %62 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %68 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %74 = call i32 @msg_ttl(%struct.dns_msg* %73)
  store i32 1, i32* %6, align 4
  br label %75

75:                                               ; preds = %60, %59, %40, %34, %17
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i64 @msg_rrset_duplicate(%struct.dns_msg*, i32, i32, i32, i32) #1

declare dso_local i32 @msg_grow_array(%struct.regional*, %struct.dns_msg*) #1

declare dso_local i32 @auth_packed_rrset_copy_region(%struct.auth_zone*, %struct.auth_data*, %struct.auth_rrset*, %struct.regional*, i32) #1

declare dso_local i32 @msg_ttl(%struct.dns_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
