; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_fingerprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_fingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }

@SSH_DIGEST_MD5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sshkey_fingerprint(%struct.sshkey* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.sshkey* %0, %struct.sshkey** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %11 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @sshkey_fingerprint_raw(%struct.sshkey* %11, i32 %12, i32** %9, i64* %10)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %71

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %58 [
    i32 130, label %18
    i32 129, label %35
    i32 132, label %41
    i32 131, label %47
    i32 128, label %51
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SSH_DIGEST_MD5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ssh_digest_alg_name(i32 %23)
  %25 = load i32*, i32** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i8* @fingerprint_hex(i32 %24, i32* %25, i64 %26)
  store i8* %27, i8** %8, align 8
  br label %34

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ssh_digest_alg_name(i32 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i8* @fingerprint_b64(i32 %30, i32* %31, i64 %32)
  store i8* %33, i8** %8, align 8
  br label %34

34:                                               ; preds = %28, %22
  br label %64

35:                                               ; preds = %16
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ssh_digest_alg_name(i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i8* @fingerprint_hex(i32 %37, i32* %38, i64 %39)
  store i8* %40, i8** %8, align 8
  br label %64

41:                                               ; preds = %16
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ssh_digest_alg_name(i32 %42)
  %44 = load i32*, i32** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i8* @fingerprint_b64(i32 %43, i32* %44, i64 %45)
  store i8* %46, i8** %8, align 8
  br label %64

47:                                               ; preds = %16
  %48 = load i32*, i32** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i8* @fingerprint_bubblebabble(i32* %48, i64 %49)
  store i8* %50, i8** %8, align 8
  br label %64

51:                                               ; preds = %16
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ssh_digest_alg_name(i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %57 = call i8* @fingerprint_randomart(i32 %53, i32* %54, i64 %55, %struct.sshkey* %56)
  store i8* %57, i8** %8, align 8
  br label %64

58:                                               ; preds = %16
  %59 = load i32*, i32** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @explicit_bzero(i32* %59, i64 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @free(i32* %62)
  store i8* null, i8** %4, align 8
  br label %71

64:                                               ; preds = %51, %47, %41, %35, %34
  %65 = load i32*, i32** %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @explicit_bzero(i32* %65, i64 %66)
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @free(i32* %68)
  %70 = load i8*, i8** %8, align 8
  store i8* %70, i8** %4, align 8
  br label %71

71:                                               ; preds = %64, %58, %15
  %72 = load i8*, i8** %4, align 8
  ret i8* %72
}

declare dso_local i64 @sshkey_fingerprint_raw(%struct.sshkey*, i32, i32**, i64*) #1

declare dso_local i8* @fingerprint_hex(i32, i32*, i64) #1

declare dso_local i32 @ssh_digest_alg_name(i32) #1

declare dso_local i8* @fingerprint_b64(i32, i32*, i64) #1

declare dso_local i8* @fingerprint_bubblebabble(i32*, i64) #1

declare dso_local i8* @fingerprint_randomart(i32, i32*, i64, %struct.sshkey*) #1

declare dso_local i32 @explicit_bzero(i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
