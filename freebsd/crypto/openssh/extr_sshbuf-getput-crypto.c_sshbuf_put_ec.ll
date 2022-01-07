; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-crypto.c_sshbuf_put_ec.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-crypto.c_sshbuf_put_ec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSHBUF_MAX_ECPOINT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_put_ec(%struct.sshbuf* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @SSHBUF_MAX_ECPOINT, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = call i32* (...) @BN_CTX_new()
  store i32* %18, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %21, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %57

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = call i64 @EC_POINT_point2oct(i32* %23, i32* %24, i32 %25, i32* null, i64 0, i32* %26)
  store i64 %27, i64* %11, align 8
  %28 = load i32, i32* @SSHBUF_MAX_ECPOINT, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @BN_CTX_free(i32* %32)
  %34 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %57

35:                                               ; preds = %22
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %39 = load i64, i64* %11, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i64 @EC_POINT_point2oct(i32* %36, i32* %37, i32 %38, i32* %17, i64 %39, i32* %40)
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @BN_CTX_free(i32* %45)
  %47 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %57

48:                                               ; preds = %35
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @BN_CTX_free(i32* %49)
  %51 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @sshbuf_put_string(%struct.sshbuf* %51, i32* %17, i64 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @explicit_bzero(i32* %17, i64 %54)
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %57

57:                                               ; preds = %48, %44, %31, %20
  %58 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @BN_CTX_new(...) #2

declare dso_local i64 @EC_POINT_point2oct(i32*, i32*, i32, i32*, i64, i32*) #2

declare dso_local i32 @BN_CTX_free(i32*) #2

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i32*, i64) #2

declare dso_local i32 @explicit_bzero(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
