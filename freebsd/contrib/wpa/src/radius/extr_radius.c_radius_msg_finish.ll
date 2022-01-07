; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.radius_attr_hdr = type { i32 }

@MD5_MAC_LEN = common dso_local global i32 0, align 4
@RADIUS_ATTR_MESSAGE_AUTHENTICATOR = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"RADIUS: Could not add Message-Authenticator\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"RADIUS: Too long message (%lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_msg_finish(%struct.radius_msg* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radius_msg*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.radius_attr_hdr*, align 8
  %11 = alloca i32, align 4
  store %struct.radius_msg* %0, %struct.radius_msg** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %58

14:                                               ; preds = %3
  %15 = load i32, i32* @MD5_MAC_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @MD5_MAC_LEN, align 4
  %20 = call i32 @os_memset(i32* %18, i32 0, i32 %19)
  %21 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %22 = load i32, i32* @RADIUS_ATTR_MESSAGE_AUTHENTICATOR, align 4
  %23 = load i32, i32* @MD5_MAC_LEN, align 4
  %24 = call %struct.radius_attr_hdr* @radius_msg_add_attr(%struct.radius_msg* %21, i32 %22, i32* %18, i32 %23)
  store %struct.radius_attr_hdr* %24, %struct.radius_attr_hdr** %10, align 8
  %25 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %10, align 8
  %26 = icmp eq %struct.radius_attr_hdr* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load i32, i32* @MSG_WARNING, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %54

30:                                               ; preds = %14
  %31 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %32 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @wpabuf_len(i32 %33)
  %35 = call i8* @host_to_be16(i32 %34)
  %36 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %37 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %35, i8** %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %43 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @wpabuf_head(i32 %44)
  %46 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %47 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @wpabuf_len(i32 %48)
  %50 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %10, align 8
  %51 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %50, i64 1
  %52 = bitcast %struct.radius_attr_hdr* %51 to i32*
  %53 = call i32 @hmac_md5(i32* %40, i64 %41, i32 %45, i32 %49, i32* %52)
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %30, %27
  %55 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %11, align 4
  switch i32 %56, label %85 [
    i32 0, label %57
    i32 1, label %83
  ]

57:                                               ; preds = %54
  br label %68

58:                                               ; preds = %3
  %59 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %60 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @wpabuf_len(i32 %61)
  %63 = call i8* @host_to_be16(i32 %62)
  %64 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %65 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i8* %63, i8** %67, align 8
  br label %68

68:                                               ; preds = %58, %57
  %69 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %70 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @wpabuf_len(i32 %71)
  %73 = icmp sgt i32 %72, 65535
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load i32, i32* @MSG_WARNING, align 4
  %76 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %77 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @wpabuf_len(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  store i32 -1, i32* %4, align 4
  br label %83

82:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %74, %54
  %84 = load i32, i32* %4, align 4
  ret i32 %84

85:                                               ; preds = %54
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local %struct.radius_attr_hdr* @radius_msg_add_attr(%struct.radius_msg*, i32, i32*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i8* @host_to_be16(i32) #2

declare dso_local i32 @wpabuf_len(i32) #2

declare dso_local i32 @hmac_md5(i32*, i64, i32, i32, i32*) #2

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
