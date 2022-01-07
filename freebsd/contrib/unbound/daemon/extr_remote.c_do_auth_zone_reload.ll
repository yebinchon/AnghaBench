; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_auth_zone_reload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_auth_zone_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.auth_zones* }
%struct.auth_zones = type { i32 }
%struct.auth_zone = type { i32 }

@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"error no auth-zone %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"error failed to read %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*, i8*)* @do_auth_zone_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_auth_zone_reload(i32* %0, %struct.worker* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.auth_zones*, align 8
  %11 = alloca %struct.auth_zone*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %9, align 8
  %12 = load %struct.worker*, %struct.worker** %5, align 8
  %13 = getelementptr inbounds %struct.worker, %struct.worker* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.auth_zones*, %struct.auth_zones** %14, align 8
  store %struct.auth_zones* %15, %struct.auth_zones** %10, align 8
  store %struct.auth_zone* null, %struct.auth_zone** %11, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @parse_arg_name(i32* %16, i8* %17, i32** %9, i64* %7, i32* %8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %73

21:                                               ; preds = %3
  %22 = load %struct.auth_zones*, %struct.auth_zones** %10, align 8
  %23 = icmp ne %struct.auth_zones* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load %struct.auth_zones*, %struct.auth_zones** %10, align 8
  %26 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %25, i32 0, i32 0
  %27 = call i32 @lock_rw_rdlock(i32* %26)
  %28 = load %struct.auth_zones*, %struct.auth_zones** %10, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %32 = call %struct.auth_zone* @auth_zone_find(%struct.auth_zones* %28, i32* %29, i64 %30, i32 %31)
  store %struct.auth_zone* %32, %struct.auth_zone** %11, align 8
  %33 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %34 = icmp ne %struct.auth_zone* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %37 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %36, i32 0, i32 0
  %38 = call i32 @lock_rw_wrlock(i32* %37)
  br label %39

39:                                               ; preds = %35, %24
  %40 = load %struct.auth_zones*, %struct.auth_zones** %10, align 8
  %41 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %40, i32 0, i32 0
  %42 = call i32 @lock_rw_unlock(i32* %41)
  br label %43

43:                                               ; preds = %39, %21
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @free(i32* %44)
  %46 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %47 = icmp ne %struct.auth_zone* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %4, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @ssl_printf(i32* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %50)
  br label %73

52:                                               ; preds = %43
  %53 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %54 = load %struct.worker*, %struct.worker** %5, align 8
  %55 = getelementptr inbounds %struct.worker, %struct.worker* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @auth_zone_read_zonefile(%struct.auth_zone* %53, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %52
  %61 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %62 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %61, i32 0, i32 0
  %63 = call i32 @lock_rw_unlock(i32* %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @ssl_printf(i32* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  br label %73

67:                                               ; preds = %52
  %68 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %69 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %68, i32 0, i32 0
  %70 = call i32 @lock_rw_unlock(i32* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @send_ok(i32* %71)
  br label %73

73:                                               ; preds = %67, %60, %48, %20
  ret void
}

declare dso_local i32 @parse_arg_name(i32*, i8*, i32**, i64*, i32*) #1

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local %struct.auth_zone* @auth_zone_find(%struct.auth_zones*, i32*, i64, i32) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @ssl_printf(i32*, i8*, i8*) #1

declare dso_local i32 @auth_zone_read_zonefile(%struct.auth_zone*, i32) #1

declare dso_local i32 @send_ok(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
