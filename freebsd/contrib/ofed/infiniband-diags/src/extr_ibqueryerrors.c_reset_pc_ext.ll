; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_reset_pc_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_reset_pc_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.ibmad_port = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"lid %u port %d mask 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"only lid routed is supported\00", align 1
@IB_PERFORMANCE_CLASS = common dso_local global i32 0, align 4
@IB_MAD_METHOD_SET = common dso_local global i32 0, align 4
@IB_GSI_PORT_COUNTERS_EXT = common dso_local global i32 0, align 4
@IB_MAD_SIZE = common dso_local global i32 0, align 4
@IB_PC_EXT_PORT_SELECT_F = common dso_local global i32 0, align 4
@IB_PC_EXT_COUNTER_SELECT_F = common dso_local global i32 0, align 4
@IB_PC_DATA_SZ = common dso_local global i32 0, align 4
@IB_PC_DATA_OFFS = common dso_local global i32 0, align 4
@IB_DEFAULT_QP1_QKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @reset_pc_ext(i8* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32 %4, %struct.ibmad_port* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ibmad_port*, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ibmad_port* %5, %struct.ibmad_port** %13, align 8
  %16 = bitcast %struct.TYPE_8__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 48, i1 false)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %15, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = call i32 @IBWARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %7, align 8
  br label %81

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 -1, i32* %11, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* @IB_PERFORMANCE_CLASS, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @IB_MAD_METHOD_SET, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* @IB_GSI_PORT_COUNTERS_EXT, align 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @IB_MAD_SIZE, align 4
  %42 = call i32 @memset(i8* %40, i32 0, i32 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* @IB_PC_EXT_PORT_SELECT_F, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @mad_set_field(i8* %43, i32 0, i32 %44, i32 %45)
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* @IB_PC_EXT_COUNTER_SELECT_F, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @mad_set_field(i8* %47, i32 0, i32 %48, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %12, align 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* @IB_PC_DATA_SZ, align 4
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* @IB_PC_DATA_OFFS, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %32
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %32
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load i64, i64* @IB_DEFAULT_QP1_QKEY, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.ibmad_port*, %struct.ibmad_port** %13, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i32* @mad_rpc(%struct.ibmad_port* %76, %struct.TYPE_8__* %14, %struct.TYPE_9__* %77, i8* %78, i8* %79)
  store i32* %80, i32** %7, align 8
  br label %81

81:                                               ; preds = %75, %26
  %82 = load i32*, i32** %7, align 8
  ret i32* %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DEBUG(i8*, i32, i32, i32) #2

declare dso_local i32 @IBWARN(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @mad_set_field(i8*, i32, i32, i32) #2

declare dso_local i32* @mad_rpc(%struct.ibmad_port*, %struct.TYPE_8__*, %struct.TYPE_9__*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
