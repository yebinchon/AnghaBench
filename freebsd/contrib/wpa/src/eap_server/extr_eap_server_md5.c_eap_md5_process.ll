; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_md5.c_eap_md5_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_md5.c_eap_md5_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i64 }
%struct.wpabuf = type { i32 }
%struct.eap_md5_data = type { i8*, i32 }

@CHAP_MD5_LEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"EAP-MD5: Plaintext password not configured\00", align 1
@FAILURE = common dso_local global i8* null, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_MD5 = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"EAP-MD5: Response\00", align 1
@CHALLENGE_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"EAP-MD5: CHAP MD5 operation failed\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"EAP-MD5: Done - Success\00", align 1
@SUCCESS = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"EAP-MD5: Done - Failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_md5_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_md5_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_md5_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.eap_md5_data*
  store %struct.eap_md5_data* %15, %struct.eap_md5_data** %7, align 8
  %16 = load i32, i32* @CHAP_MD5_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %21 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp eq %struct.TYPE_2__* %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %3
  %25 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %26 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %33 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31, %24, %3
  %39 = load i32, i32* @MSG_INFO, align 4
  %40 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %41 = load i8*, i8** @FAILURE, align 8
  %42 = load %struct.eap_md5_data*, %struct.eap_md5_data** %7, align 8
  %43 = getelementptr inbounds %struct.eap_md5_data, %struct.eap_md5_data* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  store i32 1, i32* %13, align 4
  br label %113

44:                                               ; preds = %31
  %45 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %46 = load i32, i32* @EAP_TYPE_MD5, align 4
  %47 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %48 = call i32* @eap_hdr_validate(i32 %45, i32 %46, %struct.wpabuf* %47, i64* %9)
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %44
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CHAP_MD5_LEN, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* @CHAP_MD5_LEN, align 4
  %59 = add nsw i32 1, %58
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56, %51, %44
  store i32 1, i32* %13, align 4
  br label %113

63:                                               ; preds = %56
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %8, align 8
  %66 = load i32, i32* @MSG_MSGDUMP, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* @CHAP_MD5_LEN, align 4
  %69 = call i32 @wpa_hexdump(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %67, i32 %68)
  %70 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %71 = call i32 @eap_get_id(%struct.wpabuf* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %74 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %79 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.eap_md5_data*, %struct.eap_md5_data** %7, align 8
  %84 = getelementptr inbounds %struct.eap_md5_data, %struct.eap_md5_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CHALLENGE_LEN, align 4
  %87 = call i64 @chap_md5(i32 %72, i32* %77, i32 %82, i32 %85, i32 %86, i32* %19)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %63
  %90 = load i32, i32* @MSG_INFO, align 4
  %91 = call i32 @wpa_printf(i32 %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i8*, i8** @FAILURE, align 8
  %93 = load %struct.eap_md5_data*, %struct.eap_md5_data** %7, align 8
  %94 = getelementptr inbounds %struct.eap_md5_data, %struct.eap_md5_data* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  store i32 1, i32* %13, align 4
  br label %113

95:                                               ; preds = %63
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* @CHAP_MD5_LEN, align 4
  %98 = call i64 @os_memcmp_const(i32* %19, i32* %96, i32 %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = call i32 @wpa_printf(i32 %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i8*, i8** @SUCCESS, align 8
  %104 = load %struct.eap_md5_data*, %struct.eap_md5_data** %7, align 8
  %105 = getelementptr inbounds %struct.eap_md5_data, %struct.eap_md5_data* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  br label %112

106:                                              ; preds = %95
  %107 = load i32, i32* @MSG_DEBUG, align 4
  %108 = call i32 @wpa_printf(i32 %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i8*, i8** @FAILURE, align 8
  %110 = load %struct.eap_md5_data*, %struct.eap_md5_data** %7, align 8
  %111 = getelementptr inbounds %struct.eap_md5_data, %struct.eap_md5_data* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %106, %100
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %112, %89, %62, %38
  %114 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %13, align 4
  switch i32 %115, label %117 [
    i32 0, label %116
    i32 1, label %116
  ]

116:                                              ; preds = %113, %113
  ret void

117:                                              ; preds = %113
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #2

declare dso_local i64 @chap_md5(i32, i32*, i32, i32, i32, i32*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
