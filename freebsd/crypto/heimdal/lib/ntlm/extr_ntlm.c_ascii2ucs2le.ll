; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_ascii2ucs2le.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_ascii2ucs2le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i64, i8* }

@UINT_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.ntlm_buf*)* @ascii2ucs2le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ascii2ucs2le(i8* %0, i32 %1, %struct.ntlm_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ntlm_buf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ntlm_buf* %2, %struct.ntlm_buf** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = udiv i64 %14, 2
  %16 = load i64, i64* @UINT_MAX, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ERANGE, align 4
  store i32 %19, i32* %4, align 4
  br label %85

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  %22 = mul i64 %21, 2
  %23 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %24 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %26 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @malloc(i64 %27)
  %29 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %30 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %32 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %20
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %40 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %4, align 4
  br label %85

42:                                               ; preds = %35, %20
  %43 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %44 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %8, align 8
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %81, %42
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %11, align 1
  %55 = load i8, i8* %11, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 128
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load %struct.ntlm_buf*, %struct.ntlm_buf** %7, align 8
  %61 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %60)
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %4, align 4
  br label %85

63:                                               ; preds = %50
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i8, i8* %11, align 1
  %68 = call zeroext i8 @toupper(i8 zeroext %67)
  store i8 %68, i8* %11, align 1
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i8, i8* %11, align 1
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %10, align 8
  %73 = mul i64 %72, 2
  %74 = add i64 %73, 0
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 %70, i8* %75, align 1
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* %10, align 8
  %78 = mul i64 %77, 2
  %79 = add i64 %78, 1
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8 0, i8* %80, align 1
  br label %81

81:                                               ; preds = %69
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %10, align 8
  br label %46

84:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %59, %38, %18
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @heim_ntlm_free_buf(%struct.ntlm_buf*) #1

declare dso_local zeroext i8 @toupper(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
