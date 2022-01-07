; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-crypto.c_sshbuf_put_bignum1.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-crypto.c_sshbuf_put_bignum1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSHBUF_MAX_BIGNUM = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_put_bignum1(%struct.sshbuf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @BN_num_bits(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 7
  %17 = sdiv i32 %16, 8
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load i32, i32* @SSHBUF_MAX_BIGNUM, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* @SSHBUF_MAX_BIGNUM, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %2
  %31 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %66

32:                                               ; preds = %25
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @BN_bn2bin(i32* %33, i32* %22)
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %66

40:                                               ; preds = %32
  %41 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 2
  %44 = call i32 @sshbuf_reserve(%struct.sshbuf* %41, i64 %43, i32** %11)
  store i32 %44, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = mul nuw i64 4, %20
  %48 = trunc i64 %47 to i32
  %49 = call i32 @explicit_bzero(i32* %22, i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %66

51:                                               ; preds = %40
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @POKE_U16(i32* %52, i32 %53)
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @memcpy(i32* %59, i32* %22, i64 %60)
  br label %62

62:                                               ; preds = %57, %51
  %63 = mul nuw i64 4, %20
  %64 = trunc i64 %63 to i32
  %65 = call i32 @explicit_bzero(i32* %22, i32 %64)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %66

66:                                               ; preds = %62, %46, %38, %30
  %67 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @BN_num_bits(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @BN_bn2bin(i32*, i32*) #1

declare dso_local i32 @sshbuf_reserve(%struct.sshbuf*, i64, i32**) #1

declare dso_local i32 @explicit_bzero(i32*, i32) #1

declare dso_local i32 @POKE_U16(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
