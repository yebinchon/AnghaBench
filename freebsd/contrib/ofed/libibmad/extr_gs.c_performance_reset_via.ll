; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_gs.c_performance_reset_via.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_gs.c_performance_reset_via.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.ibmad_port = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"lid %u port %d mask 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"only lid routed is supported\00", align 1
@IB_PERFORMANCE_CLASS = common dso_local global i32 0, align 4
@IB_MAD_RPC_VERSION1 = common dso_local global i32 0, align 4
@IB_MAD_METHOD_SET = common dso_local global i32 0, align 4
@IB_MAD_SIZE = common dso_local global i32 0, align 4
@IB_PC_PORT_SELECT_F = common dso_local global i32 0, align 4
@IB_PC_COUNTER_SELECT_F = common dso_local global i32 0, align 4
@IB_GSI_PORT_COUNTERS_EXT = common dso_local global i32 0, align 4
@IB_PC_EXT_COUNTER_SELECT2_F = common dso_local global i32 0, align 4
@IB_PC_COUNTER_SELECT2_F = common dso_local global i32 0, align 4
@IB_PC_DATA_SZ = common dso_local global i32 0, align 4
@IB_PC_DATA_OFFS = common dso_local global i32 0, align 4
@IB_DEFAULT_QP1_QKEY = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @performance_reset_via(i8* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.ibmad_port* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ibmad_port*, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.ibmad_port* %6, %struct.ibmad_port** %15, align 8
  %20 = bitcast %struct.TYPE_7__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 48, i1 false)
  %21 = bitcast %struct.TYPE_7__* %16 to i8*
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %17, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %18, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = call i32 @IBWARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %8, align 8
  br label %109

34:                                               ; preds = %7
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 -1, i32* %12, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* @IB_PERFORMANCE_CLASS, align 4
  %40 = load i32, i32* @IB_MAD_RPC_VERSION1, align 4
  %41 = or i32 %39, %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* @IB_MAD_METHOD_SET, align 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 6
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* %14, align 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* @IB_MAD_SIZE, align 4
  %50 = call i32 @memset(i8* %48, i32 0, i32 %49)
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* @IB_PC_PORT_SELECT_F, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @mad_set_field(i8* %51, i32 0, i32 %52, i32 %53)
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* @IB_PC_COUNTER_SELECT_F, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @mad_set_field(i8* %55, i32 0, i32 %56, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = lshr i32 %59, 16
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @IB_GSI_PORT_COUNTERS_EXT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %38
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* @IB_PC_EXT_COUNTER_SELECT2_F, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @mad_set_field(i8* %65, i32 0, i32 %66, i32 %67)
  br label %74

69:                                               ; preds = %38
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* @IB_PC_COUNTER_SELECT2_F, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @mad_set_field(i8* %70, i32 0, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* %13, align 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @IB_PC_DATA_SZ, align 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* @IB_PC_DATA_OFFS, align 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  store i32 %81, i32* %82, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %74
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %74
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = load i64, i64* @IB_DEFAULT_QP1_QKEY, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %90
  %100 = load %struct.ibmad_port*, %struct.ibmad_port** %15, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = call i8* @mad_rpc(%struct.ibmad_port* %100, i32* %101, %struct.TYPE_8__* %102, i8* %103, i8* %104)
  store i8* %105, i8** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* @errno, align 4
  %108 = load i8*, i8** %19, align 8
  store i8* %108, i8** %8, align 8
  br label %109

109:                                              ; preds = %99, %32
  %110 = load i8*, i8** %8, align 8
  ret i8* %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DEBUG(i8*, i32, i32, i32) #2

declare dso_local i32 @IBWARN(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @mad_set_field(i8*, i32, i32, i32) #2

declare dso_local i8* @mad_rpc(%struct.ibmad_port*, i32*, %struct.TYPE_8__*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
