; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_set_shared_sigalgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_set_shared_sigalgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32**, %struct.TYPE_10__*, i32, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_12__ = type { i64, i64, i32*, i32* }

@SSL_OP_CIPHER_SERVER_PREFERENCE = common dso_local global i32 0, align 4
@SSL_F_TLS1_SET_SHARED_SIGALGS = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @tls1_set_shared_sigalgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls1_set_shared_sigalgs(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32** null, i32*** %11, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %12, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = call i32 @tls1_suiteb(%struct.TYPE_11__* %17)
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i32**, i32*** %20, align 8
  %22 = call i32 @OPENSSL_free(i32** %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  store i32** null, i32*** %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %6, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  br label %65

46:                                               ; preds = %36, %31, %1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %6, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %9, align 8
  br label %64

61:                                               ; preds = %51, %46
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = call i64 @tls12_get_psigalgs(%struct.TYPE_11__* %62, i32 0, i32** %6)
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %61, %54
  br label %65

65:                                               ; preds = %64, %39
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SSL_OP_CIPHER_SERVER_PREFERENCE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %72, %65
  %76 = load i32*, i32** %6, align 8
  store i32* %76, i32** %4, align 8
  %77 = load i64, i64* %9, align 8
  store i64 %77, i64* %7, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %5, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %8, align 8
  br label %105

90:                                               ; preds = %72
  %91 = load i32*, i32** %6, align 8
  store i32* %91, i32** %5, align 8
  %92 = load i64, i64* %9, align 8
  store i64 %92, i64* %8, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %4, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %7, align 8
  br label %105

105:                                              ; preds = %90, %75
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i64 @tls12_shared_sigalgs(%struct.TYPE_11__* %106, i32** null, i32* %107, i64 %108, i32* %109, i64 %110)
  store i64 %111, i64* %10, align 8
  %112 = load i64, i64* %10, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %105
  %115 = load i64, i64* %10, align 8
  %116 = mul i64 %115, 8
  %117 = call i32** @OPENSSL_malloc(i64 %116)
  store i32** %117, i32*** %11, align 8
  %118 = icmp eq i32** %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @SSL_F_TLS1_SET_SHARED_SIGALGS, align 4
  %121 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %122 = call i32 @SSLerr(i32 %120, i32 %121)
  store i32 0, i32* %2, align 4
  br label %139

123:                                              ; preds = %114
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = load i32**, i32*** %11, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load i32*, i32** %5, align 8
  %129 = load i64, i64* %8, align 8
  %130 = call i64 @tls12_shared_sigalgs(%struct.TYPE_11__* %124, i32** %125, i32* %126, i64 %127, i32* %128, i64 %129)
  store i64 %130, i64* %10, align 8
  br label %132

131:                                              ; preds = %105
  store i32** null, i32*** %11, align 8
  br label %132

132:                                              ; preds = %131, %123
  %133 = load i32**, i32*** %11, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  store i32** %133, i32*** %135, align 8
  %136 = load i64, i64* %10, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  store i32 1, i32* %2, align 4
  br label %139

139:                                              ; preds = %132, %119
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @tls1_suiteb(%struct.TYPE_11__*) #1

declare dso_local i32 @OPENSSL_free(i32**) #1

declare dso_local i64 @tls12_get_psigalgs(%struct.TYPE_11__*, i32, i32**) #1

declare dso_local i64 @tls12_shared_sigalgs(%struct.TYPE_11__*, i32**, i32*, i64, i32*, i64) #1

declare dso_local i32** @OPENSSL_malloc(i64) #1

declare dso_local i32 @SSLerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
