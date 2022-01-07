; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha1.c_hmac_sha1_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha1.c_hmac_sha1_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hmac_sha1_vector(i8* %0, i64 %1, i64 %2, i8** %3, i64* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [64 x i8], align 16
  %15 = alloca [20 x i8], align 16
  %16 = alloca [6 x i8*], align 16
  %17 = alloca [6 x i64], align 16
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i8** %3, i8*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i8* %5, i8** %13, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ugt i64 %20, 5
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %126

23:                                               ; preds = %6
  %24 = load i64, i64* %9, align 8
  %25 = icmp ugt i64 %24, 64
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %28 = call i32 @sha1_vector(i32 1, i8** %8, i64* %9, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %126

31:                                               ; preds = %26
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  store i8* %32, i8** %8, align 8
  store i64 20, i64* %9, align 8
  br label %33

33:                                               ; preds = %31, %23
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %35 = call i32 @os_memset(i8* %34, i32 0, i32 64)
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @os_memcpy(i8* %36, i8* %37, i64 %38)
  store i64 0, i64* %18, align 8
  br label %40

40:                                               ; preds = %50, %33
  %41 = load i64, i64* %18, align 8
  %42 = icmp ult i64 %41, 64
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i64, i64* %18, align 8
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = xor i32 %47, 54
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 1
  br label %50

50:                                               ; preds = %43
  %51 = load i64, i64* %18, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %18, align 8
  br label %40

53:                                               ; preds = %40
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %55 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 0
  store i8* %54, i8** %55, align 16
  %56 = getelementptr inbounds [6 x i64], [6 x i64]* %17, i64 0, i64 0
  store i64 64, i64* %56, align 16
  store i64 0, i64* %18, align 8
  br label %57

57:                                               ; preds = %76, %53
  %58 = load i64, i64* %18, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = load i8**, i8*** %11, align 8
  %63 = load i64, i64* %18, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* %18, align 8
  %67 = add i64 %66, 1
  %68 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 %67
  store i8* %65, i8** %68, align 8
  %69 = load i64*, i64** %12, align 8
  %70 = load i64, i64* %18, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %18, align 8
  %74 = add i64 %73, 1
  %75 = getelementptr inbounds [6 x i64], [6 x i64]* %17, i64 0, i64 %74
  store i64 %72, i64* %75, align 8
  br label %76

76:                                               ; preds = %61
  %77 = load i64, i64* %18, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %18, align 8
  br label %57

79:                                               ; preds = %57
  %80 = load i64, i64* %10, align 8
  %81 = add i64 1, %80
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 0
  %84 = getelementptr inbounds [6 x i64], [6 x i64]* %17, i64 0, i64 0
  %85 = load i8*, i8** %13, align 8
  %86 = call i32 @sha1_vector(i32 %82, i8** %83, i64* %84, i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store i32 -1, i32* %7, align 4
  br label %126

89:                                               ; preds = %79
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %91 = call i32 @os_memset(i8* %90, i32 0, i32 64)
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %93 = load i8*, i8** %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @os_memcpy(i8* %92, i8* %93, i64 %94)
  store i64 0, i64* %18, align 8
  br label %96

96:                                               ; preds = %106, %89
  %97 = load i64, i64* %18, align 8
  %98 = icmp ult i64 %97, 64
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load i64, i64* %18, align 8
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = xor i32 %103, 92
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %101, align 1
  br label %106

106:                                              ; preds = %99
  %107 = load i64, i64* %18, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %18, align 8
  br label %96

109:                                              ; preds = %96
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %111 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 0
  store i8* %110, i8** %111, align 16
  %112 = getelementptr inbounds [6 x i64], [6 x i64]* %17, i64 0, i64 0
  store i64 64, i64* %112, align 16
  %113 = load i8*, i8** %13, align 8
  %114 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 1
  store i8* %113, i8** %114, align 8
  %115 = load i64, i64* @SHA1_MAC_LEN, align 8
  %116 = getelementptr inbounds [6 x i64], [6 x i64]* %17, i64 0, i64 1
  store i64 %115, i64* %116, align 8
  %117 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 0
  %118 = getelementptr inbounds [6 x i64], [6 x i64]* %17, i64 0, i64 0
  %119 = load i8*, i8** %13, align 8
  %120 = call i32 @sha1_vector(i32 2, i8** %117, i64* %118, i8* %119)
  store i32 %120, i32* %19, align 4
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %122 = call i32 @forced_memzero(i8* %121, i32 64)
  %123 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %124 = call i32 @forced_memzero(i8* %123, i32 20)
  %125 = load i32, i32* %19, align 4
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %109, %88, %30, %22
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local i32 @sha1_vector(i32, i8**, i64*, i8*) #1

declare dso_local i32 @os_memset(i8*, i32, i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

declare dso_local i32 @forced_memzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
