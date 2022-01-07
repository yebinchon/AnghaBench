; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_pcy_data.c_policy_data_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_pcy_data.c_policy_data_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32, i32* }
%struct.TYPE_8__ = type { i32*, i32* }

@X509V3_F_POLICY_DATA_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@POLICY_DATA_FLAG_CRITICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @policy_data_new(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = icmp eq %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %86

16:                                               ; preds = %12, %3
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @OBJ_dup(i32* %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %86

25:                                               ; preds = %19
  br label %27

26:                                               ; preds = %16
  store i32* null, i32** %9, align 8
  br label %27

27:                                               ; preds = %26, %25
  %28 = call %struct.TYPE_7__* @OPENSSL_zalloc(i32 32)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = icmp eq %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @X509V3_F_POLICY_DATA_NEW, align 4
  %33 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %34 = call i32 @X509V3err(i32 %32, i32 %33)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %86

35:                                               ; preds = %27
  %36 = call i32* (...) @sk_ASN1_OBJECT_new_null()
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = call i32 @OPENSSL_free(%struct.TYPE_7__* %44)
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @ASN1_OBJECT_free(i32* %46)
  %48 = load i32, i32* @X509V3_F_POLICY_DATA_NEW, align 4
  %49 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %50 = call i32 @X509V3err(i32 %48, i32 %49)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %86

51:                                               ; preds = %35
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @POLICY_DATA_FLAG_CRITICAL, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32*, i32** %9, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  br label %73

65:                                               ; preds = %58
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %65, %61
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = icmp ne %struct.TYPE_8__* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %76, %73
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %4, align 8
  br label %86

86:                                               ; preds = %84, %43, %31, %24, %15
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %87
}

declare dso_local i32* @OBJ_dup(i32*) #1

declare dso_local %struct.TYPE_7__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i32* @sk_ASN1_OBJECT_new_null(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_7__*) #1

declare dso_local i32 @ASN1_OBJECT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
