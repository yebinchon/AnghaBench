; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_cc.c_cc_query_status_via.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_cc.c_cc_query_status_via.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.ibmad_port = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"attr 0x%x mod 0x%x route %s\00", align 1
@IB_MAD_METHOD_GET = common dso_local global i32 0, align 4
@IB_CC_ATTR_CONGESTION_LOG = common dso_local global i32 0, align 4
@IB_CC_LOG_DATA_SZ = common dso_local global i32 0, align 4
@IB_CC_LOG_DATA_OFFS = common dso_local global i32 0, align 4
@IB_CC_DATA_SZ = common dso_local global i32 0, align 4
@IB_CC_DATA_OFFS = common dso_local global i32 0, align 4
@IB_CC_CLASS = common dso_local global i32 0, align 4
@IB_DEFAULT_QP1_QKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cc_query_status_via(i8* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32 %4, i32* %5, %struct.ibmad_port* %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ibmad_port*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__, align 4
  %18 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store %struct.ibmad_port* %6, %struct.ibmad_port** %15, align 8
  store i32 %7, i32* %16, align 4
  %19 = bitcast %struct.TYPE_8__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 40, i1 false)
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %23 = call i32 @portid2str(%struct.TYPE_9__* %22)
  %24 = call i32 @DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %23)
  %25 = load i32, i32* @IB_MAD_METHOD_GET, align 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 7
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %11, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %12, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %13, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @IB_CC_ATTR_CONGESTION_LOG, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %8
  %39 = load i32, i32* @IB_CC_LOG_DATA_SZ, align 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @IB_CC_LOG_DATA_OFFS, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  store i32 %41, i32* %42, align 4
  br label %48

43:                                               ; preds = %8
  %44 = load i32, i32* @IB_CC_DATA_SZ, align 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @IB_CC_DATA_OFFS, align 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* @IB_CC_CLASS, align 4
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %16, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %48
  %60 = load i64, i64* @IB_DEFAULT_QP1_QKEY, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %48
  %64 = load %struct.ibmad_port*, %struct.ibmad_port** %15, align 8
  %65 = bitcast %struct.TYPE_8__* %17 to i32*
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i8* @mad_rpc(%struct.ibmad_port* %64, i32* %65, %struct.TYPE_9__* %66, i8* %67, i8* %68)
  store i8* %69, i8** %18, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %14, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %63
  %77 = load i8*, i8** %18, align 8
  ret i8* %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DEBUG(i8*, i32, i32, i32) #2

declare dso_local i32 @portid2str(%struct.TYPE_9__*) #2

declare dso_local i8* @mad_rpc(%struct.ibmad_port*, i32*, %struct.TYPE_9__*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
