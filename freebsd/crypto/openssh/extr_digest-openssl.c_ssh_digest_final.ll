; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_digest-openssl.c_ssh_digest_final.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_digest-openssl.c_ssh_digest_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_digest_ctx = type { i32, i32 }
%struct.ssh_digest = type { i64 }

@UINT_MAX = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_digest_final(%struct.ssh_digest_ctx* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssh_digest_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ssh_digest*, align 8
  %9 = alloca i64, align 8
  store %struct.ssh_digest_ctx* %0, %struct.ssh_digest_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.ssh_digest_ctx, %struct.ssh_digest_ctx* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ssh_digest* @ssh_digest_by_alg(i32 %12)
  store %struct.ssh_digest* %13, %struct.ssh_digest** %8, align 8
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.ssh_digest*, %struct.ssh_digest** %8, align 8
  %16 = icmp eq %struct.ssh_digest* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @UINT_MAX, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %3
  %22 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %22, i32* %4, align 4
  br label %49

23:                                               ; preds = %17
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.ssh_digest*, %struct.ssh_digest** %8, align 8
  %26 = getelementptr inbounds %struct.ssh_digest, %struct.ssh_digest* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %30, i32* %4, align 4
  br label %49

31:                                               ; preds = %23
  %32 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.ssh_digest_ctx, %struct.ssh_digest_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @EVP_DigestFinal_ex(i32 %34, i32* %35, i64* %9)
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %39, i32* %4, align 4
  br label %49

40:                                               ; preds = %31
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.ssh_digest*, %struct.ssh_digest** %8, align 8
  %43 = getelementptr inbounds %struct.ssh_digest, %struct.ssh_digest* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %46, %38, %29, %21
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.ssh_digest* @ssh_digest_by_alg(i32) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
