; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_query_smp.c_issue_smp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_query_smp.c_issue_smp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_20__, i8*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"OOM\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IB_MAD_METHOD_GET = common dso_local global i32 0, align 4
@IB_SMP_DATA_SIZE = common dso_local global i32 0, align 4
@IB_SMP_DATA_OFFS = common dso_local global i32 0, align 4
@IB_SMI_DIRECT_CLASS = common dso_local global i32 0, align 4
@IB_SMI_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @issue_smp(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = call %struct.TYPE_19__* @calloc(i32 1, i32 88)
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %14, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %17 = icmp ne %struct.TYPE_19__* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %6
  %19 = call i32 @IBND_ERROR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %112

22:                                               ; preds = %6
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %32 = bitcast %struct.TYPE_20__* %30 to i8*
  %33 = bitcast %struct.TYPE_20__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 32, i1 false)
  %34 = load i32, i32* @IB_MAD_METHOD_GET, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 7
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 5
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @IB_SMP_DATA_OFFS, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 4
  %64 = call i32 (...) @mad_trid()
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %22
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 65535
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 65535
  br i1 %91, label %92, label %97

92:                                               ; preds = %86, %80, %22
  %93 = load i32, i32* @IB_SMI_DIRECT_CLASS, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  br label %102

97:                                               ; preds = %86
  %98 = load i32, i32* @IB_SMI_CLASS, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %109 = call i32 @queue_smp(%struct.TYPE_18__* %107, %struct.TYPE_19__* %108)
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %111 = call i32 @process_smp_queue(%struct.TYPE_18__* %110)
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %102, %18
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_19__* @calloc(i32, i32) #1

declare dso_local i32 @IBND_ERROR(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mad_trid(...) #1

declare dso_local i32 @queue_smp(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @process_smp_queue(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
