; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_create_qp_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_create_qp_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.verbs_qp = type { i32 }
%struct.ibv_qp_init_attr_ex = type { i32 }
%struct.ibv_create_qp = type { i32 }
%struct.ibv_create_qp_resp = type { i32 }
%struct.verbs_xrcd = type { i32 }
%struct.ibv_create_qp_resp_v4 = type { i32 }
%struct.ibv_create_qp_resp_v3 = type { i32 }
%struct.ibv_create_qp_common = type { i32 }

@CREATE_QP = common dso_local global i32 0, align 4
@IBV_QP_INIT_ATTR_XRCD = common dso_local global i32 0, align 4
@IBV_QP_INIT_ATTR_PD = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@abi_ver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_create_qp_ex(%struct.ibv_context* %0, %struct.verbs_qp* %1, i32 %2, %struct.ibv_qp_init_attr_ex* %3, %struct.ibv_create_qp* %4, i64 %5, %struct.ibv_create_qp_resp* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ibv_context*, align 8
  %11 = alloca %struct.verbs_qp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ibv_qp_init_attr_ex*, align 8
  %14 = alloca %struct.ibv_create_qp*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ibv_create_qp_resp*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.verbs_xrcd*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ibv_create_qp_resp_v4*, align 8
  %21 = alloca %struct.ibv_create_qp_resp_v3*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %10, align 8
  store %struct.verbs_qp* %1, %struct.verbs_qp** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.ibv_qp_init_attr_ex* %3, %struct.ibv_qp_init_attr_ex** %13, align 8
  store %struct.ibv_create_qp* %4, %struct.ibv_create_qp** %14, align 8
  store i64 %5, i64* %15, align 8
  store %struct.ibv_create_qp_resp* %6, %struct.ibv_create_qp_resp** %16, align 8
  store i64 %7, i64* %17, align 8
  store %struct.verbs_xrcd* null, %struct.verbs_xrcd** %18, align 8
  %22 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %14, align 8
  %23 = load i64, i64* %15, align 8
  %24 = load i32, i32* @CREATE_QP, align 4
  %25 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %16, align 8
  %26 = load i64, i64* %17, align 8
  %27 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_create_qp* %22, i64 %23, i32 %24, %struct.ibv_create_qp_resp* %25, i64 %26)
  %28 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %13, align 8
  %29 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IBV_QP_INIT_ATTR_XRCD, align 4
  %32 = load i32, i32* @IBV_QP_INIT_ATTR_PD, align 4
  %33 = or i32 %31, %32
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %8
  %36 = load i32, i32* @ENOSYS, align 4
  store i32 %36, i32* %9, align 4
  br label %102

37:                                               ; preds = %8
  %38 = load %struct.verbs_qp*, %struct.verbs_qp** %11, align 8
  %39 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %13, align 8
  %40 = load %struct.verbs_xrcd*, %struct.verbs_xrcd** %18, align 8
  %41 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %14, align 8
  %42 = getelementptr inbounds %struct.ibv_create_qp, %struct.ibv_create_qp* %41, i32 0, i32 0
  %43 = bitcast i32* %42 to %struct.ibv_create_qp_common*
  %44 = call i32 @create_qp_ex_common(%struct.verbs_qp* %38, %struct.ibv_qp_init_attr_ex* %39, %struct.verbs_xrcd* %40, %struct.ibv_create_qp_common* %43)
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %19, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %19, align 4
  store i32 %48, i32* %9, align 4
  br label %102

49:                                               ; preds = %37
  %50 = load %struct.ibv_context*, %struct.ibv_context** %10, align 8
  %51 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %14, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i64 @write(i32 %52, %struct.ibv_create_qp* %53, i64 %54)
  %56 = load i64, i64* %15, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @errno, align 4
  store i32 %59, i32* %9, align 4
  br label %102

60:                                               ; preds = %49
  %61 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %16, align 8
  %62 = load i64, i64* %17, align 8
  %63 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_qp_resp* %61, i64 %62)
  %64 = load i32, i32* @abi_ver, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %16, align 8
  %68 = bitcast %struct.ibv_create_qp_resp* %67 to %struct.ibv_create_qp_resp_v4*
  store %struct.ibv_create_qp_resp_v4* %68, %struct.ibv_create_qp_resp_v4** %20, align 8
  %69 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %16, align 8
  %70 = bitcast %struct.ibv_create_qp_resp* %69 to i8*
  %71 = getelementptr i8, i8* %70, i64 4
  %72 = load %struct.ibv_create_qp_resp_v4*, %struct.ibv_create_qp_resp_v4** %20, align 8
  %73 = bitcast %struct.ibv_create_qp_resp_v4* %72 to i8*
  %74 = getelementptr i8, i8* %73, i64 4
  %75 = load i64, i64* %17, align 8
  %76 = sub i64 %75, 4
  %77 = call i32 @memmove(i8* %71, i8* %74, i64 %76)
  br label %94

78:                                               ; preds = %60
  %79 = load i32, i32* @abi_ver, align 4
  %80 = icmp sle i32 %79, 3
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %16, align 8
  %83 = bitcast %struct.ibv_create_qp_resp* %82 to %struct.ibv_create_qp_resp_v3*
  store %struct.ibv_create_qp_resp_v3* %83, %struct.ibv_create_qp_resp_v3** %21, align 8
  %84 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %16, align 8
  %85 = bitcast %struct.ibv_create_qp_resp* %84 to i8*
  %86 = getelementptr i8, i8* %85, i64 4
  %87 = load %struct.ibv_create_qp_resp_v3*, %struct.ibv_create_qp_resp_v3** %21, align 8
  %88 = bitcast %struct.ibv_create_qp_resp_v3* %87 to i8*
  %89 = getelementptr i8, i8* %88, i64 4
  %90 = load i64, i64* %17, align 8
  %91 = sub i64 %90, 4
  %92 = call i32 @memmove(i8* %86, i8* %89, i64 %91)
  br label %93

93:                                               ; preds = %81, %78
  br label %94

94:                                               ; preds = %93, %66
  %95 = load %struct.ibv_context*, %struct.ibv_context** %10, align 8
  %96 = load %struct.verbs_qp*, %struct.verbs_qp** %11, align 8
  %97 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %13, align 8
  %98 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %16, align 8
  %99 = load %struct.verbs_xrcd*, %struct.verbs_xrcd** %18, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @create_qp_handle_resp_common(%struct.ibv_context* %95, %struct.verbs_qp* %96, %struct.ibv_qp_init_attr_ex* %97, %struct.ibv_create_qp_resp* %98, %struct.verbs_xrcd* %99, i32 %100)
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %94, %58, %47, %35
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_create_qp*, i64, i32, %struct.ibv_create_qp_resp*, i64) #1

declare dso_local i32 @create_qp_ex_common(%struct.verbs_qp*, %struct.ibv_qp_init_attr_ex*, %struct.verbs_xrcd*, %struct.ibv_create_qp_common*) #1

declare dso_local i64 @write(i32, %struct.ibv_create_qp*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_qp_resp*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @create_qp_handle_resp_common(%struct.ibv_context*, %struct.verbs_qp*, %struct.ibv_qp_init_attr_ex*, %struct.ibv_create_qp_resp*, %struct.verbs_xrcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
