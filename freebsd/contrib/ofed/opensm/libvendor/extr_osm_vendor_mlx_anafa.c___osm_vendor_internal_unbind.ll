; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/libvendor/extr_osm_vendor_mlx_anafa.c___osm_vendor_internal_unbind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/libvendor/extr_osm_vendor_mlx_anafa.c___osm_vendor_internal_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i32* }

@TRUE = common dso_local global i8* null, align 8
@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"__osm_vendor_internal_unbind: destroying transport mgr.. \0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"__osm_vendor_internal_unbind: destroying txn mgr.. \0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"__osm_vendor_internal_unbind: destroying bind lock.. \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @__osm_vendor_internal_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__osm_vendor_internal_unbind(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @OSM_LOG_ENTER(i32* %12)
  %14 = load i8*, i8** @TRUE, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i8* %14, i8** %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = call i32 @osmv_txn_lock(%struct.TYPE_10__* %20)
  %22 = load i8*, i8** @TRUE, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i64, i64* %2, align 8
  %26 = call i32 @osmv_txn_abort_rmpp_txns(i64 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %29 = call i32 @osm_log(i32* %27, i32 %28, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = call i32 @osmv_txn_unlock(%struct.TYPE_10__* %30)
  %32 = load i64, i64* %2, align 8
  %33 = call i32 @osmv_transport_done(i64 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %36 = call i32 @osm_log(i32* %34, i32 %35, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = call i32 @osmv_txn_lock(%struct.TYPE_10__* %37)
  %39 = load i64, i64* %2, align 8
  %40 = call i32 @osmv_txnmgr_done(i64 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %43 = call i32 @osm_log(i32* %41, i32 %42, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = call i32 @osmv_txn_unlock(%struct.TYPE_10__* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @OSM_LOG_EXIT(i32* %46)
  ret void
}

declare dso_local i32 @OSM_LOG_ENTER(i32*) #1

declare dso_local i32 @osmv_txn_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @osmv_txn_abort_rmpp_txns(i64) #1

declare dso_local i32 @osm_log(i32*, i32, i8*) #1

declare dso_local i32 @osmv_txn_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @osmv_transport_done(i64) #1

declare dso_local i32 @osmv_txnmgr_done(i64) #1

declare dso_local i32 @OSM_LOG_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
