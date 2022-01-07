; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_create_qps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_create_qps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8**, i32, i32, i32, i32, i8**, i32 }
%struct.ibv_qp_init_attr_ex = type { i32, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ibv_qp_attr = type { i32, i32, i64, i8* }

@ctx = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@IBV_QPT_XRC_RECV = common dso_local global i32 0, align 4
@IBV_QP_INIT_ATTR_XRCD = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Couldn't create recv QP[%d] errno %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@IBV_QPS_INIT = common dso_local global i8* null, align 8
@IBV_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IBV_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IBV_QP_STATE = common dso_local global i32 0, align 4
@IBV_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IBV_QP_PORT = common dso_local global i32 0, align 4
@IBV_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to modify recv QP[%d] to INIT\0A\00", align 1
@IBV_QPT_XRC_SEND = common dso_local global i32 0, align 4
@IBV_QP_INIT_ATTR_PD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Couldn't create send QP[%d] errno %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to modify send QP[%d] to INIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_qps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_qps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ibv_qp_init_attr_ex, align 4
  %3 = alloca %struct.ibv_qp_attr, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %122, %0
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 0), align 8
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %125

9:                                                ; preds = %5
  %10 = call i32 @memset(%struct.ibv_qp_init_attr_ex* %2, i32 0, i32 28)
  %11 = load i32, i32* @IBV_QPT_XRC_RECV, align 4
  %12 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %2, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @IBV_QP_INIT_ATTR_XRCD, align 4
  %14 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %2, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 8), align 8
  %16 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %2, i32 0, i32 5
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 4), align 4
  %18 = call i8* @ibv_create_qp_ex(i32 %17, %struct.ibv_qp_init_attr_ex* %2)
  %19 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 7), align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  store i8* %18, i8** %22, align 8
  %23 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 7), align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %9
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  store i32 1, i32* %1, align 4
  br label %126

34:                                               ; preds = %9
  %35 = load i8*, i8** @IBV_QPS_INIT, align 8
  %36 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %3, i32 0, i32 3
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %3, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 3), align 8
  %39 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %3, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @IBV_ACCESS_REMOTE_WRITE, align 4
  %41 = load i32, i32* @IBV_ACCESS_REMOTE_READ, align 4
  %42 = or i32 %40, %41
  %43 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %3, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 7), align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* @IBV_QP_STATE, align 4
  %50 = load i32, i32* @IBV_QP_PKEY_INDEX, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @IBV_QP_PORT, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @IBV_QP_ACCESS_FLAGS, align 4
  %55 = or i32 %53, %54
  %56 = call i64 @ibv_modify_qp(i8* %48, %struct.ibv_qp_attr* %3, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %34
  %59 = load i32, i32* @stderr, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i32 1, i32* %1, align 4
  br label %126

62:                                               ; preds = %34
  %63 = call i32 @memset(%struct.ibv_qp_init_attr_ex* %2, i32 0, i32 28)
  %64 = load i32, i32* @IBV_QPT_XRC_SEND, align 4
  %65 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %2, i32 0, i32 4
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 6), align 4
  %67 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %2, i32 0, i32 3
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 0), align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 1), align 4
  %70 = mul nsw i32 %68, %69
  %71 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %2, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %2, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* @IBV_QP_INIT_ATTR_PD, align 4
  %76 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %2, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 5), align 8
  %78 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %2, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 4), align 4
  %80 = call i8* @ibv_create_qp_ex(i32 %79, %struct.ibv_qp_init_attr_ex* %2)
  %81 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 2), align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  store i8* %80, i8** %84, align 8
  %85 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 2), align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %62
  %92 = load i32, i32* @stderr, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @errno, align 4
  %95 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94)
  store i32 1, i32* %1, align 4
  br label %126

96:                                               ; preds = %62
  %97 = load i8*, i8** @IBV_QPS_INIT, align 8
  %98 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %3, i32 0, i32 3
  store i8* %97, i8** %98, align 8
  %99 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %3, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 3), align 8
  %101 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %3, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %3, i32 0, i32 0
  store i32 0, i32* %102, align 8
  %103 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 2), align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* @IBV_QP_STATE, align 4
  %109 = load i32, i32* @IBV_QP_PKEY_INDEX, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @IBV_QP_PORT, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @IBV_QP_ACCESS_FLAGS, align 4
  %114 = or i32 %112, %113
  %115 = call i64 @ibv_modify_qp(i8* %107, %struct.ibv_qp_attr* %3, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %96
  %118 = load i32, i32* @stderr, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  store i32 1, i32* %1, align 4
  br label %126

121:                                              ; preds = %96
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %5

125:                                              ; preds = %5
  store i32 0, i32* %1, align 4
  br label %126

126:                                              ; preds = %125, %117, %91, %58, %29
  %127 = load i32, i32* %1, align 4
  ret i32 %127
}

declare dso_local i32 @memset(%struct.ibv_qp_init_attr_ex*, i32, i32) #1

declare dso_local i8* @ibv_create_qp_ex(i32, %struct.ibv_qp_init_attr_ex*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i64 @ibv_modify_qp(i8*, %struct.ibv_qp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
