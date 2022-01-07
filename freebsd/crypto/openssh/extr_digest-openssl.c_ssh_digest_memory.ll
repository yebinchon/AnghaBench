; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_digest-openssl.c_ssh_digest_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_digest-openssl.c_ssh_digest_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_digest = type { i64, i32 (...)* }

@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_digest_memory(i32 %0, i8* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ssh_digest*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.ssh_digest* @ssh_digest_by_alg(i32 %14)
  store %struct.ssh_digest* %15, %struct.ssh_digest** %12, align 8
  %16 = load %struct.ssh_digest*, %struct.ssh_digest** %12, align 8
  %17 = icmp eq %struct.ssh_digest* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %19, i32* %6, align 4
  br label %48

20:                                               ; preds = %5
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @UINT_MAX, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %25, i32* %6, align 4
  br label %48

26:                                               ; preds = %20
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.ssh_digest*, %struct.ssh_digest** %12, align 8
  %29 = getelementptr inbounds %struct.ssh_digest, %struct.ssh_digest* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %33, i32* %6, align 4
  br label %48

34:                                               ; preds = %26
  %35 = load i64, i64* %11, align 8
  store i64 %35, i64* %13, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load %struct.ssh_digest*, %struct.ssh_digest** %12, align 8
  %40 = getelementptr inbounds %struct.ssh_digest, %struct.ssh_digest* %39, i32 0, i32 1
  %41 = load i32 (...)*, i32 (...)** %40, align 8
  %42 = call i32 (...) %41()
  %43 = call i32 @EVP_Digest(i8* %36, i64 %37, i32* %38, i64* %13, i32 %42, i32* null)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %46, i32* %6, align 4
  br label %48

47:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %45, %32, %24, %18
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.ssh_digest* @ssh_digest_by_alg(i32) #1

declare dso_local i32 @EVP_Digest(i8*, i64, i32*, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
