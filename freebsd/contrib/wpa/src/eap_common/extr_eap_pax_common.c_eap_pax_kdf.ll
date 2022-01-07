; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_pax_common.c_eap_pax_kdf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_pax_common.c_eap_pax_kdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@EAP_PAX_MAC_LEN = common dso_local global i64 0, align 8
@EAP_PAX_MAC_HMAC_SHA1_128 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_pax_kdf(i64 %0, i64* %1, i64 %2, i8* %3, i64* %4, i64 %5, i64 %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64*, align 8
  %22 = alloca [3 x i64*], align 16
  %23 = alloca [3 x i64], align 16
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store i64 %0, i64* %10, align 8
  store i64* %1, i64** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64* %4, i64** %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64* %7, i64** %17, align 8
  %28 = load i32, i32* @SHA1_MAC_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %18, align 8
  %31 = alloca i64, i64 %29, align 16
  store i64 %29, i64* %19, align 8
  %32 = load i64, i64* %16, align 8
  %33 = load i64, i64* @EAP_PAX_MAC_LEN, align 8
  %34 = add i64 %32, %33
  %35 = sub i64 %34, 1
  %36 = load i64, i64* @EAP_PAX_MAC_LEN, align 8
  %37 = udiv i64 %35, %36
  store i64 %37, i64* %24, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %8
  %41 = load i64, i64* %24, align 8
  %42 = icmp uge i64 %41, 255
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %8
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %26, align 4
  br label %99

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @EAP_PAX_MAC_HMAC_SHA1_128, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %26, align 4
  br label %99

49:                                               ; preds = %44
  %50 = load i8*, i8** %13, align 8
  %51 = bitcast i8* %50 to i64*
  %52 = getelementptr inbounds [3 x i64*], [3 x i64*]* %22, i64 0, i64 0
  store i64* %51, i64** %52, align 16
  %53 = load i8*, i8** %13, align 8
  %54 = call i64 @os_strlen(i8* %53)
  %55 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 0
  store i64 %54, i64* %55, align 16
  %56 = load i64*, i64** %14, align 8
  %57 = getelementptr inbounds [3 x i64*], [3 x i64*]* %22, i64 0, i64 1
  store i64* %56, i64** %57, align 8
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 1
  store i64 %58, i64* %59, align 8
  %60 = getelementptr inbounds [3 x i64*], [3 x i64*]* %22, i64 0, i64 2
  store i64* %20, i64** %60, align 16
  %61 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 2
  store i64 1, i64* %61, align 16
  %62 = load i64*, i64** %17, align 8
  store i64* %62, i64** %21, align 8
  %63 = load i64, i64* %16, align 8
  store i64 %63, i64* %25, align 8
  store i64 1, i64* %20, align 8
  br label %64

64:                                               ; preds = %95, %49
  %65 = load i64, i64* %20, align 8
  %66 = load i64, i64* %24, align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %98

68:                                               ; preds = %64
  %69 = load i64, i64* %25, align 8
  %70 = load i64, i64* @EAP_PAX_MAC_LEN, align 8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* @EAP_PAX_MAC_LEN, align 8
  br label %76

74:                                               ; preds = %68
  %75 = load i64, i64* %25, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64 [ %73, %72 ], [ %75, %74 ]
  store i64 %77, i64* %27, align 8
  %78 = load i64*, i64** %11, align 8
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds [3 x i64*], [3 x i64*]* %22, i64 0, i64 0
  %81 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 0
  %82 = call i64 @hmac_sha1_vector(i64* %78, i64 %79, i32 3, i64** %80, i64* %81, i64* %31)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %26, align 4
  br label %99

85:                                               ; preds = %76
  %86 = load i64*, i64** %21, align 8
  %87 = load i64, i64* %27, align 8
  %88 = call i32 @os_memcpy(i64* %86, i64* %31, i64 %87)
  %89 = load i64, i64* %27, align 8
  %90 = load i64*, i64** %21, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 %89
  store i64* %91, i64** %21, align 8
  %92 = load i64, i64* %27, align 8
  %93 = load i64, i64* %25, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %25, align 8
  br label %95

95:                                               ; preds = %85
  %96 = load i64, i64* %20, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %20, align 8
  br label %64

98:                                               ; preds = %64
  store i32 0, i32* %9, align 4
  store i32 1, i32* %26, align 4
  br label %99

99:                                               ; preds = %98, %84, %48, %43
  %100 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %9, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i64 @hmac_sha1_vector(i64*, i64, i32, i64**, i64*, i64*) #2

declare dso_local i32 @os_memcpy(i64*, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
