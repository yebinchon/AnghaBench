; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_auth_zone_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_auth_zone_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.auth_zones* }
%struct.auth_zones = type { i32 }

@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error zone xfr task not found %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*, i8*)* @do_auth_zone_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_auth_zone_transfer(i32* %0, %struct.worker* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.auth_zones*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %9, align 8
  %11 = load %struct.worker*, %struct.worker** %5, align 8
  %12 = getelementptr inbounds %struct.worker, %struct.worker* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.auth_zones*, %struct.auth_zones** %13, align 8
  store %struct.auth_zones* %14, %struct.auth_zones** %10, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @parse_arg_name(i32* %15, i8* %16, i32** %9, i64* %7, i32* %8)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %39

20:                                               ; preds = %3
  %21 = load %struct.auth_zones*, %struct.auth_zones** %10, align 8
  %22 = icmp ne %struct.auth_zones* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.auth_zones*, %struct.auth_zones** %10, align 8
  %25 = load %struct.worker*, %struct.worker** %5, align 8
  %26 = getelementptr inbounds %struct.worker, %struct.worker* %25, i32 0, i32 0
  %27 = load i32*, i32** %9, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %30 = call i32 @auth_zones_startprobesequence(%struct.auth_zones* %24, %struct.TYPE_2__* %26, i32* %27, i64 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %23, %20
  %33 = load i32*, i32** %4, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @ssl_printf(i32* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %39

36:                                               ; preds = %23
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @send_ok(i32* %37)
  br label %39

39:                                               ; preds = %36, %32, %19
  ret void
}

declare dso_local i32 @parse_arg_name(i32*, i8*, i32**, i64*, i32*) #1

declare dso_local i32 @auth_zones_startprobesequence(%struct.auth_zones*, %struct.TYPE_2__*, i32*, i64, i32) #1

declare dso_local i32 @ssl_printf(i32*, i8*, i8*) #1

declare dso_local i32 @send_ok(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
