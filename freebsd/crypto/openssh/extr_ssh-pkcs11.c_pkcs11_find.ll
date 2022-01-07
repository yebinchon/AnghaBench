; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_pkcs11_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_pkcs11_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs11_provider = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8* (i32, i32*, i64)*, i8* (i32, i32*, i32, i64*)*, i8* (i32)* }

@CKR_OK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"C_FindObjectsInit failed (nattr %lu): %lu\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"C_FindObjects failed (nfound %lu nattr %lu): %lu\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"C_FindObjectsFinal failed: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pkcs11_provider*, i64, i32*, i64, i32*)* @pkcs11_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs11_find(%struct.pkcs11_provider* %0, i64 %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pkcs11_provider*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.pkcs11_provider* %0, %struct.pkcs11_provider** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %14, align 8
  store i32 -1, i32* %16, align 4
  %17 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %7, align 8
  %18 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %12, align 8
  %20 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %7, align 8
  %21 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8* (i32, i32*, i64)*, i8* (i32, i32*, i64)** %28, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i8* %29(i32 %30, i32* %31, i64 %32)
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** @CKR_OK, align 8
  %35 = icmp ne i8* %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %5
  %37 = load i64, i64* %10, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %37, i8* %38)
  store i32 -1, i32* %6, align 4
  br label %71

40:                                               ; preds = %5
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i8* (i32, i32*, i32, i64*)*, i8* (i32, i32*, i32, i64*)** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = call i8* %43(i32 %44, i32* %45, i32 1, i64* %14)
  store i8* %46, i8** %15, align 8
  %47 = load i8*, i8** @CKR_OK, align 8
  %48 = icmp ne i8* %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i64, i64* %14, align 8
  %51 = icmp ne i64 %50, 1
  br i1 %51, label %52, label %57

52:                                               ; preds = %49, %40
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = call i32 @debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %54, i8* %55)
  br label %58

57:                                               ; preds = %49
  store i32 0, i32* %16, align 4
  br label %58

58:                                               ; preds = %57, %52
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i8* (i32)*, i8* (i32)** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i8* %61(i32 %62)
  store i8* %63, i8** %15, align 8
  %64 = load i8*, i8** @CKR_OK, align 8
  %65 = icmp ne i8* %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %58
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %36
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @debug(i8*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
