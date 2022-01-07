; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_find_soa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_find_soa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32, i32 }
%struct.auth_xfer = type { i32, i8*, i8*, i8*, i8* }
%struct.auth_data = type { i32 }
%struct.auth_rrset = type { %struct.packed_rrset_data* }
%struct.packed_rrset_data = type { i64, i32*, i32* }

@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.auth_xfer*)* @xfr_find_soa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfr_find_soa(%struct.auth_zone* %0, %struct.auth_xfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auth_zone*, align 8
  %5 = alloca %struct.auth_xfer*, align 8
  %6 = alloca %struct.auth_data*, align 8
  %7 = alloca %struct.auth_rrset*, align 8
  %8 = alloca %struct.packed_rrset_data*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %4, align 8
  store %struct.auth_xfer* %1, %struct.auth_xfer** %5, align 8
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
  br label %110

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
  br label %110

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
  br label %110

44:                                               ; preds = %34
  %45 = load %struct.auth_rrset*, %struct.auth_rrset** %7, align 8
  %46 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %45, i32 0, i32 0
  %47 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %46, align 8
  store %struct.packed_rrset_data* %47, %struct.packed_rrset_data** %8, align 8
  %48 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %49 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %51 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %56 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 20
  %61 = add nsw i32 %54, %60
  %62 = call i8* @sldns_read_uint32(i32 %61)
  %63 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %64 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %66 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %71 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 16
  %76 = add nsw i32 %69, %75
  %77 = call i8* @sldns_read_uint32(i32 %76)
  %78 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %79 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %81 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %86 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 12
  %91 = add nsw i32 %84, %90
  %92 = call i8* @sldns_read_uint32(i32 %91)
  %93 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %94 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %96 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %101 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 8
  %106 = add nsw i32 %99, %105
  %107 = call i8* @sldns_read_uint32(i32 %106)
  %108 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %109 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  store i32 1, i32* %3, align 4
  br label %110

110:                                              ; preds = %44, %43, %33, %19
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.auth_data* @az_find_name(%struct.auth_zone*, i32, i32) #1

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i32) #1

declare dso_local i8* @sldns_read_uint32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
