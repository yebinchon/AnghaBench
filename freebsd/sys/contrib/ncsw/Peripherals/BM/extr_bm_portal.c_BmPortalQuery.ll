; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_BmPortalQuery.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_BmPortalQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bman_depletion = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.bm_mc_result = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { %struct.bman_depletion }
%struct.TYPE_10__ = type { %struct.bman_depletion }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@BM_MCC_VERB_CMD_QUERY = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BmPortalQuery(i64 %0, %struct.bman_depletion* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bman_depletion*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.bm_mc_result*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.bman_depletion* %1, %struct.bman_depletion** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %7, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %12 = load i32, i32* @E_INVALID_HANDLE, align 4
  %13 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__* %11, i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = call i32 @NCSW_PLOCK(%struct.TYPE_11__* %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bm_mc_start(i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BM_MCC_VERB_CMD_QUERY, align 4
  %24 = call i32 @bm_mc_commit(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %32, %3
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.bm_mc_result* @bm_mc_result(i32 %28)
  store %struct.bm_mc_result* %29, %struct.bm_mc_result** %8, align 8
  %30 = icmp ne %struct.bm_mc_result* %29, null
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %25

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.bman_depletion*, %struct.bman_depletion** %5, align 8
  %38 = load %struct.bm_mc_result*, %struct.bm_mc_result** %8, align 8
  %39 = getelementptr inbounds %struct.bm_mc_result, %struct.bm_mc_result* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = bitcast %struct.bman_depletion* %37 to i8*
  %43 = bitcast %struct.bman_depletion* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  br label %52

44:                                               ; preds = %33
  %45 = load %struct.bman_depletion*, %struct.bman_depletion** %5, align 8
  %46 = load %struct.bm_mc_result*, %struct.bm_mc_result** %8, align 8
  %47 = getelementptr inbounds %struct.bm_mc_result, %struct.bm_mc_result* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = bitcast %struct.bman_depletion* %45 to i8*
  %51 = bitcast %struct.bman_depletion* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  br label %52

52:                                               ; preds = %44, %36
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = call i32 @PUNLOCK(%struct.TYPE_11__* %53)
  %55 = load i32, i32* @E_OK, align 4
  ret i32 %55
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @bm_mc_start(i32) #1

declare dso_local i32 @bm_mc_commit(i32, i32) #1

declare dso_local %struct.bm_mc_result* @bm_mc_result(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PUNLOCK(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
