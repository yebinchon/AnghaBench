; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_check_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_check_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }
%struct.aac_fib = type { i32* }
%struct.aac_cnt_config = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i64 }
%struct.aac_cf_status_hdr = type { i64 }

@CT_PACKET_SIZE = common dso_local global i64 0, align 8
@VM_ContainerConfig = common dso_local global i8* null, align 8
@CT_GET_CONFIG_STATUS = common dso_local global i32 0, align 4
@CNT_SIZE = common dso_local global i64 0, align 8
@ContainerCommand = common dso_local global i32 0, align 4
@ST_OK = common dso_local global i64 0, align 8
@CT_OK = common dso_local global i64 0, align 8
@CFACT_PAUSE = common dso_local global i64 0, align 8
@CT_COMMIT_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*)* @aac_check_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_check_config(%struct.aac_softc* %0) #0 {
  %2 = alloca %struct.aac_softc*, align 8
  %3 = alloca %struct.aac_fib*, align 8
  %4 = alloca %struct.aac_cnt_config*, align 8
  %5 = alloca %struct.aac_cf_status_hdr*, align 8
  %6 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  %7 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %8 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %7, i32 0, i32 0
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %11 = call i32 @aac_alloc_sync_fib(%struct.aac_softc* %10, %struct.aac_fib** %3)
  %12 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %13 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = bitcast i32* %15 to %struct.aac_cnt_config*
  store %struct.aac_cnt_config* %16, %struct.aac_cnt_config** %4, align 8
  %17 = load %struct.aac_cnt_config*, %struct.aac_cnt_config** %4, align 8
  %18 = load i64, i64* @CT_PACKET_SIZE, align 8
  %19 = sub i64 32, %18
  %20 = call i32 @bzero(%struct.aac_cnt_config* %17, i64 %19)
  %21 = load i8*, i8** @VM_ContainerConfig, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load %struct.aac_cnt_config*, %struct.aac_cnt_config** %4, align 8
  %24 = getelementptr inbounds %struct.aac_cnt_config, %struct.aac_cnt_config* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* @CT_GET_CONFIG_STATUS, align 4
  %26 = load %struct.aac_cnt_config*, %struct.aac_cnt_config** %4, align 8
  %27 = getelementptr inbounds %struct.aac_cnt_config, %struct.aac_cnt_config* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load %struct.aac_cnt_config*, %struct.aac_cnt_config** %4, align 8
  %30 = getelementptr inbounds %struct.aac_cnt_config, %struct.aac_cnt_config* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @CNT_SIZE, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 8, i32* %34, align 4
  %35 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %36 = load i32, i32* @ContainerCommand, align 4
  %37 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %38 = call i32 @aac_sync_fib(%struct.aac_softc* %35, i32 %36, i32 0, %struct.aac_fib* %37, i32 32)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.aac_cnt_config*, %struct.aac_cnt_config** %4, align 8
  %40 = getelementptr inbounds %struct.aac_cnt_config, %struct.aac_cnt_config* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.aac_cf_status_hdr*
  store %struct.aac_cf_status_hdr* %43, %struct.aac_cf_status_hdr** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %108

46:                                               ; preds = %1
  %47 = load %struct.aac_cnt_config*, %struct.aac_cnt_config** %4, align 8
  %48 = getelementptr inbounds %struct.aac_cnt_config, %struct.aac_cnt_config* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ST_OK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %108

52:                                               ; preds = %46
  %53 = load %struct.aac_cnt_config*, %struct.aac_cnt_config** %4, align 8
  %54 = getelementptr inbounds %struct.aac_cnt_config, %struct.aac_cnt_config* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @CT_OK, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %108

62:                                               ; preds = %52
  %63 = load %struct.aac_cf_status_hdr*, %struct.aac_cf_status_hdr** %5, align 8
  %64 = getelementptr inbounds %struct.aac_cf_status_hdr, %struct.aac_cf_status_hdr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CFACT_PAUSE, align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %106

68:                                               ; preds = %62
  %69 = load %struct.aac_cnt_config*, %struct.aac_cnt_config** %4, align 8
  %70 = load i64, i64* @CT_PACKET_SIZE, align 8
  %71 = sub i64 32, %70
  %72 = call i32 @bzero(%struct.aac_cnt_config* %69, i64 %71)
  %73 = load i8*, i8** @VM_ContainerConfig, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.aac_cnt_config*, %struct.aac_cnt_config** %4, align 8
  %76 = getelementptr inbounds %struct.aac_cnt_config, %struct.aac_cnt_config* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* @CT_COMMIT_CONFIG, align 4
  %78 = load %struct.aac_cnt_config*, %struct.aac_cnt_config** %4, align 8
  %79 = getelementptr inbounds %struct.aac_cnt_config, %struct.aac_cnt_config* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  %81 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %82 = load i32, i32* @ContainerCommand, align 4
  %83 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %84 = call i32 @aac_sync_fib(%struct.aac_softc* %81, i32 %82, i32 0, %struct.aac_fib* %83, i32 32)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %68
  %88 = load %struct.aac_cnt_config*, %struct.aac_cnt_config** %4, align 8
  %89 = getelementptr inbounds %struct.aac_cnt_config, %struct.aac_cnt_config* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ST_OK, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %87
  %94 = load %struct.aac_cnt_config*, %struct.aac_cnt_config** %4, align 8
  %95 = getelementptr inbounds %struct.aac_cnt_config, %struct.aac_cnt_config* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* @CT_OK, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  br label %105

104:                                              ; preds = %93, %87, %68
  store i32 -2, i32* %6, align 4
  br label %105

105:                                              ; preds = %104, %103
  br label %107

106:                                              ; preds = %62
  store i32 -3, i32* %6, align 4
  br label %107

107:                                              ; preds = %106, %105
  br label %109

108:                                              ; preds = %52, %46, %1
  store i32 -1, i32* %6, align 4
  br label %109

109:                                              ; preds = %108, %107
  %110 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %111 = call i32 @aac_release_sync_fib(%struct.aac_softc* %110)
  %112 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %113 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %112, i32 0, i32 0
  %114 = call i32 @mtx_unlock(i32* %113)
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @aac_alloc_sync_fib(%struct.aac_softc*, %struct.aac_fib**) #1

declare dso_local i32 @bzero(%struct.aac_cnt_config*, i64) #1

declare dso_local i32 @aac_sync_fib(%struct.aac_softc*, i32, i32, %struct.aac_fib*, i32) #1

declare dso_local i32 @aac_release_sync_fib(%struct.aac_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
