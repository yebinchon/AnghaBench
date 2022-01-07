; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_get_serial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_get_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32, i32 }
%struct.auth_data = type { i32 }
%struct.auth_rrset = type { %struct.packed_rrset_data* }
%struct.packed_rrset_data = type { i64, i32*, i32* }

@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_zone_get_serial(%struct.auth_zone* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auth_zone*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.auth_data*, align 8
  %7 = alloca %struct.auth_rrset*, align 8
  %8 = alloca %struct.packed_rrset_data*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %10 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %11 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %14 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.auth_data* @az_find_name(%struct.auth_zone* %9, i32 %12, i32 %15)
  store %struct.auth_data* %16, %struct.auth_data** %6, align 8
  %17 = load %struct.auth_data*, %struct.auth_data** %6, align 8
  %18 = icmp ne %struct.auth_data* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

20:                                               ; preds = %2
  %21 = load %struct.auth_data*, %struct.auth_data** %6, align 8
  %22 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %23 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %21, i32 %22)
  store %struct.auth_rrset* %23, %struct.auth_rrset** %7, align 8
  %24 = load %struct.auth_rrset*, %struct.auth_rrset** %7, align 8
  %25 = icmp ne %struct.auth_rrset* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.auth_rrset*, %struct.auth_rrset** %7, align 8
  %28 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %27, i32 0, i32 0
  %29 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %28, align 8
  %30 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %20
  store i32 0, i32* %3, align 4
  br label %62

34:                                               ; preds = %26
  %35 = load %struct.auth_rrset*, %struct.auth_rrset** %7, align 8
  %36 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %35, i32 0, i32 0
  %37 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %36, align 8
  %38 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 22
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %62

44:                                               ; preds = %34
  %45 = load %struct.auth_rrset*, %struct.auth_rrset** %7, align 8
  %46 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %45, i32 0, i32 0
  %47 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %46, align 8
  store %struct.packed_rrset_data* %47, %struct.packed_rrset_data** %8, align 8
  %48 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %49 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %54 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 20
  %59 = add nsw i32 %52, %58
  %60 = call i32 @sldns_read_uint32(i32 %59)
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %44, %43, %33, %19
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.auth_data* @az_find_name(%struct.auth_zone*, i32, i32) #1

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i32) #1

declare dso_local i32 @sldns_read_uint32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
