; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-crypto.c_sshbuf_put_bignum2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-crypto.c_sshbuf_put_bignum2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSHBUF_MAX_BIGNUM = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_put_bignum2(%struct.sshbuf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @SSHBUF_MAX_BIGNUM, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @BN_num_bytes(i32* %17)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SSHBUF_MAX_BIGNUM, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %2
  %26 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %65

27:                                               ; preds = %21
  store i32 0, i32* %16, align 16
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %16, i64 1
  %30 = call i32 @BN_bn2bin(i32* %28, i32* %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %65

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = getelementptr inbounds i32, i32* %16, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 128
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %38, %35
  %45 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %46 = getelementptr inbounds i32, i32* %16, i64 1
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @sshbuf_put_string(%struct.sshbuf* %45, i32* %50, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = mul nuw i64 4, %14
  %58 = trunc i64 %57 to i32
  %59 = call i32 @explicit_bzero(i32* %16, i32 %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %65

61:                                               ; preds = %44
  %62 = mul nuw i64 4, %14
  %63 = trunc i64 %62 to i32
  %64 = call i32 @explicit_bzero(i32* %16, i32 %63)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %56, %33, %25
  %66 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BN_num_bytes(i32*) #2

declare dso_local i32 @BN_bn2bin(i32*, i32*) #2

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i32*, i32) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
