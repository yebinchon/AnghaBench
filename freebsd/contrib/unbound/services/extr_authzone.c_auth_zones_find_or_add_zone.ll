; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_find_or_add_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_find_or_add_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.auth_zones = type { i32 }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cannot parse auth zone name: %s\00", align 1
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.auth_zone* (%struct.auth_zones*, i8*)* @auth_zones_find_or_add_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.auth_zone* @auth_zones_find_or_add_zone(%struct.auth_zones* %0, i8* %1) #0 {
  %3 = alloca %struct.auth_zone*, align 8
  %4 = alloca %struct.auth_zones*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.auth_zone*, align 8
  %10 = alloca i32, align 4
  store %struct.auth_zones* %0, %struct.auth_zones** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = mul nuw i64 4, %13
  store i64 %16, i64* %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @sldns_str2wire_dname_buf(i8* %17, i32* %15, i64* %8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %21)
  store %struct.auth_zone* null, %struct.auth_zone** %3, align 8
  store i32 1, i32* %10, align 4
  br label %41

23:                                               ; preds = %2
  %24 = load %struct.auth_zones*, %struct.auth_zones** %4, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %27 = call %struct.auth_zone* @auth_zone_find(%struct.auth_zones* %24, i32* %15, i64 %25, i32 %26)
  store %struct.auth_zone* %27, %struct.auth_zone** %9, align 8
  %28 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %29 = icmp ne %struct.auth_zone* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load %struct.auth_zones*, %struct.auth_zones** %4, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %34 = call %struct.auth_zone* @auth_zone_create(%struct.auth_zones* %31, i32* %15, i64 %32, i32 %33)
  store %struct.auth_zone* %34, %struct.auth_zone** %9, align 8
  br label %39

35:                                               ; preds = %23
  %36 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %37 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %36, i32 0, i32 0
  %38 = call i32 @lock_rw_wrlock(i32* %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  store %struct.auth_zone* %40, %struct.auth_zone** %3, align 8
  store i32 1, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %20
  %42 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load %struct.auth_zone*, %struct.auth_zone** %3, align 8
  ret %struct.auth_zone* %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sldns_str2wire_dname_buf(i8*, i32*, i64*) #2

declare dso_local i32 @log_err(i8*, i8*) #2

declare dso_local %struct.auth_zone* @auth_zone_find(%struct.auth_zones*, i32*, i64, i32) #2

declare dso_local %struct.auth_zone* @auth_zone_create(%struct.auth_zones*, i32*, i64, i32) #2

declare dso_local i32 @lock_rw_wrlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
