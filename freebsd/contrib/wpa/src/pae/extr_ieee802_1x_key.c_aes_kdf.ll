; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_key.c_aes_kdf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_key.c_aes_kdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i8*, i32, i32, i8*)* @aes_kdf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_kdf(i8* %0, i64 %1, i8* %2, i8* %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 128, i32* %16, align 4
  store i32 8, i32* %17, align 4
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 128
  br i1 %27, label %28, label %32

28:                                               ; preds = %7
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 256
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 -1, i32* %8, align 4
  br label %122

32:                                               ; preds = %28, %7
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @os_strlen(i8* %33)
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %35, 7
  %37 = sdiv i32 %36, 8
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %14, align 4
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, 7
  %41 = sdiv i32 %40, 8
  store i32 %41, i32* %22, align 4
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %21, align 4
  %44 = add nsw i32 %42, %43
  %45 = add nsw i32 %44, 4
  store i32 %45, i32* %23, align 4
  %46 = load i8*, i8** %15, align 8
  %47 = load i32, i32* %22, align 4
  %48 = call i32 @os_memset(i8* %46, i32 0, i32 %47)
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 128
  %51 = sub nsw i32 %50, 1
  %52 = sdiv i32 %51, 128
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = icmp sgt i32 %53, 255
  br i1 %54, label %55, label %56

55:                                               ; preds = %32
  store i32 -1, i32* %8, align 4
  br label %122

56:                                               ; preds = %32
  %57 = load i32, i32* %23, align 4
  %58 = call i8* @os_zalloc(i32 %57)
  store i8* %58, i8** %24, align 8
  %59 = load i8*, i8** %24, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 -1, i32* %8, align 4
  br label %122

62:                                               ; preds = %56
  %63 = load i8*, i8** %24, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* %20, align 4
  %67 = call i32 @os_memcpy(i8* %64, i8* %65, i32 %66)
  %68 = load i8*, i8** %24, align 8
  %69 = load i32, i32* %20, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* %21, align 4
  %75 = call i32 @os_memcpy(i8* %72, i8* %73, i32 %74)
  %76 = load i8*, i8** %24, align 8
  %77 = load i32, i32* %23, align 4
  %78 = sub nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @WPA_PUT_BE16(i8* %80, i32 %81)
  store i32 0, i32* %18, align 4
  br label %83

83:                                               ; preds = %116, %62
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %119

87:                                               ; preds = %83
  %88 = load i32, i32* %18, align 4
  %89 = add nsw i32 %88, 1
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %24, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  store i8 %90, i8* %92, align 1
  %93 = load i64, i64* %10, align 8
  %94 = icmp eq i64 %93, 128
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** %24, align 8
  %98 = load i32, i32* %23, align 4
  %99 = load i8*, i8** %15, align 8
  %100 = call i32 @omac1_aes_128(i8* %96, i8* %97, i32 %98, i8* %99)
  store i32 %100, i32* %25, align 4
  br label %107

101:                                              ; preds = %87
  %102 = load i8*, i8** %9, align 8
  %103 = load i8*, i8** %24, align 8
  %104 = load i32, i32* %23, align 4
  %105 = load i8*, i8** %15, align 8
  %106 = call i32 @omac1_aes_256(i8* %102, i8* %103, i32 %104, i8* %105)
  store i32 %106, i32* %25, align 4
  br label %107

107:                                              ; preds = %101, %95
  %108 = load i32, i32* %25, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i8*, i8** %24, align 8
  %112 = call i32 @os_free(i8* %111)
  store i32 -1, i32* %8, align 4
  br label %122

113:                                              ; preds = %107
  %114 = load i8*, i8** %15, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 16
  store i8* %115, i8** %15, align 8
  br label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %83

119:                                              ; preds = %83
  %120 = load i8*, i8** %24, align 8
  %121 = call i32 @os_free(i8* %120)
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %119, %110, %61, %55, %31
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @os_memset(i8*, i32, i32) #1

declare dso_local i8* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @WPA_PUT_BE16(i8*, i32) #1

declare dso_local i32 @omac1_aes_128(i8*, i8*, i32, i8*) #1

declare dso_local i32 @omac1_aes_256(i8*, i8*, i32, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
