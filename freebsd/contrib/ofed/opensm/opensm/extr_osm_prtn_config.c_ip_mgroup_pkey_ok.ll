; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_ip_mgroup_pkey_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_ip_mgroup_pkey_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.part_conf = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.precreate_mgroup = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"IP MC group (%s) specified with invalid pkey 0x%04x for partition pkey = 0x%04x (%s)\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.part_conf*, %struct.precreate_mgroup*)* @ip_mgroup_pkey_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_mgroup_pkey_ok(%struct.part_conf* %0, %struct.precreate_mgroup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.part_conf*, align 8
  %5 = alloca %struct.precreate_mgroup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.part_conf* %0, %struct.part_conf** %4, align 8
  store %struct.precreate_mgroup* %1, %struct.precreate_mgroup** %5, align 8
  %10 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %5, align 8
  %11 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %5, align 8
  %21 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %20, i32 0, i32 0
  %22 = call i64 @mgid_is_broadcast(%struct.TYPE_4__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.part_conf*, %struct.part_conf** %4, align 8
  %30 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cl_hton16(i32 32768)
  %35 = or i32 %33, %34
  %36 = icmp eq i32 %28, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27, %24, %2
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %66

39:                                               ; preds = %27
  %40 = load %struct.part_conf*, %struct.part_conf** %4, align 8
  %41 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @OSM_LOG_ERROR, align 4
  %44 = load i32, i32* @AF_INET6, align 4
  %45 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %5, align 8
  %46 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = trunc i64 %17 to i32
  %50 = call i32 @inet_ntop(i32 %44, i32* %48, i8* %19, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @cl_ntoh16(i32 %51)
  %53 = load %struct.part_conf*, %struct.part_conf** %4, align 8
  %54 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cl_ntoh16(i32 %57)
  %59 = load %struct.part_conf*, %struct.part_conf** %4, align 8
  %60 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @OSM_LOG(i32 %42, i32 %43, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52, i32 %58, i32 %63)
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %39, %37
  %67 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mgid_is_broadcast(%struct.TYPE_4__*) #2

declare dso_local i32 @cl_hton16(i32) #2

declare dso_local i32 @OSM_LOG(i32, i32, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #2

declare dso_local i32 @cl_ntoh16(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
