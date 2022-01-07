; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_finish_das_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_finish_das_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.radius_hdr = type { i32 }
%struct.radius_attr_hdr = type { i32 }

@MD5_MAC_LEN = common dso_local global i32 0, align 4
@RADIUS_ATTR_MESSAGE_AUTHENTICATOR = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not add Message-Authenticator\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"RADIUS: Too long message (%lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_msg_finish_das_resp(%struct.radius_msg* %0, i32* %1, i64 %2, %struct.radius_hdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radius_msg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.radius_hdr*, align 8
  %10 = alloca [2 x i32*], align 16
  %11 = alloca [2 x i64], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.radius_attr_hdr*, align 8
  %15 = alloca i32, align 4
  store %struct.radius_msg* %0, %struct.radius_msg** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.radius_hdr* %3, %struct.radius_hdr** %9, align 8
  %16 = load i32, i32* @MD5_MAC_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @MD5_MAC_LEN, align 4
  %21 = call i32 @os_memset(i32* %19, i32 0, i32 %20)
  %22 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %23 = load i32, i32* @RADIUS_ATTR_MESSAGE_AUTHENTICATOR, align 4
  %24 = load i32, i32* @MD5_MAC_LEN, align 4
  %25 = call %struct.radius_attr_hdr* @radius_msg_add_attr(%struct.radius_msg* %22, i32 %23, i32* %19, i32 %24)
  store %struct.radius_attr_hdr* %25, %struct.radius_attr_hdr** %14, align 8
  %26 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %27 = icmp eq %struct.radius_attr_hdr* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @MSG_WARNING, align 4
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %104

31:                                               ; preds = %4
  %32 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %33 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @wpabuf_len(i32 %34)
  %36 = call i32 @host_to_be16(i32 %35)
  %37 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %38 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %42 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.radius_hdr*, %struct.radius_hdr** %9, align 8
  %47 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @os_memcpy(i32 %45, i32 %48, i32 16)
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %53 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @wpabuf_head(i32 %54)
  %56 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %57 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @wpabuf_len(i32 %58)
  %60 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %61 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %60, i64 1
  %62 = bitcast %struct.radius_attr_hdr* %61 to i32*
  %63 = call i32 @hmac_md5(i32* %50, i64 %51, i32 %55, i32 %59, i32* %62)
  %64 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %65 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32* @wpabuf_head_u8(i32 %66)
  %68 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  store i32* %67, i32** %68, align 16
  %69 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %70 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @wpabuf_len(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  store i64 %73, i64* %74, align 16
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 1
  store i32* %75, i32** %76, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  store i64 %77, i64* %78, align 8
  %79 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  %80 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %81 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %82 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @md5_vector(i32 2, i32** %79, i64* %80, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %104

89:                                               ; preds = %31
  %90 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %91 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @wpabuf_len(i32 %92)
  %94 = icmp sgt i32 %93, 65535
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i32, i32* @MSG_WARNING, align 4
  %97 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %98 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @wpabuf_len(i32 %99)
  %101 = sext i32 %100 to i64
  %102 = call i32 (i32, i8*, ...) @wpa_printf(i32 %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %101)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %104

103:                                              ; preds = %89
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %104

104:                                              ; preds = %103, %95, %88, %28
  %105 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local %struct.radius_attr_hdr* @radius_msg_add_attr(%struct.radius_msg*, i32, i32*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @host_to_be16(i32) #2

declare dso_local i32 @wpabuf_len(i32) #2

declare dso_local i32 @os_memcpy(i32, i32, i32) #2

declare dso_local i32 @hmac_md5(i32*, i64, i32, i32, i32*) #2

declare dso_local i32 @wpabuf_head(i32) #2

declare dso_local i32* @wpabuf_head_u8(i32) #2

declare dso_local i64 @md5_vector(i32, i32**, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
