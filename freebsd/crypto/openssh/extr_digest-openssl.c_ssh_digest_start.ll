; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_digest-openssl.c_ssh_digest_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_digest-openssl.c_ssh_digest_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_digest_ctx = type { i32, i32* }
%struct.ssh_digest = type { i32 (...)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ssh_digest_ctx* @ssh_digest_start(i32 %0) #0 {
  %2 = alloca %struct.ssh_digest_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh_digest*, align 8
  %5 = alloca %struct.ssh_digest_ctx*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ssh_digest* @ssh_digest_by_alg(i32 %6)
  store %struct.ssh_digest* %7, %struct.ssh_digest** %4, align 8
  %8 = load %struct.ssh_digest*, %struct.ssh_digest** %4, align 8
  %9 = icmp eq %struct.ssh_digest* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = call %struct.ssh_digest_ctx* @calloc(i32 1, i32 16)
  store %struct.ssh_digest_ctx* %11, %struct.ssh_digest_ctx** %5, align 8
  %12 = icmp eq %struct.ssh_digest_ctx* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %1
  store %struct.ssh_digest_ctx* null, %struct.ssh_digest_ctx** %2, align 8
  br label %40

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.ssh_digest_ctx, %struct.ssh_digest_ctx* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = call i32* (...) @EVP_MD_CTX_new()
  %19 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.ssh_digest_ctx, %struct.ssh_digest_ctx* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = icmp eq i32* %18, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %5, align 8
  %24 = call i32 @free(%struct.ssh_digest_ctx* %23)
  store %struct.ssh_digest_ctx* null, %struct.ssh_digest_ctx** %2, align 8
  br label %40

25:                                               ; preds = %14
  %26 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.ssh_digest_ctx, %struct.ssh_digest_ctx* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.ssh_digest*, %struct.ssh_digest** %4, align 8
  %30 = getelementptr inbounds %struct.ssh_digest, %struct.ssh_digest* %29, i32 0, i32 0
  %31 = load i32 (...)*, i32 (...)** %30, align 8
  %32 = call i32 (...) %31()
  %33 = call i32 @EVP_DigestInit_ex(i32* %28, i32 %32, i32* null)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %5, align 8
  %37 = call i32 @ssh_digest_free(%struct.ssh_digest_ctx* %36)
  store %struct.ssh_digest_ctx* null, %struct.ssh_digest_ctx** %2, align 8
  br label %40

38:                                               ; preds = %25
  %39 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %5, align 8
  store %struct.ssh_digest_ctx* %39, %struct.ssh_digest_ctx** %2, align 8
  br label %40

40:                                               ; preds = %38, %35, %22, %13
  %41 = load %struct.ssh_digest_ctx*, %struct.ssh_digest_ctx** %2, align 8
  ret %struct.ssh_digest_ctx* %41
}

declare dso_local %struct.ssh_digest* @ssh_digest_by_alg(i32) #1

declare dso_local %struct.ssh_digest_ctx* @calloc(i32, i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @free(%struct.ssh_digest_ctx*) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #1

declare dso_local i32 @ssh_digest_free(%struct.ssh_digest_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
