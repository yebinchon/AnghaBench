; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_smp.c_smp_query_status_via.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_smp.c_smp_query_status_via.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ibmad_port = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"attr 0x%x mod 0x%x route %s\00", align 1
@IB_MAD_METHOD_GET = common dso_local global i32 0, align 4
@IB_SMP_DATA_SIZE = common dso_local global i32 0, align 4
@IB_SMP_DATA_OFFS = common dso_local global i32 0, align 4
@IB_SMI_DIRECT_CLASS = common dso_local global i32 0, align 4
@IB_SMI_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @smp_query_status_via(i8* %0, %struct.TYPE_12__* %1, i32 %2, i32 %3, i32 %4, i32* %5, %struct.ibmad_port* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ibmad_port*, align 8
  %15 = alloca %struct.TYPE_11__, align 4
  %16 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store %struct.ibmad_port* %6, %struct.ibmad_port** %14, align 8
  %17 = bitcast %struct.TYPE_11__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 40, i1 false)
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %21 = call i32 @portid2str(%struct.TYPE_12__* %20)
  %22 = call i32 @DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %21)
  %23 = load i32, i32* @IB_MAD_METHOD_GET, align 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 7
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %10, align 4
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %12, align 4
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @IB_SMP_DATA_OFFS, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = load %struct.ibmad_port*, %struct.ibmad_port** %14, align 8
  %38 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %7
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 65535
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 65535
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %45, %7
  %58 = load i32, i32* @IB_SMI_DIRECT_CLASS, align 4
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  br label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @IB_SMI_CLASS, align 4
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.ibmad_port*, %struct.ibmad_port** %14, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i32* @mad_rpc(%struct.ibmad_port* %68, %struct.TYPE_11__* %15, %struct.TYPE_12__* %69, i8* %70, i8* %71)
  store i32* %72, i32** %16, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %13, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %63
  %80 = load i32*, i32** %16, align 8
  ret i32* %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DEBUG(i8*, i32, i32, i32) #2

declare dso_local i32 @portid2str(%struct.TYPE_12__*) #2

declare dso_local i32* @mad_rpc(%struct.ibmad_port*, %struct.TYPE_11__*, %struct.TYPE_12__*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
