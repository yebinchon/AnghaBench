; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_digest-openssl.c_ssh_digest_by_alg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_digest-openssl.c_ssh_digest_by_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_digest = type { i32, i32* }

@SSH_DIGEST_MAX = common dso_local global i32 0, align 4
@digests = common dso_local global %struct.ssh_digest* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ssh_digest* (i32)* @ssh_digest_by_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ssh_digest* @ssh_digest_by_alg(i32 %0) #0 {
  %2 = alloca %struct.ssh_digest*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SSH_DIGEST_MAX, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  store %struct.ssh_digest* null, %struct.ssh_digest** %2, align 8
  br label %35

11:                                               ; preds = %6
  %12 = load %struct.ssh_digest*, %struct.ssh_digest** @digests, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ssh_digest, %struct.ssh_digest* %12, i64 %14
  %16 = getelementptr inbounds %struct.ssh_digest, %struct.ssh_digest* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store %struct.ssh_digest* null, %struct.ssh_digest** %2, align 8
  br label %35

21:                                               ; preds = %11
  %22 = load %struct.ssh_digest*, %struct.ssh_digest** @digests, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ssh_digest, %struct.ssh_digest* %22, i64 %24
  %26 = getelementptr inbounds %struct.ssh_digest, %struct.ssh_digest* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store %struct.ssh_digest* null, %struct.ssh_digest** %2, align 8
  br label %35

30:                                               ; preds = %21
  %31 = load %struct.ssh_digest*, %struct.ssh_digest** @digests, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ssh_digest, %struct.ssh_digest* %31, i64 %33
  store %struct.ssh_digest* %34, %struct.ssh_digest** %2, align 8
  br label %35

35:                                               ; preds = %30, %29, %20, %10
  %36 = load %struct.ssh_digest*, %struct.ssh_digest** %2, align 8
  ret %struct.ssh_digest* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
