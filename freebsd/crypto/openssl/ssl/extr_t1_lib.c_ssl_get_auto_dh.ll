; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_ssl_get_auto_dh.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_ssl_get_auto_dh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@SSL_aNULL = common dso_local global i32 0, align 4
@SSL_aPSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ssl_get_auto_dh(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 80, i32* %4, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32* (...) @DH_get_1024_160()
  store i32* %15, i32** %2, align 8
  br label %115

16:                                               ; preds = %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SSL_aNULL, align 4
  %26 = load i32, i32* @SSL_aPSK, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %16
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 256
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 128, i32* %4, align 4
  br label %42

41:                                               ; preds = %30
  store i32 80, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %62

43:                                               ; preds = %16
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = icmp eq %struct.TYPE_10__* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32* null, i32** %2, align 8
  br label %115

52:                                               ; preds = %43
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @EVP_PKEY_security_bits(i32 %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %52, %42
  %63 = load i32, i32* %4, align 4
  %64 = icmp sge i32 %63, 128
  br i1 %64, label %65, label %108

65:                                               ; preds = %62
  %66 = call i32* (...) @DH_new()
  store i32* %66, i32** %5, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32* null, i32** %2, align 8
  br label %115

70:                                               ; preds = %65
  %71 = call i32* (...) @BN_new()
  store i32* %71, i32** %7, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @BN_set_word(i32* %75, i32 2)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74, %70
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @DH_free(i32* %79)
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @BN_free(i32* %81)
  store i32* null, i32** %2, align 8
  br label %115

83:                                               ; preds = %74
  %84 = load i32, i32* %4, align 4
  %85 = icmp sge i32 %84, 192
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32* @BN_get_rfc3526_prime_8192(i32* null)
  store i32* %87, i32** %6, align 8
  br label %90

88:                                               ; preds = %83
  %89 = call i32* @BN_get_rfc3526_prime_3072(i32* null)
  store i32* %89, i32** %6, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = load i32*, i32** %6, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load i32*, i32** %5, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @DH_set0_pqg(i32* %94, i32* %95, i32* null, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %93, %90
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @DH_free(i32* %100)
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @BN_free(i32* %102)
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @BN_free(i32* %104)
  store i32* null, i32** %2, align 8
  br label %115

106:                                              ; preds = %93
  %107 = load i32*, i32** %5, align 8
  store i32* %107, i32** %2, align 8
  br label %115

108:                                              ; preds = %62
  %109 = load i32, i32* %4, align 4
  %110 = icmp sge i32 %109, 112
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32* (...) @DH_get_2048_224()
  store i32* %112, i32** %2, align 8
  br label %115

113:                                              ; preds = %108
  %114 = call i32* (...) @DH_get_1024_160()
  store i32* %114, i32** %2, align 8
  br label %115

115:                                              ; preds = %113, %111, %106, %99, %78, %69, %51, %14
  %116 = load i32*, i32** %2, align 8
  ret i32* %116
}

declare dso_local i32* @DH_get_1024_160(...) #1

declare dso_local i32 @EVP_PKEY_security_bits(i32) #1

declare dso_local i32* @DH_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @DH_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32* @BN_get_rfc3526_prime_8192(i32*) #1

declare dso_local i32* @BN_get_rfc3526_prime_3072(i32*) #1

declare dso_local i32 @DH_set0_pqg(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @DH_get_2048_224(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
