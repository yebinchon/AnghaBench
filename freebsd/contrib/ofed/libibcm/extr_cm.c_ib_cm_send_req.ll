; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_send_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_send_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_cm_req_param = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_user_path_rec = type { i32 }
%struct.ib_ucm_req = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_USER_CM_CMD_SEND_REQ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_cm_send_req(%struct.ib_cm_id* %0, %struct.ib_cm_req_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca %struct.ib_cm_req_param*, align 8
  %6 = alloca %struct.ib_user_path_rec, align 4
  %7 = alloca %struct.ib_user_path_rec*, align 8
  %8 = alloca %struct.ib_ucm_req*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %4, align 8
  store %struct.ib_cm_req_param* %1, %struct.ib_cm_req_param** %5, align 8
  %12 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %13 = icmp ne %struct.ib_cm_req_param* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %16 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = call i32 @ERR(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %174

22:                                               ; preds = %14
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %25 = load i32, i32* @IB_USER_CM_CMD_SEND_REQ, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @CM_CREATE_MSG_CMD(i8* %23, %struct.ib_ucm_req* %24, i32 %25, i32 %26)
  %28 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %29 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %32 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %31, i32 0, i32 18
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %34 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %33, i32 0, i32 17
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %37 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %36, i32 0, i32 17
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %39 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %38, i32 0, i32 16
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %42 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %41, i32 0, i32 16
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %44 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %43, i32 0, i32 15
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %47 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %46, i32 0, i32 15
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %49 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %48, i32 0, i32 14
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %52 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %51, i32 0, i32 14
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %54 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %53, i32 0, i32 13
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %57 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %56, i32 0, i32 13
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %59 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %58, i32 0, i32 12
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %62 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %61, i32 0, i32 12
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %64 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %67 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %69 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %72 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %74 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %77 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %79 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %82 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %84 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %87 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  %88 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %89 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %92 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %94 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %97 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %99 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %102 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %104 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ibv_copy_path_rec_to_kern(%struct.ib_user_path_rec* %6, i32 %105)
  %107 = ptrtoint %struct.ib_user_path_rec* %6 to i64
  %108 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %109 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %111 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %22
  %115 = call %struct.ib_user_path_rec* @alloca(i32 4)
  store %struct.ib_user_path_rec* %115, %struct.ib_user_path_rec** %7, align 8
  %116 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %7, align 8
  %117 = icmp ne %struct.ib_user_path_rec* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = call i32 @ERR(i32 %119)
  store i32 %120, i32* %3, align 4
  br label %174

121:                                              ; preds = %114
  %122 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %7, align 8
  %123 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %124 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ibv_copy_path_rec_to_kern(%struct.ib_user_path_rec* %122, i32 %125)
  %127 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %7, align 8
  %128 = ptrtoint %struct.ib_user_path_rec* %127 to i64
  %129 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %130 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %121, %22
  %132 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %133 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %131
  %137 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %138 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %143 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %146 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  %147 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %5, align 8
  %148 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.ib_ucm_req*, %struct.ib_ucm_req** %8, align 8
  %151 = getelementptr inbounds %struct.ib_ucm_req, %struct.ib_ucm_req* %150, i32 0, i32 3
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %141, %136, %131
  %153 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %154 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @write(i32 %157, i8* %158, i32 %159)
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %152
  %165 = load i32, i32* %10, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, i32* @ENODATA, align 4
  %169 = call i32 @ERR(i32 %168)
  br label %171

170:                                              ; preds = %164
  br label %171

171:                                              ; preds = %170, %167
  %172 = phi i32 [ %169, %167 ], [ -1, %170 ]
  store i32 %172, i32* %3, align 4
  br label %174

173:                                              ; preds = %152
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %171, %118, %19
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @CM_CREATE_MSG_CMD(i8*, %struct.ib_ucm_req*, i32, i32) #1

declare dso_local i32 @ibv_copy_path_rec_to_kern(%struct.ib_user_path_rec*, i32) #1

declare dso_local %struct.ib_user_path_rec* @alloca(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
