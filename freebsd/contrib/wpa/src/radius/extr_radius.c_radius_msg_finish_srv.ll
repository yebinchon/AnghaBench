; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_finish_srv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_finish_srv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.radius_attr_hdr = type { i32 }

@MD5_MAC_LEN = common dso_local global i32 0, align 4
@RADIUS_ATTR_MESSAGE_AUTHENTICATOR = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WARNING: Could not add Message-Authenticator\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"RADIUS: Too long message (%lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_msg_finish_srv(%struct.radius_msg* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radius_msg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.radius_attr_hdr*, align 8
  %13 = alloca [4 x i32*], align 16
  %14 = alloca [4 x i64], align 16
  %15 = alloca i32, align 4
  store %struct.radius_msg* %0, %struct.radius_msg** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* @MD5_MAC_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @MD5_MAC_LEN, align 4
  %21 = call i32 @os_memset(i32* %19, i32 0, i32 %20)
  %22 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %23 = load i32, i32* @RADIUS_ATTR_MESSAGE_AUTHENTICATOR, align 4
  %24 = load i32, i32* @MD5_MAC_LEN, align 4
  %25 = call %struct.radius_attr_hdr* @radius_msg_add_attr(%struct.radius_msg* %22, i32 %23, i32* %19, i32 %24)
  store %struct.radius_attr_hdr* %25, %struct.radius_attr_hdr** %12, align 8
  %26 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %12, align 8
  %27 = icmp eq %struct.radius_attr_hdr* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @MSG_ERROR, align 4
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %112

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
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @os_memcpy(i32 %45, i32* %46, i32 4)
  %48 = load i32*, i32** %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %51 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @wpabuf_head(i32 %52)
  %54 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %55 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @wpabuf_len(i32 %56)
  %58 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %12, align 8
  %59 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %58, i64 1
  %60 = bitcast %struct.radius_attr_hdr* %59 to i32*
  %61 = call i32 @hmac_md5(i32* %48, i64 %49, i32 %53, i32 %57, i32* %60)
  %62 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %63 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = bitcast %struct.TYPE_2__* %64 to i32*
  %66 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 0
  store i32* %65, i32** %66, align 16
  %67 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  store i64 4, i64* %67, align 16
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 1
  store i32* %68, i32** %69, align 8
  %70 = load i32, i32* @MD5_MAC_LEN, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 1
  store i64 %71, i64* %72, align 8
  %73 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %74 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32* @wpabuf_head_u8(i32 %75)
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 2
  store i32* %77, i32** %78, align 16
  %79 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %80 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @wpabuf_len(i32 %81)
  %83 = sext i32 %82 to i64
  %84 = sub i64 %83, 4
  %85 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 2
  store i64 %84, i64* %85, align 16
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 3
  store i32* %86, i32** %87, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 3
  store i64 %88, i64* %89, align 8
  %90 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i64 0, i64 0
  %91 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %92 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %93 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @md5_vector(i32 4, i32** %90, i64* %91, i32 %96)
  %98 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %99 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @wpabuf_len(i32 %100)
  %102 = icmp sgt i32 %101, 65535
  br i1 %102, label %103, label %111

103:                                              ; preds = %31
  %104 = load i32, i32* @MSG_WARNING, align 4
  %105 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %106 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @wpabuf_len(i32 %107)
  %109 = sext i32 %108 to i64
  %110 = call i32 (i32, i8*, ...) @wpa_printf(i32 %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %109)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %112

111:                                              ; preds = %31
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %112

112:                                              ; preds = %111, %103, %28
  %113 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local %struct.radius_attr_hdr* @radius_msg_add_attr(%struct.radius_msg*, i32, i32*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @host_to_be16(i32) #2

declare dso_local i32 @wpabuf_len(i32) #2

declare dso_local i32 @os_memcpy(i32, i32*, i32) #2

declare dso_local i32 @hmac_md5(i32*, i64, i32, i32, i32*) #2

declare dso_local i32 @wpabuf_head(i32) #2

declare dso_local i32* @wpabuf_head_u8(i32) #2

declare dso_local i32 @md5_vector(i32, i32**, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
