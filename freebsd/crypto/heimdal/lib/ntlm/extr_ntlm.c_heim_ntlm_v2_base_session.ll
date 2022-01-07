; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_v2_base_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_v2_base_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i32, i32* }

@HNTLM_ERR_INVALID_LENGTH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_ntlm_v2_base_session(i8* %0, i64 %1, %struct.ntlm_buf* %2, %struct.ntlm_buf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ntlm_buf*, align 8
  %9 = alloca %struct.ntlm_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ntlm_buf* %2, %struct.ntlm_buf** %8, align 8
  store %struct.ntlm_buf* %3, %struct.ntlm_buf** %9, align 8
  %12 = load %struct.ntlm_buf*, %struct.ntlm_buf** %8, align 8
  %13 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %14, 16
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @HNTLM_ERR_INVALID_LENGTH, align 4
  store i32 %17, i32* %5, align 4
  br label %56

18:                                               ; preds = %4
  %19 = call i32* @malloc(i32 16)
  %20 = load %struct.ntlm_buf*, %struct.ntlm_buf** %9, align 8
  %21 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load %struct.ntlm_buf*, %struct.ntlm_buf** %9, align 8
  %23 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %5, align 4
  br label %56

28:                                               ; preds = %18
  %29 = load %struct.ntlm_buf*, %struct.ntlm_buf** %9, align 8
  %30 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %29, i32 0, i32 0
  store i32 16, i32* %30, align 8
  %31 = call i32* (...) @HMAC_CTX_new()
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.ntlm_buf*, %struct.ntlm_buf** %9, align 8
  %36 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %5, align 4
  br label %56

38:                                               ; preds = %28
  %39 = load i32*, i32** %11, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 (...) @EVP_md5()
  %43 = call i32 @HMAC_Init_ex(i32* %39, i8* %40, i64 %41, i32 %42, i32* null)
  %44 = load i32*, i32** %11, align 8
  %45 = load %struct.ntlm_buf*, %struct.ntlm_buf** %8, align 8
  %46 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @HMAC_Update(i32* %44, i32* %47, i32 16)
  %49 = load i32*, i32** %11, align 8
  %50 = load %struct.ntlm_buf*, %struct.ntlm_buf** %9, align 8
  %51 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @HMAC_Final(i32* %49, i32* %52, i32* %10)
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @HMAC_CTX_free(i32* %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %38, %34, %26, %16
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32* @HMAC_CTX_new(...) #1

declare dso_local i32 @heim_ntlm_free_buf(%struct.ntlm_buf*) #1

declare dso_local i32 @HMAC_Init_ex(i32*, i8*, i64, i32, i32*) #1

declare dso_local i32 @EVP_md5(...) #1

declare dso_local i32 @HMAC_Update(i32*, i32*, i32) #1

declare dso_local i32 @HMAC_Final(i32*, i32*, i32*) #1

declare dso_local i32 @HMAC_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
