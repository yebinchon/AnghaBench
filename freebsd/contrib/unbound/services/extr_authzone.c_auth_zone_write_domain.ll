; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_write_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_write_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i64 }
%struct.auth_data = type { i64, %struct.auth_rrset* }
%struct.auth_rrset = type { i64, %struct.auth_rrset* }

@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.auth_data*, i32*)* @auth_zone_write_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_zone_write_domain(%struct.auth_zone* %0, %struct.auth_data* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auth_zone*, align 8
  %6 = alloca %struct.auth_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.auth_rrset*, align 8
  %9 = alloca %struct.auth_rrset*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %5, align 8
  store %struct.auth_data* %1, %struct.auth_data** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  %11 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.auth_data*, %struct.auth_data** %6, align 8
  %14 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %3
  %18 = load %struct.auth_data*, %struct.auth_data** %6, align 8
  %19 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %20 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %18, i64 %19)
  store %struct.auth_rrset* %20, %struct.auth_rrset** %9, align 8
  %21 = load %struct.auth_rrset*, %struct.auth_rrset** %9, align 8
  %22 = icmp ne %struct.auth_rrset* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  %25 = load %struct.auth_data*, %struct.auth_data** %6, align 8
  %26 = load %struct.auth_rrset*, %struct.auth_rrset** %9, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @auth_zone_write_rrset(%struct.auth_zone* %24, %struct.auth_data* %25, %struct.auth_rrset* %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %69

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %17
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.auth_data*, %struct.auth_data** %6, align 8
  %35 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %34, i32 0, i32 1
  %36 = load %struct.auth_rrset*, %struct.auth_rrset** %35, align 8
  store %struct.auth_rrset* %36, %struct.auth_rrset** %8, align 8
  br label %37

37:                                               ; preds = %64, %33
  %38 = load %struct.auth_rrset*, %struct.auth_rrset** %8, align 8
  %39 = icmp ne %struct.auth_rrset* %38, null
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  %42 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.auth_data*, %struct.auth_data** %6, align 8
  %45 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.auth_rrset*, %struct.auth_rrset** %8, align 8
  %50 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %64

55:                                               ; preds = %48, %40
  %56 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  %57 = load %struct.auth_data*, %struct.auth_data** %6, align 8
  %58 = load %struct.auth_rrset*, %struct.auth_rrset** %8, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @auth_zone_write_rrset(%struct.auth_zone* %56, %struct.auth_data* %57, %struct.auth_rrset* %58, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %69

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %54
  %65 = load %struct.auth_rrset*, %struct.auth_rrset** %8, align 8
  %66 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %65, i32 0, i32 1
  %67 = load %struct.auth_rrset*, %struct.auth_rrset** %66, align 8
  store %struct.auth_rrset* %67, %struct.auth_rrset** %8, align 8
  br label %37

68:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %62, %30
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i64) #1

declare dso_local i32 @auth_zone_write_rrset(%struct.auth_zone*, %struct.auth_data*, %struct.auth_rrset*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
