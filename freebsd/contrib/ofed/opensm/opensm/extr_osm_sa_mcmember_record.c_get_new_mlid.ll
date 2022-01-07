; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_sa_mcmember_record.c_get_new_mlid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_sa_mcmember_record.c_get_new_mlid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64, i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { i32 }

@IB_LID_MCAST_START_HO = common dso_local global i64 0, align 8
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Special Case Solicited Node Mcast Join for MGID %s\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @get_new_mlid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_new_mlid(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %6, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @cl_ntoh16(i64 %21)
  %23 = load i64, i64* @IB_LID_MCAST_START_HO, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @cl_ntoh16(i64 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @osm_get_mbox_by_mlid(%struct.TYPE_12__* %33, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %3, align 8
  br label %113

39:                                               ; preds = %32, %25, %20, %2
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %79

47:                                               ; preds = %39
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = call i64 @match_ipv6_snm_mgid(%struct.TYPE_15__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %47
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = call i64 @find_ipv6_snm_mlid(%struct.TYPE_12__* %55, %struct.TYPE_15__* %57)
  store i64 %58, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %52
  %61 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %62 = zext i32 %61 to i64
  %63 = call i8* @llvm.stacksave()
  store i8* %63, i8** %10, align 8
  %64 = alloca i8, i64 %62, align 16
  store i64 %62, i64* %11, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %69 = load i32, i32* @AF_INET6, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = trunc i64 %62 to i32
  %75 = call i32 @inet_ntop(i32 %69, i32 %73, i8* %64, i32 %74)
  %76 = call i32 @OSM_LOG(i32 %67, i32 %68, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i64, i64* %7, align 8
  store i64 %77, i64* %3, align 8
  %78 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %78)
  br label %113

79:                                               ; preds = %52, %47, %39
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IB_LID_MCAST_START_HO, align 8
  %84 = sub nsw i64 %82, %83
  %85 = add nsw i64 %84, 1
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %109, %79
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %87
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %8, align 4
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* @IB_LID_MCAST_START_HO, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i64 @cl_hton16(i64 %106)
  store i64 %107, i64* %3, align 8
  br label %113

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %8, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %87

112:                                              ; preds = %87
  store i64 0, i64* %3, align 8
  br label %113

113:                                              ; preds = %112, %102, %60, %37
  %114 = load i64, i64* %3, align 8
  ret i64 %114
}

declare dso_local i64 @cl_ntoh16(i64) #1

declare dso_local i32 @osm_get_mbox_by_mlid(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @match_ipv6_snm_mgid(%struct.TYPE_15__*) #1

declare dso_local i64 @find_ipv6_snm_mlid(%struct.TYPE_12__*, %struct.TYPE_15__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @OSM_LOG(i32, i32, i8*, i32) #1

declare dso_local i32 @inet_ntop(i32, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @cl_hton16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
