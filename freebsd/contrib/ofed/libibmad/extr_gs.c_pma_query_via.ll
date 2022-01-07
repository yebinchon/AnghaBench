; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_gs.c_pma_query_via.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_gs.c_pma_query_via.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.ibmad_port = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"lid %u port %d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"only lid routed is supported\00", align 1
@IB_PERFORMANCE_CLASS = common dso_local global i32 0, align 4
@IB_MAD_RPC_VERSION1 = common dso_local global i32 0, align 4
@IB_MAD_METHOD_GET = common dso_local global i32 0, align 4
@IB_PC_PORT_SELECT_F = common dso_local global i32 0, align 4
@IB_PC_DATA_SZ = common dso_local global i32 0, align 4
@IB_PC_DATA_OFFS = common dso_local global i32 0, align 4
@IB_DEFAULT_QP1_QKEY = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pma_query_via(i8* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4, %struct.ibmad_port* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ibmad_port*, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ibmad_port* %5, %struct.ibmad_port** %13, align 8
  %18 = bitcast %struct.TYPE_7__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 48, i1 false)
  %19 = bitcast %struct.TYPE_7__* %14 to i8*
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %15, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %16, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = call i32 @IBWARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %7, align 8
  br label %79

31:                                               ; preds = %6
  %32 = load i32, i32* @IB_PERFORMANCE_CLASS, align 4
  %33 = load i32, i32* @IB_MAD_RPC_VERSION1, align 4
  %34 = or i32 %32, %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @IB_MAD_METHOD_GET, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 6
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* %12, align 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* @IB_PC_PORT_SELECT_F, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @mad_set_field(i8* %41, i32 0, i32 %42, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %11, align 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @IB_PC_DATA_SZ, align 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* @IB_PC_DATA_OFFS, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %31
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %31
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* @IB_DEFAULT_QP1_QKEY, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.ibmad_port*, %struct.ibmad_port** %13, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i8* @mad_rpc(%struct.ibmad_port* %70, i32* %71, %struct.TYPE_8__* %72, i8* %73, i8* %74)
  store i8* %75, i8** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* @errno, align 4
  %78 = load i8*, i8** %17, align 8
  store i8* %78, i8** %7, align 8
  br label %79

79:                                               ; preds = %69, %29
  %80 = load i8*, i8** %7, align 8
  ret i8* %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DEBUG(i8*, i32, i32) #2

declare dso_local i32 @IBWARN(i8*) #2

declare dso_local i32 @mad_set_field(i8*, i32, i32, i32) #2

declare dso_local i8* @mad_rpc(%struct.ibmad_port*, i32*, %struct.TYPE_8__*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
