; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_fingerprint_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_fingerprint_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSHKEY_SERIALIZE_DEFAULT = common dso_local global i32 0, align 4
@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_fingerprint_raw(%struct.sshkey* %0, i32 %1, i32** %2, i64* %3) #0 {
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i64 0, i64* %11, align 8
  %13 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32**, i32*** %7, align 8
  %15 = icmp ne i32** %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32**, i32*** %7, align 8
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %16, %4
  %19 = load i64*, i64** %8, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i64*, i64** %8, align 8
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @ssh_digest_bytes(i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %28, i32* %12, align 4
  br label %64

29:                                               ; preds = %23
  %30 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %31 = load i32, i32* @SSHKEY_SERIALIZE_DEFAULT, align 4
  %32 = call i32 @to_blob(%struct.sshkey* %30, i32** %9, i64* %11, i32 1, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %64

35:                                               ; preds = %29
  %36 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %37 = call i32* @calloc(i32 1, i32 %36)
  store i32* %37, i32** %10, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %40, i32* %12, align 4
  br label %64

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %47 = call i32 @ssh_digest_memory(i32 %42, i32* %43, i64 %44, i32* %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %64

50:                                               ; preds = %41
  %51 = load i32**, i32*** %7, align 8
  %52 = icmp ne i32** %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %10, align 8
  %55 = load i32**, i32*** %7, align 8
  store i32* %54, i32** %55, align 8
  store i32* null, i32** %10, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i64*, i64** %8, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @ssh_digest_bytes(i32 %60)
  %62 = load i64*, i64** %8, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %56
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %63, %49, %39, %34, %27
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @free(i32* %65)
  %67 = load i32*, i32** %9, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32*, i32** %9, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @explicit_bzero(i32* %70, i64 %71)
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @free(i32* %73)
  br label %75

75:                                               ; preds = %69, %64
  %76 = load i32, i32* %12, align 4
  ret i32 %76
}

declare dso_local i64 @ssh_digest_bytes(i32) #1

declare dso_local i32 @to_blob(%struct.sshkey*, i32**, i64*, i32, i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @ssh_digest_memory(i32, i32*, i64, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @explicit_bzero(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
