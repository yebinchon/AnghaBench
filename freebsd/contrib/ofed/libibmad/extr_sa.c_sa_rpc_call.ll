; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_sa.c_sa_rpc_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_sa.c_sa_rpc_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmad_port = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"attr 0x%x mod 0x%x route %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"only lid routes are supported\00", align 1
@IB_SA_CLASS = common dso_local global i32 0, align 4
@IB_SA_DATA_SIZE = common dso_local global i32 0, align 4
@IB_SA_DATA_OFFS = common dso_local global i32 0, align 4
@IB_DEFAULT_QP1_QKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sa_rpc_call(%struct.ibmad_port* %0, i8* %1, %struct.TYPE_13__* %2, %struct.TYPE_11__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ibmad_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__, align 4
  %13 = alloca i32*, align 8
  store %struct.ibmad_port* %0, %struct.ibmad_port** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = bitcast %struct.TYPE_12__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 44, i1 false)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %22 = call i32 @portid2str(%struct.TYPE_13__* %21)
  %23 = call i32 @DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = call i32 @IBWARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %6, align 8
  br label %81

30:                                               ; preds = %5
  %31 = load i32, i32* @IB_SA_CLASS, align 4
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 7
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 5
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @IB_SA_DATA_SIZE, align 4
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 4
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @IB_SA_DATA_OFFS, align 4
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %30
  %68 = load i64, i64* @IB_DEFAULT_QP1_QKEY, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %30
  %72 = load %struct.ibmad_port*, %struct.ibmad_port** %7, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32* @mad_rpc_rmpp(%struct.ibmad_port* %72, %struct.TYPE_12__* %12, %struct.TYPE_13__* %73, i32 0, i8* %74)
  store i32* %75, i32** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i32*, i32** %13, align 8
  store i32* %80, i32** %6, align 8
  br label %81

81:                                               ; preds = %71, %28
  %82 = load i32*, i32** %6, align 8
  ret i32* %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DEBUG(i8*, i32, i32, i32) #2

declare dso_local i32 @portid2str(%struct.TYPE_13__*) #2

declare dso_local i32 @IBWARN(i8*) #2

declare dso_local i32* @mad_rpc_rmpp(%struct.ibmad_port*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
