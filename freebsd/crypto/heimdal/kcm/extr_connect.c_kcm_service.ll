; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_connect.c_kcm_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_connect.c_kcm_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i8* }
%struct.TYPE_15__ = type { i8*, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"malformed request from process %d (too short)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KCM_PROTOCOL_VERSION_MAJOR = common dso_local global i8 0, align 1
@KCM_PROTOCOL_VERSION_MINOR = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"incorrect protocol version %d.%d from process %d\00", align 1
@kcm_context = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kcm_service(i8* %0, %struct.TYPE_17__* %1, i32 %2, i32 (i32, i32, %struct.TYPE_15__*)* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i32, i32, %struct.TYPE_15__*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (i32, i32, %struct.TYPE_15__*)* %3, i32 (i32, i32, %struct.TYPE_15__*)** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = call i32 @krb5_data_zero(%struct.TYPE_15__* %14)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @heim_ipc_cred_get_uid(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @heim_ipc_cred_get_gid(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @heim_ipc_cred_get_pid(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @heim_ipc_cred_get_session(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %43

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = trunc i32 %36 to i8
  %38 = call i32 (i32, i8*, i8, ...) @kcm_log(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8 zeroext %37)
  %39 = load i32 (i32, i32, %struct.TYPE_15__*)*, i32 (i32, i32, %struct.TYPE_15__*)** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @EINVAL, align 4
  %42 = call i32 %39(i32 %40, i32 %41, %struct.TYPE_15__* null)
  br label %95

43:                                               ; preds = %5
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %15, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %16, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* @KCM_PROTOCOL_VERSION_MAJOR, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %43
  %59 = load i8*, i8** %15, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @KCM_PROTOCOL_VERSION_MINOR, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %58, %43
  %67 = load i8*, i8** %15, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = load i8*, i8** %15, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, i8, ...) @kcm_log(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %69, i32 %73, i32 %75)
  %77 = load i32 (i32, i32, %struct.TYPE_15__*)*, i32 (i32, i32, %struct.TYPE_15__*)** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @EINVAL, align 4
  %80 = call i32 %77(i32 %78, i32 %79, %struct.TYPE_15__* null)
  br label %95

81:                                               ; preds = %58
  %82 = load i8*, i8** %15, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i8* %83, i8** %84, align 8
  %85 = load i64, i64* %16, align 8
  %86 = sub i64 %85, 2
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i64 %86, i64* %87, align 8
  %88 = load i32, i32* @kcm_context, align 4
  %89 = call i32 @kcm_dispatch(i32 %88, %struct.TYPE_16__* %11, %struct.TYPE_15__* %13, %struct.TYPE_15__* %14)
  store i32 %89, i32* %12, align 4
  %90 = load i32 (i32, i32, %struct.TYPE_15__*)*, i32 (i32, i32, %struct.TYPE_15__*)** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 %90(i32 %91, i32 %92, %struct.TYPE_15__* %14)
  %94 = call i32 @krb5_data_free(%struct.TYPE_15__* %14)
  br label %95

95:                                               ; preds = %81, %66, %34
  ret void
}

declare dso_local i32 @krb5_data_zero(%struct.TYPE_15__*) #1

declare dso_local i32 @heim_ipc_cred_get_uid(i32) #1

declare dso_local i32 @heim_ipc_cred_get_gid(i32) #1

declare dso_local i32 @heim_ipc_cred_get_pid(i32) #1

declare dso_local i32 @heim_ipc_cred_get_session(i32) #1

declare dso_local i32 @kcm_log(i32, i8*, i8 zeroext, ...) #1

declare dso_local i32 @kcm_dispatch(i32, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
