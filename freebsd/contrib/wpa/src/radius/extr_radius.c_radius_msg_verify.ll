; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@MD5_MAC_LEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"No matching Access-Request message found\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Response Authenticator invalid!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_msg_verify(%struct.radius_msg* %0, i32* %1, i64 %2, %struct.radius_msg* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radius_msg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.radius_msg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32*], align 16
  %13 = alloca [4 x i64], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.radius_msg* %0, %struct.radius_msg** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.radius_msg* %3, %struct.radius_msg** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @MD5_MAC_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load %struct.radius_msg*, %struct.radius_msg** %10, align 8
  %22 = icmp eq %struct.radius_msg* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %91

26:                                               ; preds = %5
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.radius_msg*, %struct.radius_msg** %10, align 8
  %34 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @radius_msg_verify_msg_auth(%struct.radius_msg* %30, i32* %31, i64 %32, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %91

41:                                               ; preds = %29, %26
  %42 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %43 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = bitcast %struct.TYPE_2__* %44 to i32*
  %46 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 0
  store i32* %45, i32** %46, align 16
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 4, i64* %47, align 16
  %48 = load %struct.radius_msg*, %struct.radius_msg** %10, align 8
  %49 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 1
  store i32* %52, i32** %53, align 8
  %54 = load i32, i32* @MD5_MAC_LEN, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  store i64 %55, i64* %56, align 8
  %57 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %58 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32* @wpabuf_head_u8(i32 %59)
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 2
  store i32* %61, i32** %62, align 16
  %63 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %64 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @wpabuf_len(i32 %65)
  %67 = sext i32 %66 to i64
  %68 = sub i64 %67, 4
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  store i64 %68, i64* %69, align 16
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 3
  store i32* %70, i32** %71, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 3
  store i64 %72, i64* %73, align 8
  %74 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 0
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %76 = call i64 @md5_vector(i32 4, i32** %74, i64* %75, i32* %20)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %41
  %79 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %80 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @MD5_MAC_LEN, align 4
  %85 = call i64 @os_memcmp_const(i32* %20, i32* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78, %41
  %88 = load i32, i32* @MSG_INFO, align 4
  %89 = call i32 @wpa_printf(i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %91

90:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %91

91:                                               ; preds = %90, %87, %40, %23
  %92 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i64 @radius_msg_verify_msg_auth(%struct.radius_msg*, i32*, i64, i32*) #2

declare dso_local i32* @wpabuf_head_u8(i32) #2

declare dso_local i32 @wpabuf_len(i32) #2

declare dso_local i64 @md5_vector(i32, i32**, i64*, i32*) #2

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
