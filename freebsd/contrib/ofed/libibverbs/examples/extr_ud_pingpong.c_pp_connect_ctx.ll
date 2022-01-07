; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_ud_pingpong.c_pp_connect_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_ud_pingpong.c_pp_connect_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong_context = type { i32, i32, i32 }
%struct.pingpong_dest = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ibv_ah_attr = type { i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.ibv_qp_attr = type { i32, i32 }

@IBV_QPS_RTR = common dso_local global i32 0, align 4
@IBV_QP_STATE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to modify QP to RTR\0A\00", align 1
@IBV_QPS_RTS = common dso_local global i32 0, align 4
@IBV_QP_SQ_PSN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to modify QP to RTS\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Failed to create AH\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pingpong_context*, i32, i32, i32, %struct.pingpong_dest*, i32)* @pp_connect_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_connect_ctx(%struct.pingpong_context* %0, i32 %1, i32 %2, i32 %3, %struct.pingpong_dest* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pingpong_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pingpong_dest*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ibv_ah_attr, align 8
  %15 = alloca %struct.ibv_qp_attr, align 4
  store %struct.pingpong_context* %0, %struct.pingpong_context** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.pingpong_dest* %4, %struct.pingpong_dest** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %14, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %14, i32 0, i32 1
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %14, i32 0, i32 2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %14, i32 0, i32 3
  %22 = bitcast %struct.TYPE_6__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 16, i1 false)
  %23 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %14, i32 0, i32 4
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %14, i32 0, i32 5
  %25 = load %struct.pingpong_dest*, %struct.pingpong_dest** %12, align 8
  %26 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %15, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %15, i32 0, i32 1
  %30 = load i32, i32* @IBV_QPS_RTR, align 4
  store i32 %30, i32* %29, align 4
  %31 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %32 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IBV_QP_STATE, align 4
  %35 = call i64 @ibv_modify_qp(i32 %33, %struct.ibv_qp_attr* %15, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %6
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %91

40:                                               ; preds = %6
  %41 = load i32, i32* @IBV_QPS_RTS, align 4
  %42 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %15, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %15, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %46 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IBV_QP_STATE, align 4
  %49 = load i32, i32* @IBV_QP_SQ_PSN, align 4
  %50 = or i32 %48, %49
  %51 = call i64 @ibv_modify_qp(i32 %47, %struct.ibv_qp_attr* %15, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %91

56:                                               ; preds = %40
  %57 = load %struct.pingpong_dest*, %struct.pingpong_dest** %12, align 8
  %58 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %14, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %14, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %14, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load %struct.pingpong_dest*, %struct.pingpong_dest** %12, align 8
  %70 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %69, i32 0, i32 0
  %71 = bitcast %struct.TYPE_5__* %68 to i8*
  %72 = bitcast %struct.TYPE_5__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 8, i1 false)
  %73 = load i32, i32* %13, align 4
  %74 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %14, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %63, %56
  %77 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %78 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ibv_create_ah(i32 %79, %struct.ibv_ah_attr* %14)
  %81 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %82 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %84 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %76
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 @fprintf(i32 %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %91

90:                                               ; preds = %76
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %87, %53, %37
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ibv_modify_qp(i32, %struct.ibv_qp_attr*, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ibv_create_ah(i32, %struct.ibv_ah_attr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
