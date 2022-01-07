; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_sign.c_TS_RESP_create_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_sign.c_TS_RESP_create_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32*, i32* }

@TS_F_TS_RESP_CREATE_RESPONSE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@TS_STATUS_REJECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Bad request format or system error.\00", align 1
@TS_INFO_BAD_DATA_FORMAT = common dso_local global i32 0, align 4
@TS_STATUS_GRANTED = common dso_local global i32 0, align 4
@TS_R_RESPONSE_SETUP_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error during response generation.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @TS_RESP_create_response(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = call i32 @ts_RESP_CTX_init(%struct.TYPE_13__* %8)
  %10 = call i32* (...) @TS_RESP_new()
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = icmp eq i32* %10, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @TS_F_TS_RESP_CREATE_RESPONSE, align 4
  %16 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %17 = call i32 @TSerr(i32 %15, i32 %16)
  br label %66

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @d2i_TS_REQ_bio(i32* %19, i32* null)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  %23 = icmp eq i32* %20, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = load i32, i32* @TS_STATUS_REJECTION, align 4
  %27 = call i32 @TS_RESP_CTX_set_status_info(%struct.TYPE_13__* %25, i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = load i32, i32* @TS_INFO_BAD_DATA_FORMAT, align 4
  %30 = call i32 @TS_RESP_CTX_add_failure_info(%struct.TYPE_13__* %28, i32 %29)
  br label %66

31:                                               ; preds = %18
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = load i32, i32* @TS_STATUS_GRANTED, align 4
  %34 = call i32 @TS_RESP_CTX_set_status_info(%struct.TYPE_13__* %32, i32 %33, i8* null)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %66

37:                                               ; preds = %31
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = call i32 @ts_RESP_check_request(%struct.TYPE_13__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %66

42:                                               ; preds = %37
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = call i32* @ts_RESP_get_policy(%struct.TYPE_13__* %43)
  store i32* %44, i32** %5, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %66

47:                                               ; preds = %42
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32* @ts_RESP_create_tst_info(%struct.TYPE_13__* %48, i32* %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = icmp eq i32* %50, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %66

55:                                               ; preds = %47
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = call i32 @ts_RESP_process_extensions(%struct.TYPE_13__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %66

60:                                               ; preds = %55
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = call i32 @ts_RESP_sign(%struct.TYPE_13__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  br label %66

65:                                               ; preds = %60
  store i32 1, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %64, %59, %54, %46, %41, %36, %24, %14
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %91, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @TS_F_TS_RESP_CREATE_RESPONSE, align 4
  %71 = load i32, i32* @TS_R_RESPONSE_SETUP_ERROR, align 4
  %72 = call i32 @TSerr(i32 %70, i32 %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %69
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = load i32, i32* @TS_STATUS_REJECTION, align 4
  %80 = call i64 @TS_RESP_CTX_set_status_info_cond(%struct.TYPE_13__* %78, i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @TS_RESP_free(i32* %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %82, %77
  br label %90

90:                                               ; preds = %89, %69
  br label %91

91:                                               ; preds = %90, %66
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %6, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = call i32 @ts_RESP_CTX_cleanup(%struct.TYPE_13__* %97)
  %99 = load i32*, i32** %6, align 8
  ret i32* %99
}

declare dso_local i32 @ts_RESP_CTX_init(%struct.TYPE_13__*) #1

declare dso_local i32* @TS_RESP_new(...) #1

declare dso_local i32 @TSerr(i32, i32) #1

declare dso_local i32* @d2i_TS_REQ_bio(i32*, i32*) #1

declare dso_local i32 @TS_RESP_CTX_set_status_info(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @TS_RESP_CTX_add_failure_info(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ts_RESP_check_request(%struct.TYPE_13__*) #1

declare dso_local i32* @ts_RESP_get_policy(%struct.TYPE_13__*) #1

declare dso_local i32* @ts_RESP_create_tst_info(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @ts_RESP_process_extensions(%struct.TYPE_13__*) #1

declare dso_local i32 @ts_RESP_sign(%struct.TYPE_13__*) #1

declare dso_local i64 @TS_RESP_CTX_set_status_info_cond(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @TS_RESP_free(i32*) #1

declare dso_local i32 @ts_RESP_CTX_cleanup(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
