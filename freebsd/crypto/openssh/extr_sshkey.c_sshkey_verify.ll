; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }

@SSH_KEY_MAX_SIGN_DATA_SIZE = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_KEY_TYPE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_verify(%struct.sshkey* %0, i32* %1, i64 %2, i32* %3, i64 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sshkey*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load i64, i64* %11, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %7
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* @SSH_KEY_MAX_SIGN_DATA_SIZE, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %7
  %23 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %23, i32* %8, align 4
  br label %38

24:                                               ; preds = %18
  %25 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %26 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %36 [
    i32 133, label %28
    i32 132, label %28
  ]

28:                                               ; preds = %24, %24
  %29 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @ssh_ed25519_verify(%struct.sshkey* %29, i32* %30, i64 %31, i32* %32, i64 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  br label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @SSH_ERR_KEY_TYPE_UNKNOWN, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %36, %28, %22
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i32 @ssh_ed25519_verify(%struct.sshkey*, i32*, i64, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
