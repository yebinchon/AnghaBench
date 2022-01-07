; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_des.c_authdes_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_des.c_authdes_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.opaque_auth = type { i32, i64 }
%struct.ad_private = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.authdes_verf = type { i32, %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }

@BYTES_PER_XDR_UNIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DES_DECRYPT = common dso_local global i32 0, align 4
@DES_HW = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"authdes_validate: DES decryption failure\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"authdes_validate: verifier mismatch\00", align 1
@ADN_NICKNAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.opaque_auth*)* @authdes_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authdes_validate(%struct.TYPE_12__* %0, %struct.opaque_auth* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.opaque_auth*, align 8
  %6 = alloca %struct.ad_private*, align 8
  %7 = alloca %struct.authdes_verf, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.opaque_auth* %1, %struct.opaque_auth** %5, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = call %struct.ad_private* @AUTH_PRIVATE(%struct.TYPE_12__* %11)
  store %struct.ad_private* %12, %struct.ad_private** %6, align 8
  %13 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %14 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %17 = mul nsw i32 3, %16
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %89

21:                                               ; preds = %2
  %22 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %23 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8**
  store i8** %25, i8*** %9, align 8
  %26 = load i8**, i8*** %9, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %9, align 8
  %28 = load i8*, i8** %26, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8**, i8*** %9, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %9, align 8
  %33 = load i8*, i8** %31, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i8**, i8*** %9, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %9, align 8
  %38 = load i8*, i8** %36, align 8
  %39 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %7, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = bitcast i32* %41 to i8*
  %43 = bitcast %struct.TYPE_11__* %10 to i8*
  %44 = load i32, i32* @DES_DECRYPT, align 4
  %45 = load i32, i32* @DES_HW, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @ecb_crypt(i8* %42, i8* %43, i32 24, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @DES_FAILED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %21
  %52 = load i32, i32* @LOG_ERR, align 4
  %53 = call i32 @syslog(i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %89

55:                                               ; preds = %21
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8**
  store i8** %58, i8*** %9, align 8
  %59 = load i8**, i8*** %9, align 8
  %60 = call i8* @IXDR_GET_INT32(i8** %59)
  %61 = getelementptr i8, i8* %60, i64 1
  %62 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %7, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i8**, i8*** %9, align 8
  %65 = call i8* @IXDR_GET_INT32(i8** %64)
  %66 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %7, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %69 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %68, i32 0, i32 2
  %70 = bitcast i32* %69 to i8*
  %71 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %7, i32 0, i32 1
  %72 = bitcast %struct.TYPE_9__* %71 to i8*
  %73 = call i64 @bcmp(i8* %70, i8* %72, i32 4)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %55
  %76 = load i32, i32* @LOG_DEBUG, align 4
  %77 = call i32 @syslog(i32 %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %3, align 4
  br label %89

79:                                               ; preds = %55
  %80 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %7, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %83 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @ADN_NICKNAME, align 4
  %85 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %86 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %79, %75, %51, %19
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.ad_private* @AUTH_PRIVATE(%struct.TYPE_12__*) #1

declare dso_local i32 @ecb_crypt(i8*, i8*, i32, i32) #1

declare dso_local i64 @DES_FAILED(i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i8* @IXDR_GET_INT32(i8**) #1

declare dso_local i64 @bcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
