; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_resolve.c_ib_resolve_self_via.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_resolve.c_ib_resolve_self_via.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ibmad_port = type { i32 }

@IB_ATTR_NODE_INFO = common dso_local global i32 0, align 4
@IB_ATTR_PORT_INFO = common dso_local global i32 0, align 4
@IB_PORT_LID_F = common dso_local global i32 0, align 4
@IB_PORT_SMSL_F = common dso_local global i32 0, align 4
@IB_PORT_GID_PREFIX_F = common dso_local global i32 0, align 4
@IB_NODE_PORT_GUID_F = common dso_local global i32 0, align 4
@IB_NODE_LOCAL_PORT_F = common dso_local global i32 0, align 4
@IB_GID_PREFIX_F = common dso_local global i32 0, align 4
@IB_GID_GUID_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_resolve_self_via(%struct.TYPE_4__* %0, i32* %1, i32* %2, %struct.ibmad_port* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ibmad_port*, align 8
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca [64 x i32], align 16
  %12 = alloca [64 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.ibmad_port* %3, %struct.ibmad_port** %9, align 8
  %15 = bitcast %struct.TYPE_4__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 12, i1 false)
  %16 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 0
  %17 = load i32, i32* @IB_ATTR_NODE_INFO, align 4
  %18 = load %struct.ibmad_port*, %struct.ibmad_port** %9, align 8
  %19 = call i32 @smp_query_via(i32* %16, %struct.TYPE_4__* %10, i32 %17, i32 0, i32 0, %struct.ibmad_port* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %66

22:                                               ; preds = %4
  %23 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %24 = load i32, i32* @IB_ATTR_PORT_INFO, align 4
  %25 = load %struct.ibmad_port*, %struct.ibmad_port** %9, align 8
  %26 = call i32 @smp_query_via(i32* %23, %struct.TYPE_4__* %10, i32 %24, i32 0, i32 0, %struct.ibmad_port* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %66

29:                                               ; preds = %22
  %30 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %31 = load i32, i32* @IB_PORT_LID_F, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @mad_decode_field(i32* %30, i32 %31, i32* %33)
  %35 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %36 = load i32, i32* @IB_PORT_SMSL_F, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = call i32 @mad_decode_field(i32* %35, i32 %36, i32* %38)
  %40 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %41 = load i32, i32* @IB_PORT_GID_PREFIX_F, align 4
  %42 = call i32 @mad_decode_field(i32* %40, i32 %41, i32* %14)
  %43 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 0
  %44 = load i32, i32* @IB_NODE_PORT_GUID_F, align 4
  %45 = call i32 @mad_decode_field(i32* %43, i32 %44, i32* %13)
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %29
  %49 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 0
  %50 = load i32, i32* @IB_NODE_LOCAL_PORT_F, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @mad_decode_field(i32* %49, i32 %50, i32* %51)
  br label %53

53:                                               ; preds = %48, %29
  %54 = load i32*, i32** %8, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IB_GID_PREFIX_F, align 4
  %60 = call i32 @mad_encode_field(i32 %58, i32 %59, i32* %14)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IB_GID_GUID_F, align 4
  %64 = call i32 @mad_encode_field(i32 %62, i32 %63, i32* %13)
  br label %65

65:                                               ; preds = %56, %53
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %28, %21
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @smp_query_via(i32*, %struct.TYPE_4__*, i32, i32, i32, %struct.ibmad_port*) #2

declare dso_local i32 @mad_decode_field(i32*, i32, i32*) #2

declare dso_local i32 @mad_encode_field(i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
