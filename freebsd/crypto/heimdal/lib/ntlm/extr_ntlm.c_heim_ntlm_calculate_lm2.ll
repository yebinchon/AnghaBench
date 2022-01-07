; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_calculate_lm2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_calculate_lm2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i32, i32* }

@HNTLM_ERR_RAND = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_ntlm_calculate_lm2(i8* %0, i64 %1, i8* %2, i8* %3, i8* %4, i8* %5, %struct.ntlm_buf* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ntlm_buf*, align 8
  %16 = alloca [8 x i8], align 1
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.ntlm_buf* %6, %struct.ntlm_buf** %15, align 8
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %19 = call i32 @RAND_bytes(i8* %18, i32 8)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i32, i32* @HNTLM_ERR_RAND, align 4
  store i32 %22, i32* %8, align 4
  br label %60

23:                                               ; preds = %7
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = call i32 @heim_ntlm_ntlmv2_key(i8* %24, i64 %25, i8* %26, i8* %27, i8* %28)
  %30 = call i32* @malloc(i32 24)
  %31 = load %struct.ntlm_buf*, %struct.ntlm_buf** %15, align 8
  %32 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.ntlm_buf*, %struct.ntlm_buf** %15, align 8
  %34 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %8, align 4
  br label %60

39:                                               ; preds = %23
  %40 = load %struct.ntlm_buf*, %struct.ntlm_buf** %15, align 8
  %41 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %40, i32 0, i32 0
  store i32 24, i32* %41, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %44 = load i8*, i8** %13, align 8
  %45 = load %struct.ntlm_buf*, %struct.ntlm_buf** %15, align 8
  %46 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @heim_ntlm_derive_ntlm2_sess(i8* %42, i8* %43, i32 8, i8* %44, i32* %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* %17, align 4
  store i32 %52, i32* %8, align 4
  br label %60

53:                                               ; preds = %39
  %54 = load %struct.ntlm_buf*, %struct.ntlm_buf** %15, align 8
  %55 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 16
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %59 = call i32 @memcpy(i32* %57, i8* %58, i32 8)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %53, %51, %37, %21
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @heim_ntlm_ntlmv2_key(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @heim_ntlm_derive_ntlm2_sess(i8*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
