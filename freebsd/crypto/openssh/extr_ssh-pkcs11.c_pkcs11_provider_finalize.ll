; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_pkcs11_provider_finalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_pkcs11_provider_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs11_provider = type { i64, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 (i32*)*, i32 (i64)* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"pkcs11_provider_finalize: %p refcount %d valid %d\00", align 1
@CKR_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"C_CloseSession failed: %lu\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"C_Finalize failed: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pkcs11_provider*)* @pkcs11_provider_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkcs11_provider_finalize(%struct.pkcs11_provider* %0) #0 {
  %2 = alloca %struct.pkcs11_provider*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.pkcs11_provider* %0, %struct.pkcs11_provider** %2, align 8
  %5 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %6 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %7 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %10 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.pkcs11_provider* %5, i32 %8, i64 %11)
  %13 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %14 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %78

18:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %54, %18
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %22 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %19
  %26 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %27 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %26, i32 0, i32 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %25
  %35 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %36 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32 (i64)*, i32 (i64)** %38, align 8
  %40 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %41 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 %39(i64 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @CKR_OK, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %34
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %34, %25
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %4, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %4, align 8
  br label %19

57:                                               ; preds = %19
  %58 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %59 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (i32*)*, i32 (i32*)** %61, align 8
  %63 = call i32 %62(i32* null)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* @CKR_OK, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %57
  %70 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %71 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %73 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %72, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %73, align 8
  %74 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %2, align 8
  %75 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dlclose(i32 %76)
  br label %78

78:                                               ; preds = %69, %17
  ret void
}

declare dso_local i32 @debug(i8*, %struct.pkcs11_provider*, i32, i64) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @dlclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
