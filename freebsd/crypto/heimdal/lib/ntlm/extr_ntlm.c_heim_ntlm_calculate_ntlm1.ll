; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_calculate_ntlm1.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_calculate_ntlm1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i32, i32* }

@MD4_DIGEST_LENGTH = common dso_local global i64 0, align 8
@HNTLM_ERR_INVALID_LENGTH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_ntlm_calculate_ntlm1(i8* %0, i64 %1, i8* %2, %struct.ntlm_buf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ntlm_buf*, align 8
  %10 = alloca [21 x i8], align 16
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.ntlm_buf* %3, %struct.ntlm_buf** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @MD4_DIGEST_LENGTH, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @HNTLM_ERR_INVALID_LENGTH, align 4
  store i32 %16, i32* %5, align 4
  br label %80

17:                                               ; preds = %4
  %18 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @memcpy(i8* %18, i8* %19, i64 %20)
  %22 = load i64, i64* @MD4_DIGEST_LENGTH, align 8
  %23 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 %22
  %24 = load i64, i64* @MD4_DIGEST_LENGTH, align 8
  %25 = sub i64 21, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memset(i8* %23, i32 0, i32 %26)
  %28 = call i32* @malloc(i32 24)
  %29 = load %struct.ntlm_buf*, %struct.ntlm_buf** %9, align 8
  %30 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.ntlm_buf*, %struct.ntlm_buf** %9, align 8
  %32 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %17
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %5, align 4
  br label %80

37:                                               ; preds = %17
  %38 = load %struct.ntlm_buf*, %struct.ntlm_buf** %9, align 8
  %39 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %38, i32 0, i32 0
  store i32 24, i32* %39, align 8
  %40 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.ntlm_buf*, %struct.ntlm_buf** %9, align 8
  %43 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = call i32 @splitandenc(i8* %40, i8* %41, i8* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %76

51:                                               ; preds = %37
  %52 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 7
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.ntlm_buf*, %struct.ntlm_buf** %9, align 8
  %55 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = getelementptr inbounds i8, i8* %57, i64 8
  %59 = call i32 @splitandenc(i8* %52, i8* %53, i8* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %76

63:                                               ; preds = %51
  %64 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 14
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.ntlm_buf*, %struct.ntlm_buf** %9, align 8
  %67 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = bitcast i32* %68 to i8*
  %70 = getelementptr inbounds i8, i8* %69, i64 16
  %71 = call i32 @splitandenc(i8* %64, i8* %65, i8* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %76

75:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %80

76:                                               ; preds = %74, %62, %50
  %77 = load %struct.ntlm_buf*, %struct.ntlm_buf** %9, align 8
  %78 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %77)
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %75, %35, %15
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @splitandenc(i8*, i8*, i8*) #1

declare dso_local i32 @heim_ntlm_free_buf(%struct.ntlm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
