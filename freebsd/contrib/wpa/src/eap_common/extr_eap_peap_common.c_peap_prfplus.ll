; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_peap_common.c_peap_prfplus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_peap_common.c_peap_prfplus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @peap_prfplus(i32 %0, i8* %1, i64 %2, i8* %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca [2 x i8], align 1
  %25 = alloca [5 x i8*], align 16
  %26 = alloca [5 x i64], align 16
  %27 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  store i8 0, i8* %18, align 1
  %28 = load i32, i32* @SHA1_MAC_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %21, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %22, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = call i64 @os_strlen(i8* %32)
  store i64 %33, i64* %23, align 8
  %34 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i64 0, i64 0
  store i8* %31, i8** %34, align 16
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 0
  store i64 0, i64* %35, align 16
  %36 = load i8*, i8** %13, align 8
  %37 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i64 0, i64 1
  store i8* %36, i8** %37, align 8
  %38 = load i64, i64* %23, align 8
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 1
  store i64 %38, i64* %39, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i64 0, i64 2
  store i8* %40, i8** %41, align 16
  %42 = load i64, i64* %15, align 8
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 2
  store i64 %42, i64* %43, align 16
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %8
  %47 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 1
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i64 0, i64 3
  store i8* %18, i8** %49, align 8
  %50 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 3
  store i64 1, i64* %50, align 8
  %51 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0
  %52 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i64 0, i64 4
  store i8* %51, i8** %52, align 16
  %53 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 4
  store i64 2, i64* %53, align 16
  br label %64

54:                                               ; preds = %8
  %55 = load i64, i64* %17, align 8
  %56 = and i64 %55, 255
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0
  store i8 %57, i8* %58, align 1
  %59 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0
  %60 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i64 0, i64 3
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 3
  store i64 1, i64* %61, align 8
  %62 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i64 0, i64 4
  store i8* %18, i8** %62, align 16
  %63 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 4
  store i64 1, i64* %63, align 16
  br label %64

64:                                               ; preds = %54, %46
  store i64 0, i64* %19, align 8
  br label %65

65:                                               ; preds = %104, %64
  %66 = load i64, i64* %19, align 8
  %67 = load i64, i64* %17, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %108

69:                                               ; preds = %65
  %70 = load i8, i8* %18, align 1
  %71 = add i8 %70, 1
  store i8 %71, i8* %18, align 1
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* %19, align 8
  %74 = sub i64 %72, %73
  store i64 %74, i64* %20, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i64 0, i64 0
  %78 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 0
  %79 = call i64 @hmac_sha1_vector(i8* %75, i64 %76, i32 5, i8** %77, i64* %78, i8* %31)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %27, align 4
  br label %109

82:                                               ; preds = %69
  %83 = load i64, i64* %20, align 8
  %84 = load i32, i32* @SHA1_MAC_LEN, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp uge i64 %83, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load i8*, i8** %16, align 8
  %89 = load i64, i64* %19, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i32, i32* @SHA1_MAC_LEN, align 4
  %92 = sext i32 %91 to i64
  %93 = call i32 @os_memcpy(i8* %90, i8* %31, i64 %92)
  %94 = load i32, i32* @SHA1_MAC_LEN, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %19, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %19, align 8
  br label %104

98:                                               ; preds = %82
  %99 = load i8*, i8** %16, align 8
  %100 = load i64, i64* %19, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  %102 = load i64, i64* %20, align 8
  %103 = call i32 @os_memcpy(i8* %101, i8* %31, i64 %102)
  br label %108

104:                                              ; preds = %87
  %105 = load i32, i32* @SHA1_MAC_LEN, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 0
  store i64 %106, i64* %107, align 16
  br label %65

108:                                              ; preds = %98, %65
  store i32 0, i32* %9, align 4
  store i32 1, i32* %27, align 4
  br label %109

109:                                              ; preds = %108, %81
  %110 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_strlen(i8*) #2

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
