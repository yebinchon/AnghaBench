; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_from_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_from_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32, i32*, i32, i32*, i32, i32*, i32, i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@ED25519_PK_SZ = common dso_local global i64 0, align 8
@SSH_ERR_KEY_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_from_private(%struct.sshkey* %0, %struct.sshkey** %1) #0 {
  %3 = alloca %struct.sshkey*, align 8
  %4 = alloca %struct.sshkey**, align 8
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %3, align 8
  store %struct.sshkey** %1, %struct.sshkey*** %4, align 8
  store %struct.sshkey* null, %struct.sshkey** %5, align 8
  %7 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.sshkey**, %struct.sshkey*** %4, align 8
  store %struct.sshkey* null, %struct.sshkey** %8, align 8
  %9 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %10 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %44 [
    i32 133, label %12
    i32 132, label %12
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %14 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.sshkey* @sshkey_new(i32 %15)
  store %struct.sshkey* %16, %struct.sshkey** %5, align 8
  %17 = icmp eq %struct.sshkey* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %19, i32* %6, align 4
  br label %59

20:                                               ; preds = %12
  %21 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %22 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load i64, i64* @ED25519_PK_SZ, align 8
  %27 = call i8* @malloc(i64 %26)
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %30 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  %31 = icmp eq i32* %28, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %33, i32* %6, align 4
  br label %59

34:                                               ; preds = %25
  %35 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %36 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %39 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @ED25519_PK_SZ, align 8
  %42 = call i32 @memcpy(i32* %37, i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %34, %20
  br label %46

44:                                               ; preds = %2
  %45 = load i32, i32* @SSH_ERR_KEY_TYPE_UNKNOWN, align 4
  store i32 %45, i32* %6, align 4
  br label %59

46:                                               ; preds = %43
  %47 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %48 = call i64 @sshkey_is_cert(%struct.sshkey* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %52 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %53 = call i32 @sshkey_cert_copy(%struct.sshkey* %51, %struct.sshkey* %52)
  store i32 %53, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %59

56:                                               ; preds = %50, %46
  %57 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %58 = load %struct.sshkey**, %struct.sshkey*** %4, align 8
  store %struct.sshkey* %57, %struct.sshkey** %58, align 8
  store %struct.sshkey* null, %struct.sshkey** %5, align 8
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %55, %44, %32, %18
  %60 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %61 = call i32 @sshkey_free(%struct.sshkey* %60)
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.sshkey* @sshkey_new(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @sshkey_is_cert(%struct.sshkey*) #1

declare dso_local i32 @sshkey_cert_copy(%struct.sshkey*, %struct.sshkey*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
