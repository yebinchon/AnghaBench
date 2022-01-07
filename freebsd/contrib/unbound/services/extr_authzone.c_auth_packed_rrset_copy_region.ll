; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_packed_rrset_copy_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_packed_rrset_copy_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.ub_packed_rrset_key* }
%struct.auth_zone = type { i32 }
%struct.auth_data = type { i32, i32 }
%struct.auth_rrset = type { i32, i32 }
%struct.regional = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_packed_rrset_key* (%struct.auth_zone*, %struct.auth_data*, %struct.auth_rrset*, %struct.regional*, i32)* @auth_packed_rrset_copy_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_packed_rrset_key* @auth_packed_rrset_copy_region(%struct.auth_zone* %0, %struct.auth_data* %1, %struct.auth_rrset* %2, %struct.regional* %3, i32 %4) #0 {
  %6 = alloca %struct.auth_zone*, align 8
  %7 = alloca %struct.auth_data*, align 8
  %8 = alloca %struct.auth_rrset*, align 8
  %9 = alloca %struct.regional*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ub_packed_rrset_key, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %6, align 8
  store %struct.auth_data* %1, %struct.auth_data** %7, align 8
  store %struct.auth_rrset* %2, %struct.auth_rrset** %8, align 8
  store %struct.regional* %3, %struct.regional** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = call i32 @memset(%struct.ub_packed_rrset_key* %11, i32 0, i32 40)
  %13 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %11, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store %struct.ub_packed_rrset_key* %11, %struct.ub_packed_rrset_key** %14, align 8
  %15 = load %struct.auth_rrset*, %struct.auth_rrset** %8, align 8
  %16 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %11, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %21 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %11, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %26 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %11, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.auth_rrset*, %struct.auth_rrset** %8, align 8
  %31 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @htons(i32 %32)
  %34 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %11, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %37 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @htons(i32 %38)
  %40 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %11, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %11, i32 0, i32 0
  %43 = call i32 @rrset_key_hash(%struct.TYPE_4__* %42)
  %44 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %11, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.regional*, %struct.regional** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call %struct.ub_packed_rrset_key* @packed_rrset_copy_region(%struct.ub_packed_rrset_key* %11, %struct.regional* %46, i32 %47)
  ret %struct.ub_packed_rrset_key* %48
}

declare dso_local i32 @memset(%struct.ub_packed_rrset_key*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @rrset_key_hash(%struct.TYPE_4__*) #1

declare dso_local %struct.ub_packed_rrset_key* @packed_rrset_copy_region(%struct.ub_packed_rrset_key*, %struct.regional*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
