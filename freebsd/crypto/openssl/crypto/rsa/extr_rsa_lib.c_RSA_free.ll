; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_lib.c_RSA_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_lib.c_RSA_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*)* }

@.str = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@CRYPTO_EX_INDEX_RSA = common dso_local global i32 0, align 4
@rsa_multip_info_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RSA_free(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = icmp eq %struct.TYPE_9__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %112

7:                                                ; preds = %1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 17
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 13
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @CRYPTO_DOWN_REF(i32* %9, i32* %3, i32 %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = call i32 @REF_PRINT_COUNT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %14)
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %112

19:                                               ; preds = %7
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @REF_ASSERT_ISNT(i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 16
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %19
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 16
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %32, align 8
  %34 = icmp ne i32 (%struct.TYPE_9__*)* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 16
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %39, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = call i32 %40(%struct.TYPE_9__* %41)
  br label %43

43:                                               ; preds = %35, %28, %19
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 15
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ENGINE_finish(i32 %46)
  %48 = load i32, i32* @CRYPTO_EX_INDEX_RSA, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 14
  %52 = call i32 @CRYPTO_free_ex_data(i32 %48, %struct.TYPE_9__* %49, i32* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 13
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @CRYPTO_THREAD_lock_free(i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @BN_free(i32 %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @BN_free(i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @BN_clear_free(i32 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @BN_clear_free(i32 %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @BN_clear_free(i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @BN_clear_free(i32 %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @BN_clear_free(i32 %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @BN_clear_free(i32 %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @RSA_PSS_PARAMS_free(i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @rsa_multip_info_free, align 4
  %97 = call i32 @sk_RSA_PRIME_INFO_pop_free(i32 %95, i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @BN_BLINDING_free(i32 %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @BN_BLINDING_free(i32 %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = call i32 @OPENSSL_free(%struct.TYPE_9__* %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = call i32 @OPENSSL_free(%struct.TYPE_9__* %110)
  br label %112

112:                                              ; preds = %43, %18, %6
  ret void
}

declare dso_local i32 @CRYPTO_DOWN_REF(i32*, i32*, i32) #1

declare dso_local i32 @REF_PRINT_COUNT(i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @REF_ASSERT_ISNT(i32) #1

declare dso_local i32 @ENGINE_finish(i32) #1

declare dso_local i32 @CRYPTO_free_ex_data(i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32) #1

declare dso_local i32 @BN_free(i32) #1

declare dso_local i32 @BN_clear_free(i32) #1

declare dso_local i32 @RSA_PSS_PARAMS_free(i32) #1

declare dso_local i32 @sk_RSA_PRIME_INFO_pop_free(i32, i32) #1

declare dso_local i32 @BN_BLINDING_free(i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
