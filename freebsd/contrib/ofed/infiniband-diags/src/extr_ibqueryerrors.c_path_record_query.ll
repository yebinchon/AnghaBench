; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_path_record_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_path_record_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.sa_handle = type { i32 }
%struct.sa_query_result = type { i64 }

@DEFAULT_HALF_WORLD_PR_TIMEOUT = common dso_local global i32 0, align 4
@ibd_timeout = common dso_local global i32 0, align 4
@PR = common dso_local global i32 0, align 4
@SGID = common dso_local global i32 0, align 4
@IB_GID_GUID_F = common dso_local global i32 0, align 4
@DGID = common dso_local global i32 0, align 4
@NUMBPATH = common dso_local global i32 0, align 4
@REVERSIBLE = common dso_local global i32 0, align 4
@IB_MAD_METHOD_GET_TABLE = common dso_local global i32 0, align 4
@IB_SA_ATTR_PATHRECORD = common dso_local global i64 0, align 8
@ibd_sakey = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Query SA failed: %s; sa call path_query failed\0A\00", align 1
@IB_SA_MAD_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @path_record_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_record_query(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sa_handle*, align 8
  %10 = alloca %struct.sa_query_result, align 8
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i32 %0, i32* %12, align 4
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = call %struct.sa_handle* (...) @sa_get_handle()
  store %struct.sa_handle* %13, %struct.sa_handle** %9, align 8
  %14 = icmp ne %struct.sa_handle* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %90

16:                                               ; preds = %2
  %17 = load i32, i32* @DEFAULT_HALF_WORLD_PR_TIMEOUT, align 4
  store i32 %17, i32* @ibd_timeout, align 4
  %18 = call i32 @memset(%struct.TYPE_7__* %6, i32 0, i32 12)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PR, align 4
  %22 = load i32, i32* @SGID, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CHECK_AND_SET_GID(i32 %24, i32 %20, i32 %21, i32 %22)
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IB_GID_GUID_F, align 4
  %32 = call i32 @mad_encode_field(i32 %30, i32 %31, i64* %5)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PR, align 4
  %36 = load i32, i32* @DGID, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CHECK_AND_SET_GID(i32 %38, i32 %34, i32 %35, i32 %36)
  br label %40

40:                                               ; preds = %28, %16
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PR, align 4
  %44 = load i32, i32* @NUMBPATH, align 4
  %45 = call i32 @CHECK_AND_SET_VAL(i32 1, i32 8, i32 -1, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @PR, align 4
  %48 = load i32, i32* @REVERSIBLE, align 4
  %49 = call i32 @CHECK_AND_SET_VAL(i32 1, i32 8, i32 -1, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %50, 7
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load %struct.sa_handle*, %struct.sa_handle** %9, align 8
  %56 = load i32, i32* @IB_MAD_METHOD_GET_TABLE, align 4
  %57 = load i64, i64* @IB_SA_ATTR_PATHRECORD, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @cl_ntoh64(i32 %59)
  %61 = load i32, i32* @ibd_sakey, align 4
  %62 = call i32 @sa_query(%struct.sa_handle* %55, i32 %56, i32 %58, i32 0, i32 %60, i32 %61, %struct.TYPE_7__* %6, i32 12, %struct.sa_query_result* %10)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %40
  %66 = load %struct.sa_handle*, %struct.sa_handle** %9, align 8
  %67 = call i32 @sa_free_handle(%struct.sa_handle* %66)
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i8* @strerror(i32 %69)
  %71 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %3, align 4
  br label %90

73:                                               ; preds = %40
  %74 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %10, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IB_SA_MAD_STATUS_SUCCESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %10, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @sa_report_err(i64 %80)
  %82 = load i32, i32* @EIO, align 4
  store i32 %82, i32* %11, align 4
  br label %85

83:                                               ; preds = %73
  %84 = call i32 @insert_lid2sl_table(%struct.sa_query_result* %10)
  br label %85

85:                                               ; preds = %83, %78
  %86 = load %struct.sa_handle*, %struct.sa_handle** %9, align 8
  %87 = call i32 @sa_free_handle(%struct.sa_handle* %86)
  %88 = call i32 @sa_free_result_mad(%struct.sa_query_result* %10)
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %85, %65, %15
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.sa_handle* @sa_get_handle(...) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @CHECK_AND_SET_GID(i32, i32, i32, i32) #1

declare dso_local i32 @mad_encode_field(i32, i32, i64*) #1

declare dso_local i32 @CHECK_AND_SET_VAL(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sa_query(%struct.sa_handle*, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, %struct.sa_query_result*) #1

declare dso_local i32 @cl_ntoh64(i32) #1

declare dso_local i32 @sa_free_handle(%struct.sa_handle*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @sa_report_err(i64) #1

declare dso_local i32 @insert_lid2sl_table(%struct.sa_query_result*) #1

declare dso_local i32 @sa_free_result_mad(%struct.sa_query_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
