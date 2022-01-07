; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_ibnd_discover_fabric.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_ibnd_discover_fabric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.ibnd_config = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32, %struct.ibnd_config*, %struct.TYPE_23__* }
%struct.ibmad_port = type { i32 }

@IB_SMI_CLASS = common dso_local global i32 0, align 4
@IB_SMI_DIRECT_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid ibnd_config\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"OOM: failed to calloc ibnd_fabric_t\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"can't open MAD port (%s:%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to resolve self\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"from %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ibnd_discover_fabric(i8* %0, i32 %1, %struct.TYPE_22__* %2, %struct.ibnd_config* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.ibnd_config*, align 8
  %10 = alloca %struct.ibnd_config, align 4
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_22__, align 8
  %13 = alloca %struct.TYPE_20__, align 4
  %14 = alloca %struct.TYPE_21__, align 8
  %15 = alloca %struct.ibmad_port*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %8, align 8
  store %struct.ibnd_config* %3, %struct.ibnd_config** %9, align 8
  %18 = bitcast %struct.ibnd_config* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 16, i1 false)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %11, align 8
  %19 = bitcast %struct.TYPE_22__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  store i32 2, i32* %16, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %21 = load i32, i32* @IB_SMI_CLASS, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @IB_SMI_DIRECT_CLASS, align 4
  store i32 %23, i32* %22, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %25 = icmp ne %struct.TYPE_22__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %8, align 8
  br label %27

27:                                               ; preds = %26, %4
  %28 = load %struct.ibnd_config*, %struct.ibnd_config** %9, align 8
  %29 = call i64 @set_config(%struct.ibnd_config* %10, %struct.ibnd_config* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @IBND_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %136

33:                                               ; preds = %27
  %34 = call %struct.TYPE_23__* (...) @allocate_fabric_internal()
  store %struct.TYPE_23__* %34, %struct.TYPE_23__** %11, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %36 = icmp ne %struct.TYPE_23__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = call i32 (i8*, ...) @IBND_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %136

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %41 = call i32 @memset(i32* %40, i32 0, i32 4)
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 3
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 2
  store %struct.ibnd_config* %10, %struct.ibnd_config** %44, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %53 = load i32, i32* %16, align 4
  %54 = call %struct.ibmad_port* @mad_rpc_open_port(i8* %50, i32 %51, i32* %52, i32 %53)
  store %struct.ibmad_port* %54, %struct.ibmad_port** %15, align 8
  %55 = load %struct.ibmad_port*, %struct.ibmad_port** %15, align 8
  %56 = icmp ne %struct.ibmad_port* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %39
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (i8*, ...) @IBND_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %58, i32 %59)
  store i32* null, i32** %5, align 8
  br label %136

61:                                               ; preds = %39
  %62 = load %struct.ibmad_port*, %struct.ibmad_port** %15, align 8
  %63 = load %struct.ibnd_config*, %struct.ibnd_config** %9, align 8
  %64 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mad_rpc_set_timeout(%struct.ibmad_port* %62, i32 %65)
  %67 = load %struct.ibmad_port*, %struct.ibmad_port** %15, align 8
  %68 = load %struct.ibnd_config*, %struct.ibnd_config** %9, align 8
  %69 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mad_rpc_set_retries(%struct.ibmad_port* %67, i32 %70)
  %72 = load %struct.ibmad_port*, %struct.ibmad_port** %15, align 8
  %73 = load %struct.ibnd_config*, %struct.ibnd_config** %9, align 8
  %74 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @smp_mkey_set(%struct.ibmad_port* %72, i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %78 = load %struct.ibmad_port*, %struct.ibmad_port** %15, align 8
  %79 = call i64 @ib_resolve_self_via(i32* %77, i32* null, i32* null, %struct.ibmad_port* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %61
  %82 = call i32 (i8*, ...) @IBND_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.ibmad_port*, %struct.ibmad_port** %15, align 8
  %84 = call i32 @mad_rpc_close_port(%struct.ibmad_port* %83)
  store i32* null, i32** %5, align 8
  br label %136

85:                                               ; preds = %61
  %86 = load %struct.ibmad_port*, %struct.ibmad_port** %15, align 8
  %87 = call i32 @mad_rpc_close_port(%struct.ibmad_port* %86)
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @smp_engine_init(%struct.TYPE_20__* %13, i8* %88, i32 %89, %struct.TYPE_21__* %14, %struct.ibnd_config* %10)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %94 = call i32 @free(%struct.TYPE_23__* %93)
  store i32* null, i32** %5, align 8
  br label %136

95:                                               ; preds = %85
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %97 = call i32 @portid2str(%struct.TYPE_22__* %96)
  %98 = call i32 @IBND_DEBUG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %100 = call i32 @query_node_info(%struct.TYPE_20__* %13, %struct.TYPE_22__* %99, i32* null)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  %103 = call i64 @process_mads(%struct.TYPE_20__* %13)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %131

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %106, %95
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %114
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 4
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  %124 = call i64 @group_nodes(%struct.TYPE_18__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %107
  br label %131

127:                                              ; preds = %107
  %128 = call i32 @smp_engine_destroy(%struct.TYPE_20__* %13)
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %130 = bitcast %struct.TYPE_23__* %129 to i32*
  store i32* %130, i32** %5, align 8
  br label %136

131:                                              ; preds = %126, %105
  %132 = call i32 @smp_engine_destroy(%struct.TYPE_20__* %13)
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = call i32 @ibnd_destroy_fabric(%struct.TYPE_18__* %134)
  store i32* null, i32** %5, align 8
  br label %136

136:                                              ; preds = %131, %127, %92, %81, %57, %37, %31
  %137 = load i32*, i32** %5, align 8
  ret i32* %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @set_config(%struct.ibnd_config*, %struct.ibnd_config*) #2

declare dso_local i32 @IBND_ERROR(i8*, ...) #2

declare dso_local %struct.TYPE_23__* @allocate_fabric_internal(...) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local %struct.ibmad_port* @mad_rpc_open_port(i8*, i32, i32*, i32) #2

declare dso_local i32 @mad_rpc_set_timeout(%struct.ibmad_port*, i32) #2

declare dso_local i32 @mad_rpc_set_retries(%struct.ibmad_port*, i32) #2

declare dso_local i32 @smp_mkey_set(%struct.ibmad_port*, i32) #2

declare dso_local i64 @ib_resolve_self_via(i32*, i32*, i32*, %struct.ibmad_port*) #2

declare dso_local i32 @mad_rpc_close_port(%struct.ibmad_port*) #2

declare dso_local i64 @smp_engine_init(%struct.TYPE_20__*, i8*, i32, %struct.TYPE_21__*, %struct.ibnd_config*) #2

declare dso_local i32 @free(%struct.TYPE_23__*) #2

declare dso_local i32 @IBND_DEBUG(i8*, i32) #2

declare dso_local i32 @portid2str(%struct.TYPE_22__*) #2

declare dso_local i32 @query_node_info(%struct.TYPE_20__*, %struct.TYPE_22__*, i32*) #2

declare dso_local i64 @process_mads(%struct.TYPE_20__*) #2

declare dso_local i64 @group_nodes(%struct.TYPE_18__*) #2

declare dso_local i32 @smp_engine_destroy(%struct.TYPE_20__*) #2

declare dso_local i32 @ibnd_destroy_fabric(%struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
