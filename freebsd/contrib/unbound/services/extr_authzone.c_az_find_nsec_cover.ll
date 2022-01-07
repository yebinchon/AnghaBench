; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_find_nsec_cover.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_find_nsec_cover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_rrset = type { i32 }
%struct.auth_zone = type { i64 }
%struct.auth_data = type { i64, i32* }

@LDNS_RR_TYPE_NSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.auth_rrset* (%struct.auth_zone*, %struct.auth_data**)* @az_find_nsec_cover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.auth_rrset* @az_find_nsec_cover(%struct.auth_zone* %0, %struct.auth_data** %1) #0 {
  %3 = alloca %struct.auth_rrset*, align 8
  %4 = alloca %struct.auth_zone*, align 8
  %5 = alloca %struct.auth_data**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.auth_rrset*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %4, align 8
  store %struct.auth_data** %1, %struct.auth_data*** %5, align 8
  %9 = load %struct.auth_data**, %struct.auth_data*** %5, align 8
  %10 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  %11 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.auth_data**, %struct.auth_data*** %5, align 8
  %14 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %15 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %35, %2
  %18 = load %struct.auth_data**, %struct.auth_data*** %5, align 8
  %19 = load %struct.auth_data*, %struct.auth_data** %18, align 8
  %20 = load i32, i32* @LDNS_RR_TYPE_NSEC, align 4
  %21 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %19, i32 %20)
  store %struct.auth_rrset* %21, %struct.auth_rrset** %8, align 8
  %22 = icmp eq %struct.auth_rrset* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @dname_is_root(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.auth_rrset* null, %struct.auth_rrset** %3, align 8
  br label %44

28:                                               ; preds = %23
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %31 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store %struct.auth_rrset* null, %struct.auth_rrset** %3, align 8
  br label %44

35:                                               ; preds = %28
  %36 = call i32 @dname_remove_label(i32** %6, i64* %7)
  %37 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call %struct.auth_data* @az_find_name(%struct.auth_zone* %37, i32* %38, i64 %39)
  %41 = load %struct.auth_data**, %struct.auth_data*** %5, align 8
  store %struct.auth_data* %40, %struct.auth_data** %41, align 8
  br label %17

42:                                               ; preds = %17
  %43 = load %struct.auth_rrset*, %struct.auth_rrset** %8, align 8
  store %struct.auth_rrset* %43, %struct.auth_rrset** %3, align 8
  br label %44

44:                                               ; preds = %42, %34, %27
  %45 = load %struct.auth_rrset*, %struct.auth_rrset** %3, align 8
  ret %struct.auth_rrset* %45
}

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i32) #1

declare dso_local i64 @dname_is_root(i32*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local %struct.auth_data* @az_find_name(%struct.auth_zone*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
