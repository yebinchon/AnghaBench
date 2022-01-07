; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_generate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32, i32, i32, i32, i32, i32*, i32* }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KEY_UNSPEC = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@ED25519_PK_SZ = common dso_local global i32 0, align 4
@ED25519_SK_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_generate(i32 %0, i32 %1, %struct.sshkey** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sshkey**, align 8
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.sshkey** %2, %struct.sshkey*** %7, align 8
  %10 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.sshkey**, %struct.sshkey*** %7, align 8
  %12 = icmp eq %struct.sshkey** %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %14, i32* %4, align 4
  br label %64

15:                                               ; preds = %3
  %16 = load %struct.sshkey**, %struct.sshkey*** %7, align 8
  store %struct.sshkey* null, %struct.sshkey** %16, align 8
  %17 = load i32, i32* @KEY_UNSPEC, align 4
  %18 = call %struct.sshkey* @sshkey_new(i32 %17)
  store %struct.sshkey* %18, %struct.sshkey** %8, align 8
  %19 = icmp eq %struct.sshkey* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %21, i32* %4, align 4
  br label %64

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %48 [
    i32 130, label %24
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @ED25519_PK_SZ, align 4
  %26 = call i8* @malloc(i32 %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %29 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %28, i32 0, i32 6
  store i32* %27, i32** %29, align 8
  %30 = icmp eq i32* %27, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ED25519_SK_SZ, align 4
  %33 = call i8* @malloc(i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %36 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %35, i32 0, i32 5
  store i32* %34, i32** %36, align 8
  %37 = icmp eq i32* %34, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31, %24
  %39 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %39, i32* %9, align 4
  br label %50

40:                                               ; preds = %31
  %41 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %42 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %45 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @crypto_sign_ed25519_keypair(i32* %43, i32* %46)
  store i32 0, i32* %9, align 4
  br label %50

48:                                               ; preds = %22
  %49 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %40, %38
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %56 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %58 = load %struct.sshkey**, %struct.sshkey*** %7, align 8
  store %struct.sshkey* %57, %struct.sshkey** %58, align 8
  br label %62

59:                                               ; preds = %50
  %60 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %61 = call i32 @sshkey_free(%struct.sshkey* %60)
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %20, %13
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.sshkey* @sshkey_new(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @crypto_sign_ed25519_keypair(i32*, i32*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
