; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_verify_msg_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_verify_msg_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.radius_attr_hdr* }
%struct.radius_attr_hdr = type { i64 }

@MD5_MAC_LEN = common dso_local global i32 0, align 4
@RADIUS_ATTR_MESSAGE_AUTHENTICATOR = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Multiple Message-Authenticator attributes in RADIUS message\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"No Message-Authenticator attribute found\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid Message-Authenticator!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_msg_verify_msg_auth(%struct.radius_msg* %0, %struct.radius_attr_hdr* %1, i64 %2, %struct.radius_attr_hdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radius_msg*, align 8
  %7 = alloca %struct.radius_attr_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.radius_attr_hdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [16 x %struct.radius_attr_hdr], align 16
  %14 = alloca %struct.radius_attr_hdr*, align 8
  %15 = alloca %struct.radius_attr_hdr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.radius_msg* %0, %struct.radius_msg** %6, align 8
  store %struct.radius_attr_hdr* %1, %struct.radius_attr_hdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.radius_attr_hdr* %3, %struct.radius_attr_hdr** %9, align 8
  %18 = load i32, i32* @MD5_MAC_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca %struct.radius_attr_hdr, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @MD5_MAC_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca %struct.radius_attr_hdr, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  store %struct.radius_attr_hdr* null, %struct.radius_attr_hdr** %14, align 8
  store i64 0, i64* %16, align 8
  br label %25

25:                                               ; preds = %49, %4
  %26 = load i64, i64* %16, align 8
  %27 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %28 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %33 = load i64, i64* %16, align 8
  %34 = call %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg* %32, i64 %33)
  store %struct.radius_attr_hdr* %34, %struct.radius_attr_hdr** %15, align 8
  %35 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %15, align 8
  %36 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RADIUS_ATTR_MESSAGE_AUTHENTICATOR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %42 = icmp ne %struct.radius_attr_hdr* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @MSG_INFO, align 4
  %45 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %121

46:                                               ; preds = %40
  %47 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %15, align 8
  store %struct.radius_attr_hdr* %47, %struct.radius_attr_hdr** %14, align 8
  br label %48

48:                                               ; preds = %46, %31
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %16, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %16, align 8
  br label %25

52:                                               ; preds = %25
  %53 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %54 = icmp eq %struct.radius_attr_hdr* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @MSG_INFO, align 4
  %57 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %121

58:                                               ; preds = %52
  %59 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %60 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %59, i64 1
  %61 = load i32, i32* @MD5_MAC_LEN, align 4
  %62 = call i32 @os_memcpy(%struct.radius_attr_hdr* %24, %struct.radius_attr_hdr* %60, i32 %61)
  %63 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %64 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %63, i64 1
  %65 = load i32, i32* @MD5_MAC_LEN, align 4
  %66 = call i32 @os_memset(%struct.radius_attr_hdr* %64, i32 0, i32 %65)
  %67 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %9, align 8
  %68 = icmp ne %struct.radius_attr_hdr* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %58
  %70 = getelementptr inbounds [16 x %struct.radius_attr_hdr], [16 x %struct.radius_attr_hdr]* %13, i64 0, i64 0
  %71 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %72 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %74, align 8
  %76 = call i32 @os_memcpy(%struct.radius_attr_hdr* %70, %struct.radius_attr_hdr* %75, i32 128)
  %77 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %78 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %80, align 8
  %82 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %9, align 8
  %83 = call i32 @os_memcpy(%struct.radius_attr_hdr* %81, %struct.radius_attr_hdr* %82, i32 8)
  br label %84

84:                                               ; preds = %69, %58
  %85 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %88 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @wpabuf_head(i32 %89)
  %91 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %92 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @wpabuf_len(i32 %93)
  %95 = call i64 @hmac_md5(%struct.radius_attr_hdr* %85, i64 %86, i32 %90, i32 %94, %struct.radius_attr_hdr* %21)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %121

98:                                               ; preds = %84
  %99 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %100 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %99, i64 1
  %101 = load i32, i32* @MD5_MAC_LEN, align 4
  %102 = call i32 @os_memcpy(%struct.radius_attr_hdr* %100, %struct.radius_attr_hdr* %24, i32 %101)
  %103 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %9, align 8
  %104 = icmp ne %struct.radius_attr_hdr* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %107 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %109, align 8
  %111 = getelementptr inbounds [16 x %struct.radius_attr_hdr], [16 x %struct.radius_attr_hdr]* %13, i64 0, i64 0
  %112 = call i32 @os_memcpy(%struct.radius_attr_hdr* %110, %struct.radius_attr_hdr* %111, i32 128)
  br label %113

113:                                              ; preds = %105, %98
  %114 = load i32, i32* @MD5_MAC_LEN, align 4
  %115 = call i64 @os_memcmp_const(%struct.radius_attr_hdr* %24, %struct.radius_attr_hdr* %21, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* @MSG_INFO, align 4
  %119 = call i32 @wpa_printf(i32 %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %121

120:                                              ; preds = %113
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %121

121:                                              ; preds = %120, %117, %97, %55, %43
  %122 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg*, i64) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @os_memcpy(%struct.radius_attr_hdr*, %struct.radius_attr_hdr*, i32) #2

declare dso_local i32 @os_memset(%struct.radius_attr_hdr*, i32, i32) #2

declare dso_local i64 @hmac_md5(%struct.radius_attr_hdr*, i64, i32, i32, %struct.radius_attr_hdr*) #2

declare dso_local i32 @wpabuf_head(i32) #2

declare dso_local i32 @wpabuf_len(i32) #2

declare dso_local i64 @os_memcmp_const(%struct.radius_attr_hdr*, %struct.radius_attr_hdr*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
