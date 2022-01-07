; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sake_common.c_eap_sake_kdf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sake_common.c_eap_sake_kdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i8*, i64, i8*, i64, i8*, i64)* @eap_sake_kdf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_sake_kdf(i8* %0, i64 %1, i8* %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8, align 1
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca [4 x i8*], align 16
  %27 = alloca [4 x i64], align 16
  %28 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i64 %1, i64* %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  store i8 0, i8* %20, align 1
  %29 = load i32, i32* @SHA1_MAC_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %23, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %24, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @os_strlen(i8* %33)
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %25, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds [4 x i8*], [4 x i8*]* %26, i64 0, i64 0
  store i8* %37, i8** %38, align 16
  %39 = load i64, i64* %25, align 8
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %27, i64 0, i64 0
  store i64 %39, i64* %40, align 16
  %41 = load i8*, i8** %14, align 8
  %42 = getelementptr inbounds [4 x i8*], [4 x i8*]* %26, i64 0, i64 1
  store i8* %41, i8** %42, align 8
  %43 = load i64, i64* %15, align 8
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %27, i64 0, i64 1
  store i64 %43, i64* %44, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = getelementptr inbounds [4 x i8*], [4 x i8*]* %26, i64 0, i64 2
  store i8* %45, i8** %46, align 16
  %47 = load i64, i64* %17, align 8
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %27, i64 0, i64 2
  store i64 %47, i64* %48, align 16
  %49 = getelementptr inbounds [4 x i8*], [4 x i8*]* %26, i64 0, i64 3
  store i8* %20, i8** %49, align 8
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %27, i64 0, i64 3
  store i64 1, i64* %50, align 8
  store i64 0, i64* %21, align 8
  br label %51

51:                                               ; preds = %93, %9
  %52 = load i64, i64* %21, align 8
  %53 = load i64, i64* %19, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %51
  %56 = load i64, i64* %19, align 8
  %57 = load i64, i64* %21, align 8
  %58 = sub i64 %56, %57
  store i64 %58, i64* %22, align 8
  %59 = load i64, i64* %22, align 8
  %60 = load i32, i32* @SHA1_MAC_LEN, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp uge i64 %59, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %55
  %64 = load i8*, i8** %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds [4 x i8*], [4 x i8*]* %26, i64 0, i64 0
  %67 = getelementptr inbounds [4 x i64], [4 x i64]* %27, i64 0, i64 0
  %68 = load i8*, i8** %18, align 8
  %69 = load i64, i64* %21, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = call i64 @hmac_sha1_vector(i8* %64, i64 %65, i32 4, i8** %66, i64* %67, i8* %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %28, align 4
  br label %97

74:                                               ; preds = %63
  %75 = load i32, i32* @SHA1_MAC_LEN, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %21, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %21, align 8
  br label %93

79:                                               ; preds = %55
  %80 = load i8*, i8** %11, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds [4 x i8*], [4 x i8*]* %26, i64 0, i64 0
  %83 = getelementptr inbounds [4 x i64], [4 x i64]* %27, i64 0, i64 0
  %84 = call i64 @hmac_sha1_vector(i8* %80, i64 %81, i32 4, i8** %82, i64* %83, i8* %32)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %28, align 4
  br label %97

87:                                               ; preds = %79
  %88 = load i8*, i8** %18, align 8
  %89 = load i64, i64* %21, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i64, i64* %22, align 8
  %92 = call i32 @os_memcpy(i8* %90, i8* %32, i64 %91)
  br label %96

93:                                               ; preds = %74
  %94 = load i8, i8* %20, align 1
  %95 = add i8 %94, 1
  store i8 %95, i8* %20, align 1
  br label %51

96:                                               ; preds = %87, %51
  store i32 0, i32* %10, align 4
  store i32 1, i32* %28, align 4
  br label %97

97:                                               ; preds = %96, %86, %73
  %98 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %10, align 4
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_strlen(i8*) #2

declare dso_local i64 @hmac_sha1_vector(i8*, i64, i32, i8**, i64*, i8*) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
