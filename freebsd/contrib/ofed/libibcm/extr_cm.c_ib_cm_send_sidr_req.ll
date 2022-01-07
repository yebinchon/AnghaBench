; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_send_sidr_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_send_sidr_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_cm_sidr_req_param = type { i64, i64, i32, i32, i32, i32 }
%struct.ib_user_path_rec = type { i32 }
%struct.ib_ucm_sidr_req = type { i64, i64, i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_USER_CM_CMD_SEND_SIDR_REQ = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_cm_send_sidr_req(%struct.ib_cm_id* %0, %struct.ib_cm_sidr_req_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca %struct.ib_cm_sidr_req_param*, align 8
  %6 = alloca %struct.ib_user_path_rec, align 4
  %7 = alloca %struct.ib_ucm_sidr_req*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %4, align 8
  store %struct.ib_cm_sidr_req_param* %1, %struct.ib_cm_sidr_req_param** %5, align 8
  %11 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %5, align 8
  %12 = icmp ne %struct.ib_cm_sidr_req_param* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %5, align 8
  %15 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @ERR(i32 %19)
  store i32 %20, i32* %3, align 4
  br label %97

21:                                               ; preds = %13
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.ib_ucm_sidr_req*, %struct.ib_ucm_sidr_req** %7, align 8
  %24 = load i32, i32* @IB_USER_CM_CMD_SEND_SIDR_REQ, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @CM_CREATE_MSG_CMD(i8* %22, %struct.ib_ucm_sidr_req* %23, i32 %24, i32 %25)
  %27 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %28 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ib_ucm_sidr_req*, %struct.ib_ucm_sidr_req** %7, align 8
  %31 = getelementptr inbounds %struct.ib_ucm_sidr_req, %struct.ib_ucm_sidr_req* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %5, align 8
  %33 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ib_ucm_sidr_req*, %struct.ib_ucm_sidr_req** %7, align 8
  %36 = getelementptr inbounds %struct.ib_ucm_sidr_req, %struct.ib_ucm_sidr_req* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %5, align 8
  %38 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ib_ucm_sidr_req*, %struct.ib_ucm_sidr_req** %7, align 8
  %41 = getelementptr inbounds %struct.ib_ucm_sidr_req, %struct.ib_ucm_sidr_req* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %5, align 8
  %43 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ib_ucm_sidr_req*, %struct.ib_ucm_sidr_req** %7, align 8
  %46 = getelementptr inbounds %struct.ib_ucm_sidr_req, %struct.ib_ucm_sidr_req* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %5, align 8
  %48 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ibv_copy_path_rec_to_kern(%struct.ib_user_path_rec* %6, i32 %49)
  %51 = ptrtoint %struct.ib_user_path_rec* %6 to i64
  %52 = load %struct.ib_ucm_sidr_req*, %struct.ib_ucm_sidr_req** %7, align 8
  %53 = getelementptr inbounds %struct.ib_ucm_sidr_req, %struct.ib_ucm_sidr_req* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %5, align 8
  %55 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %21
  %59 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %5, align 8
  %60 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %5, align 8
  %65 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ib_ucm_sidr_req*, %struct.ib_ucm_sidr_req** %7, align 8
  %68 = getelementptr inbounds %struct.ib_ucm_sidr_req, %struct.ib_ucm_sidr_req* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %5, align 8
  %70 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ib_ucm_sidr_req*, %struct.ib_ucm_sidr_req** %7, align 8
  %73 = getelementptr inbounds %struct.ib_ucm_sidr_req, %struct.ib_ucm_sidr_req* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %63, %58, %21
  %75 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %76 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @write(i32 %79, i8* %80, i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %74
  %87 = load i32, i32* %9, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* @ENODATA, align 4
  %91 = call i32 @ERR(i32 %90)
  br label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %9, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = phi i32 [ %91, %89 ], [ %93, %92 ]
  store i32 %95, i32* %3, align 4
  br label %97

96:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %94, %18
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @CM_CREATE_MSG_CMD(i8*, %struct.ib_ucm_sidr_req*, i32, i32) #1

declare dso_local i32 @ibv_copy_path_rec_to_kern(%struct.ib_user_path_rec*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
