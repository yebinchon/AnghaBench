; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_digest-openssl.c_ssh_digest_copy_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_digest-openssl.c_ssh_digest_copy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_digest_ctx = type { i64, i32 }

@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_digest_copy_state(%struct.ssh_digest_ctx* %0, %struct.ssh_digest_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh_digest_ctx*, align 8
  %5 = alloca %struct.ssh_digest_ctx*, align 8
  store %struct.ssh_digest_ctx* %0, %struct.ssh_digest_ctx** %4, align 8
  store %struct.ssh_digest_ctx* %1, %struct.ssh_digest_ctx** %5, align 8
  %6 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.ssh_digest_ctx, %struct.ssh_digest_ctx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.ssh_digest_ctx, %struct.ssh_digest_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.ssh_digest_ctx, %struct.ssh_digest_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.ssh_digest_ctx, %struct.ssh_digest_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @EVP_MD_CTX_copy_ex(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %24, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @EVP_MD_CTX_copy_ex(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
