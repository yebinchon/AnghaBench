; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_verify_das_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_verify_das_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.radius_attr_hdr* }
%struct.radius_attr_hdr = type { i64 }

@MD5_MAC_LEN = common dso_local global i32 0, align 4
@RADIUS_ATTR_MESSAGE_AUTHENTICATOR = common dso_local global i64 0, align 8
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Multiple Message-Authenticator attributes in RADIUS message\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Missing Message-Authenticator attribute in RADIUS message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_msg_verify_das_req(%struct.radius_msg* %0, %struct.radius_attr_hdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radius_msg*, align 8
  %7 = alloca %struct.radius_attr_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x %struct.radius_attr_hdr*], align 16
  %11 = alloca [4 x i64], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [16 x %struct.radius_attr_hdr], align 16
  %18 = alloca %struct.radius_attr_hdr*, align 8
  %19 = alloca %struct.radius_attr_hdr*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.radius_msg* %0, %struct.radius_msg** %6, align 8
  store %struct.radius_attr_hdr* %1, %struct.radius_attr_hdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load i32, i32* @MD5_MAC_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca %struct.radius_attr_hdr, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load i32, i32* @MD5_MAC_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca %struct.radius_attr_hdr, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  %29 = load i32, i32* @MD5_MAC_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca %struct.radius_attr_hdr, i64 %30, align 16
  store i64 %30, i64* %15, align 8
  %32 = load i32, i32* @MD5_MAC_LEN, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca %struct.radius_attr_hdr, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  store %struct.radius_attr_hdr* null, %struct.radius_attr_hdr** %18, align 8
  %35 = mul nuw i64 8, %23
  %36 = trunc i64 %35 to i32
  %37 = call i32 @os_memset(%struct.radius_attr_hdr* %25, i32 0, i32 %36)
  %38 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %39 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = bitcast %struct.TYPE_2__* %40 to %struct.radius_attr_hdr*
  %42 = getelementptr inbounds [4 x %struct.radius_attr_hdr*], [4 x %struct.radius_attr_hdr*]* %10, i64 0, i64 0
  store %struct.radius_attr_hdr* %41, %struct.radius_attr_hdr** %42, align 16
  %43 = load i32, i32* @MD5_MAC_LEN, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 4, %44
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %45, i64* %46, align 16
  %47 = getelementptr inbounds [4 x %struct.radius_attr_hdr*], [4 x %struct.radius_attr_hdr*]* %10, i64 0, i64 1
  store %struct.radius_attr_hdr* %25, %struct.radius_attr_hdr** %47, align 8
  %48 = load i32, i32* @MD5_MAC_LEN, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  store i64 %49, i64* %50, align 8
  %51 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %52 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 1
  %55 = bitcast %struct.TYPE_2__* %54 to %struct.radius_attr_hdr*
  %56 = getelementptr inbounds [4 x %struct.radius_attr_hdr*], [4 x %struct.radius_attr_hdr*]* %10, i64 0, i64 2
  store %struct.radius_attr_hdr* %55, %struct.radius_attr_hdr** %56, align 16
  %57 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %58 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @wpabuf_len(i32 %59)
  %61 = sext i32 %60 to i64
  %62 = sub i64 %61, 4
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  store i64 %62, i64* %63, align 16
  %64 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %7, align 8
  %65 = getelementptr inbounds [4 x %struct.radius_attr_hdr*], [4 x %struct.radius_attr_hdr*]* %10, i64 0, i64 3
  store %struct.radius_attr_hdr* %64, %struct.radius_attr_hdr** %65, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  store i64 %66, i64* %67, align 8
  %68 = getelementptr inbounds [4 x %struct.radius_attr_hdr*], [4 x %struct.radius_attr_hdr*]* %10, i64 0, i64 0
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %70 = call i32 @md5_vector(i32 4, %struct.radius_attr_hdr** %68, i64* %69, %struct.radius_attr_hdr* %28)
  %71 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %72 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %74, align 8
  %76 = load i32, i32* @MD5_MAC_LEN, align 4
  %77 = call i64 @os_memcmp_const(%struct.radius_attr_hdr* %75, %struct.radius_attr_hdr* %28, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %166

80:                                               ; preds = %4
  store i64 0, i64* %20, align 8
  br label %81

81:                                               ; preds = %105, %80
  %82 = load i64, i64* %20, align 8
  %83 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %84 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ult i64 %82, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %81
  %88 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %89 = load i64, i64* %20, align 8
  %90 = call %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg* %88, i64 %89)
  store %struct.radius_attr_hdr* %90, %struct.radius_attr_hdr** %19, align 8
  %91 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %19, align 8
  %92 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @RADIUS_ATTR_MESSAGE_AUTHENTICATOR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %87
  %97 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %18, align 8
  %98 = icmp ne %struct.radius_attr_hdr* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @MSG_WARNING, align 4
  %101 = call i32 @wpa_printf(i32 %100, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %166

102:                                              ; preds = %96
  %103 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %19, align 8
  store %struct.radius_attr_hdr* %103, %struct.radius_attr_hdr** %18, align 8
  br label %104

104:                                              ; preds = %102, %87
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %20, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %20, align 8
  br label %81

108:                                              ; preds = %81
  %109 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %18, align 8
  %110 = icmp eq %struct.radius_attr_hdr* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @MSG_WARNING, align 4
  %116 = call i32 @wpa_printf(i32 %115, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %166

117:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %166

118:                                              ; preds = %108
  %119 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %18, align 8
  %120 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %119, i64 1
  %121 = load i32, i32* @MD5_MAC_LEN, align 4
  %122 = call i32 @os_memcpy(%struct.radius_attr_hdr* %34, %struct.radius_attr_hdr* %120, i32 %121)
  %123 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %18, align 8
  %124 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %123, i64 1
  %125 = load i32, i32* @MD5_MAC_LEN, align 4
  %126 = call i32 @os_memset(%struct.radius_attr_hdr* %124, i32 0, i32 %125)
  %127 = getelementptr inbounds [16 x %struct.radius_attr_hdr], [16 x %struct.radius_attr_hdr]* %17, i64 0, i64 0
  %128 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %129 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %131, align 8
  %133 = call i32 @os_memcpy(%struct.radius_attr_hdr* %127, %struct.radius_attr_hdr* %132, i32 128)
  %134 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %135 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %137, align 8
  %139 = call i32 @os_memset(%struct.radius_attr_hdr* %138, i32 0, i32 8)
  %140 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %7, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %143 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @wpabuf_head(i32 %144)
  %146 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %147 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @wpabuf_len(i32 %148)
  %150 = call i32 @hmac_md5(%struct.radius_attr_hdr* %140, i64 %141, i32 %145, i32 %149, %struct.radius_attr_hdr* %31)
  %151 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %18, align 8
  %152 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %151, i64 1
  %153 = load i32, i32* @MD5_MAC_LEN, align 4
  %154 = call i32 @os_memcpy(%struct.radius_attr_hdr* %152, %struct.radius_attr_hdr* %34, i32 %153)
  %155 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %156 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %155, i32 0, i32 1
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %158, align 8
  %160 = getelementptr inbounds [16 x %struct.radius_attr_hdr], [16 x %struct.radius_attr_hdr]* %17, i64 0, i64 0
  %161 = call i32 @os_memcpy(%struct.radius_attr_hdr* %159, %struct.radius_attr_hdr* %160, i32 128)
  %162 = load i32, i32* @MD5_MAC_LEN, align 4
  %163 = call i64 @os_memcmp_const(%struct.radius_attr_hdr* %34, %struct.radius_attr_hdr* %31, i32 %162)
  %164 = icmp ne i64 %163, 0
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %166

166:                                              ; preds = %118, %117, %114, %99, %79
  %167 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(%struct.radius_attr_hdr*, i32, i32) #2

declare dso_local i32 @wpabuf_len(i32) #2

declare dso_local i32 @md5_vector(i32, %struct.radius_attr_hdr**, i64*, %struct.radius_attr_hdr*) #2

declare dso_local i64 @os_memcmp_const(%struct.radius_attr_hdr*, %struct.radius_attr_hdr*, i32) #2

declare dso_local %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg*, i64) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @os_memcpy(%struct.radius_attr_hdr*, %struct.radius_attr_hdr*, i32) #2

declare dso_local i32 @hmac_md5(%struct.radius_attr_hdr*, i64, i32, i32, %struct.radius_attr_hdr*) #2

declare dso_local i32 @wpabuf_head(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
