; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_add_pbc_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_add_pbc_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { %struct.wps_pbc_session* }
%struct.wps_pbc_session = type { %struct.wps_pbc_session*, %struct.os_reltime, i32, i32 }
%struct.os_reltime = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPS_UUID_LEN = common dso_local global i32 0, align 4
@WPS_PBC_WALK_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_registrar*, i32*, i32*)* @wps_registrar_add_pbc_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_registrar_add_pbc_session(%struct.wps_registrar* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.wps_registrar*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wps_pbc_session*, align 8
  %8 = alloca %struct.wps_pbc_session*, align 8
  %9 = alloca %struct.os_reltime, align 4
  store %struct.wps_registrar* %0, %struct.wps_registrar** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store %struct.wps_pbc_session* null, %struct.wps_pbc_session** %8, align 8
  %10 = call i32 @os_get_reltime(%struct.os_reltime* %9)
  %11 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %12 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %11, i32 0, i32 0
  %13 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %12, align 8
  store %struct.wps_pbc_session* %13, %struct.wps_pbc_session** %7, align 8
  br label %14

14:                                               ; preds = %49, %3
  %15 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %16 = icmp ne %struct.wps_pbc_session* %15, null
  br i1 %16, label %17, label %54

17:                                               ; preds = %14
  %18 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %19 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = call i64 @os_memcmp(i32 %20, i32* %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %17
  %26 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %27 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @WPS_UUID_LEN, align 4
  %31 = call i64 @os_memcmp(i32 %28, i32* %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %25
  %34 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %8, align 8
  %35 = icmp ne %struct.wps_pbc_session* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %38 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %37, i32 0, i32 0
  %39 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %38, align 8
  %40 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %8, align 8
  %41 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %40, i32 0, i32 0
  store %struct.wps_pbc_session* %39, %struct.wps_pbc_session** %41, align 8
  br label %48

42:                                               ; preds = %33
  %43 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %44 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %43, i32 0, i32 0
  %45 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %44, align 8
  %46 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %47 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %46, i32 0, i32 0
  store %struct.wps_pbc_session* %45, %struct.wps_pbc_session** %47, align 8
  br label %48

48:                                               ; preds = %42, %36
  br label %54

49:                                               ; preds = %25, %17
  %50 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  store %struct.wps_pbc_session* %50, %struct.wps_pbc_session** %8, align 8
  %51 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %52 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %51, i32 0, i32 0
  %53 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %52, align 8
  store %struct.wps_pbc_session* %53, %struct.wps_pbc_session** %7, align 8
  br label %14

54:                                               ; preds = %48, %14
  %55 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %56 = icmp ne %struct.wps_pbc_session* %55, null
  br i1 %56, label %79, label %57

57:                                               ; preds = %54
  %58 = call %struct.wps_pbc_session* @os_zalloc(i32 24)
  store %struct.wps_pbc_session* %58, %struct.wps_pbc_session** %7, align 8
  %59 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %60 = icmp eq %struct.wps_pbc_session* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %115

62:                                               ; preds = %57
  %63 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %64 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* @ETH_ALEN, align 4
  %68 = call i32 @os_memcpy(i32 %65, i32* %66, i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %73 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* @WPS_UUID_LEN, align 4
  %77 = call i32 @os_memcpy(i32 %74, i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %62
  br label %79

79:                                               ; preds = %78, %54
  %80 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %81 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %80, i32 0, i32 0
  %82 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %81, align 8
  %83 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %84 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %83, i32 0, i32 0
  store %struct.wps_pbc_session* %82, %struct.wps_pbc_session** %84, align 8
  %85 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %86 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %87 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %86, i32 0, i32 0
  store %struct.wps_pbc_session* %85, %struct.wps_pbc_session** %87, align 8
  %88 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %89 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %88, i32 0, i32 1
  %90 = bitcast %struct.os_reltime* %89 to i8*
  %91 = bitcast %struct.os_reltime* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 4 %91, i64 4, i1 false)
  %92 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  store %struct.wps_pbc_session* %92, %struct.wps_pbc_session** %8, align 8
  %93 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %94 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %93, i32 0, i32 0
  %95 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %94, align 8
  store %struct.wps_pbc_session* %95, %struct.wps_pbc_session** %7, align 8
  br label %96

96:                                               ; preds = %110, %79
  %97 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %98 = icmp ne %struct.wps_pbc_session* %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %101 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %100, i32 0, i32 1
  %102 = load i32, i32* @WPS_PBC_WALK_TIME, align 4
  %103 = call i64 @os_reltime_expired(%struct.os_reltime* %9, %struct.os_reltime* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %8, align 8
  %107 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %106, i32 0, i32 0
  store %struct.wps_pbc_session* null, %struct.wps_pbc_session** %107, align 8
  %108 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %109 = call i32 @wps_free_pbc_sessions(%struct.wps_pbc_session* %108)
  br label %115

110:                                              ; preds = %99
  %111 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  store %struct.wps_pbc_session* %111, %struct.wps_pbc_session** %8, align 8
  %112 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %113 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %112, i32 0, i32 0
  %114 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %113, align 8
  store %struct.wps_pbc_session* %114, %struct.wps_pbc_session** %7, align 8
  br label %96

115:                                              ; preds = %61, %105, %96
  ret void
}

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local %struct.wps_pbc_session* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @os_reltime_expired(%struct.os_reltime*, %struct.os_reltime*, i32) #1

declare dso_local i32 @wps_free_pbc_sessions(%struct.wps_pbc_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
