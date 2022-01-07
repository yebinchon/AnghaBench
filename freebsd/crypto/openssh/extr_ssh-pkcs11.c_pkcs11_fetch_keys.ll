; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_pkcs11_fetch_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_pkcs11_fetch_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs11_provider = type { i32 }
%struct.sshkey = type { i32 }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32 }

@CKO_PUBLIC_KEY = common dso_local global i32 0, align 4
@CKO_CERTIFICATE = common dso_local global i32 0, align 4
@CKA_CLASS = common dso_local global i32 0, align 4
@CKA_ID = common dso_local global i32 0, align 4
@CKA_MODULUS = common dso_local global i32 0, align 4
@CKA_PUBLIC_EXPONENT = common dso_local global i32 0, align 4
@CKA_SUBJECT = common dso_local global i32 0, align 4
@CKA_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pkcs11_provider*, i32, %struct.sshkey***, i32*)* @pkcs11_fetch_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs11_fetch_keys(%struct.pkcs11_provider* %0, i32 %1, %struct.sshkey*** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pkcs11_provider*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sshkey***, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1 x %struct.TYPE_4__], align 16
  %13 = alloca [1 x %struct.TYPE_4__], align 16
  %14 = alloca [3 x %struct.TYPE_4__], align 16
  %15 = alloca [3 x %struct.TYPE_4__], align 16
  store %struct.pkcs11_provider* %0, %struct.pkcs11_provider** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sshkey*** %2, %struct.sshkey**** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* @CKO_PUBLIC_KEY, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @CKO_CERTIFICATE, align 4
  store i32 %17, i32* %11, align 4
  %18 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %12, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* @CKA_CLASS, align 4
  store i32 %20, i32* %19, align 16
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store i32* inttoptr (i64 4 to i32*), i32** %22, align 16
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %13, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* @CKA_CLASS, align 4
  store i32 %26, i32* %25, align 16
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32* inttoptr (i64 4 to i32*), i32** %28, align 16
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store i32 0, i32* %29, align 8
  %30 = bitcast [3 x %struct.TYPE_4__]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 96, i1 false)
  %31 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %14, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* @CKA_ID, align 4
  store i32 %33, i32* %32, align 16
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* @CKA_MODULUS, align 4
  store i32 %36, i32* %35, align 16
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* @CKA_PUBLIC_EXPONENT, align 4
  store i32 %39, i32* %38, align 16
  %40 = bitcast [3 x %struct.TYPE_4__]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %40, i8 0, i64 96, i1 false)
  %41 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %15, i64 0, i64 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* @CKA_ID, align 4
  store i32 %43, i32* %42, align 16
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* @CKA_SUBJECT, align 4
  store i32 %46, i32* %45, align 16
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* @CKA_VALUE, align 4
  store i32 %49, i32* %48, align 16
  %50 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %12, i64 0, i64 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32* %10, i32** %51, align 8
  %52 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %13, i64 0, i64 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32* %11, i32** %53, align 8
  %54 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %12, i64 0, i64 0
  %57 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %14, i64 0, i64 0
  %58 = load %struct.sshkey***, %struct.sshkey**** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @pkcs11_fetch_keys_filter(%struct.pkcs11_provider* %54, i32 %55, %struct.TYPE_4__* %56, %struct.TYPE_4__* %57, %struct.sshkey*** %58, i32* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %4
  %63 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %13, i64 0, i64 0
  %66 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %15, i64 0, i64 0
  %67 = load %struct.sshkey***, %struct.sshkey**** %8, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i64 @pkcs11_fetch_keys_filter(%struct.pkcs11_provider* %63, i32 %64, %struct.TYPE_4__* %65, %struct.TYPE_4__* %66, %struct.sshkey*** %67, i32* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62, %4
  store i32 -1, i32* %5, align 4
  br label %73

72:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @pkcs11_fetch_keys_filter(%struct.pkcs11_provider*, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.sshkey***, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
