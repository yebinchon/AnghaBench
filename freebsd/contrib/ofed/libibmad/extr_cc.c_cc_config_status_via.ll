; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_cc.c_cc_config_status_via.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_cc.c_cc_config_status_via.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.ibmad_port = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"attr 0x%x mod 0x%x route %s\00", align 1
@IB_MAD_METHOD_SET = common dso_local global i32 0, align 4
@IB_CC_ATTR_CONGESTION_LOG = common dso_local global i32 0, align 4
@IB_CC_LOG_DATA_SZ = common dso_local global i32 0, align 4
@IB_CC_LOG_DATA_OFFS = common dso_local global i32 0, align 4
@IB_CC_DATA_SZ = common dso_local global i32 0, align 4
@IB_CC_DATA_OFFS = common dso_local global i32 0, align 4
@IB_CC_CLASS = common dso_local global i32 0, align 4
@IB_DEFAULT_QP1_QKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cc_config_status_via(i8* %0, i8* %1, %struct.TYPE_9__* %2, i32 %3, i32 %4, i32 %5, i32* %6, %struct.ibmad_port* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.ibmad_port*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__, align 4
  %20 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store %struct.ibmad_port* %7, %struct.ibmad_port** %17, align 8
  store i32 %8, i32* %18, align 4
  %21 = bitcast %struct.TYPE_8__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 40, i1 false)
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %25 = call i32 @portid2str(%struct.TYPE_9__* %24)
  %26 = call i32 @DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %25)
  %27 = load i32, i32* @IB_MAD_METHOD_SET, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 7
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %13, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %14, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %15, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @IB_CC_ATTR_CONGESTION_LOG, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %9
  %41 = load i32, i32* @IB_CC_LOG_DATA_SZ, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @IB_CC_LOG_DATA_OFFS, align 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  store i32 %43, i32* %44, align 4
  br label %50

45:                                               ; preds = %9
  %46 = load i32, i32* @IB_CC_DATA_SZ, align 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @IB_CC_DATA_OFFS, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @IB_CC_CLASS, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %18, align 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %50
  %62 = load i64, i64* @IB_DEFAULT_QP1_QKEY, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %50
  %66 = load %struct.ibmad_port*, %struct.ibmad_port** %17, align 8
  %67 = bitcast %struct.TYPE_8__* %19 to i32*
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = call i8* @mad_rpc(%struct.ibmad_port* %66, i32* %67, %struct.TYPE_9__* %68, i8* %69, i8* %70)
  store i8* %71, i8** %20, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %16, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %65
  %79 = load i8*, i8** %20, align 8
  ret i8* %79
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
