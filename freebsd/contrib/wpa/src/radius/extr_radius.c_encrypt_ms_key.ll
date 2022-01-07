; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_encrypt_ms_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_encrypt_ms_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MD5_MAC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i32, i64*, i64*, i64, i64*, i64*)* @encrypt_ms_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encrypt_ms_key(i64* %0, i64 %1, i32 %2, i64* %3, i64* %4, i64 %5, i64* %6, i64* %7) #0 {
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca [2 x i64], align 16
  %23 = alloca i64*, align 8
  %24 = alloca [3 x i64*], align 16
  %25 = alloca [3 x i64], align 16
  store i64* %0, i64** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  store i64* %7, i64** %16, align 8
  store i32 1, i32* %19, align 4
  %26 = load i32, i32* @MD5_MAC_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %20, align 8
  %29 = alloca i64, i64 %27, align 16
  store i64 %27, i64* %21, align 8
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %22, i64 0, i64 0
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @WPA_PUT_BE16(i64* %30, i32 %31)
  %33 = load i64, i64* %10, align 8
  %34 = add i64 1, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = and i32 %36, 15
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %8
  %40 = load i32, i32* %18, align 4
  %41 = and i32 %40, 240
  %42 = add nsw i32 %41, 16
  store i32 %42, i32* %18, align 4
  br label %43

43:                                               ; preds = %39, %8
  %44 = load i64*, i64** %15, align 8
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @os_memset(i64* %44, i32 0, i32 %45)
  %47 = load i64, i64* %10, align 8
  %48 = load i64*, i64** %15, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  store i64 %47, i64* %49, align 8
  %50 = load i64*, i64** %15, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64*, i64** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @os_memcpy(i64* %51, i64* %52, i64 %53)
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64*, i64** %16, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i64*, i64** %15, align 8
  store i64* %58, i64** %23, align 8
  br label %59

59:                                               ; preds = %112, %43
  %60 = load i32, i32* %18, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %116

62:                                               ; preds = %59
  %63 = load i64*, i64** %13, align 8
  %64 = getelementptr inbounds [3 x i64*], [3 x i64*]* %24, i64 0, i64 0
  store i64* %63, i64** %64, align 16
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds [3 x i64], [3 x i64]* %25, i64 0, i64 0
  store i64 %65, i64* %66, align 16
  %67 = load i32, i32* %19, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load i64*, i64** %12, align 8
  %71 = getelementptr inbounds [3 x i64*], [3 x i64*]* %24, i64 0, i64 1
  store i64* %70, i64** %71, align 8
  %72 = load i32, i32* @MD5_MAC_LEN, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [3 x i64], [3 x i64]* %25, i64 0, i64 1
  store i64 %73, i64* %74, align 8
  %75 = getelementptr inbounds [2 x i64], [2 x i64]* %22, i64 0, i64 0
  %76 = getelementptr inbounds [3 x i64*], [3 x i64*]* %24, i64 0, i64 2
  store i64* %75, i64** %76, align 16
  %77 = getelementptr inbounds [3 x i64], [3 x i64]* %25, i64 0, i64 2
  store i64 16, i64* %77, align 16
  br label %88

78:                                               ; preds = %62
  %79 = load i64*, i64** %23, align 8
  %80 = load i32, i32* @MD5_MAC_LEN, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 0, %81
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  %84 = getelementptr inbounds [3 x i64*], [3 x i64*]* %24, i64 0, i64 1
  store i64* %83, i64** %84, align 8
  %85 = load i32, i32* @MD5_MAC_LEN, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x i64], [3 x i64]* %25, i64 0, i64 1
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %78, %69
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 3, i32 2
  %93 = getelementptr inbounds [3 x i64*], [3 x i64*]* %24, i64 0, i64 0
  %94 = getelementptr inbounds [3 x i64], [3 x i64]* %25, i64 0, i64 0
  %95 = call i32 @md5_vector(i32 %92, i64** %93, i64* %94, i64* %29)
  store i32 0, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %96

96:                                               ; preds = %109, %88
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* @MD5_MAC_LEN, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %29, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %23, align 8
  %106 = getelementptr inbounds i64, i64* %105, i32 1
  store i64* %106, i64** %23, align 8
  %107 = load i64, i64* %105, align 8
  %108 = xor i64 %107, %104
  store i64 %108, i64* %105, align 8
  br label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %17, align 4
  br label %96

112:                                              ; preds = %96
  %113 = load i32, i32* @MD5_MAC_LEN, align 4
  %114 = load i32, i32* %18, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %18, align 4
  br label %59

116:                                              ; preds = %59
  %117 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %117)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @WPA_PUT_BE16(i64*, i32) #2

declare dso_local i32 @os_memset(i64*, i32, i32) #2

declare dso_local i32 @os_memcpy(i64*, i64*, i64) #2

declare dso_local i32 @md5_vector(i32, i64**, i64*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
