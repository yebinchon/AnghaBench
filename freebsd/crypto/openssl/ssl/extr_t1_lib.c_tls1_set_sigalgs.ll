; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_set_sigalgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_set_sigalgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i32*, i32* }

@SSL_F_TLS1_SET_SIGALGS = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@sigalg_lookup_tbl = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_set_sigalgs(%struct.TYPE_7__* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i64, i64* %8, align 8
  %18 = and i64 %17, 1
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %115

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = udiv i64 %22, 2
  %24 = mul i64 %23, 4
  %25 = call i32* @OPENSSL_malloc(i64 %24)
  store i32* %25, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @SSL_F_TLS1_SET_SIGALGS, align 4
  %29 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %30 = call i32 @SSLerr(i32 %28, i32 %29)
  store i32 0, i32* %5, align 4
  br label %115

31:                                               ; preds = %21
  store i64 0, i64* %12, align 8
  %32 = load i32*, i32** %10, align 8
  store i32* %32, i32** %11, align 8
  br label %33

33:                                               ; preds = %81, %31
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %84

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %7, align 8
  %40 = load i32, i32* %38, align 4
  store i32 %40, i32* %15, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %7, align 8
  %43 = load i32, i32* %41, align 4
  store i32 %43, i32* %16, align 4
  store i64 0, i64* %13, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sigalg_lookup_tbl, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %14, align 8
  br label %45

45:                                               ; preds = %69, %37
  %46 = load i64, i64* %13, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sigalg_lookup_tbl, align 8
  %48 = call i64 @OSSL_NELEM(%struct.TYPE_6__* %47)
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %45
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  br label %74

68:                                               ; preds = %56, %50
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %13, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %13, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 1
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %14, align 8
  br label %45

74:                                               ; preds = %62, %45
  %75 = load i64, i64* %13, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sigalg_lookup_tbl, align 8
  %77 = call i64 @OSSL_NELEM(%struct.TYPE_6__* %76)
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %112

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %12, align 8
  %83 = add i64 %82, 2
  store i64 %83, i64* %12, align 8
  br label %33

84:                                               ; preds = %33
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @OPENSSL_free(i32* %90)
  %92 = load i32*, i32** %10, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  store i32* %92, i32** %94, align 8
  %95 = load i64, i64* %8, align 8
  %96 = udiv i64 %95, 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %111

99:                                               ; preds = %84
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @OPENSSL_free(i32* %102)
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  store i32* %104, i32** %106, align 8
  %107 = load i64, i64* %8, align 8
  %108 = udiv i64 %107, 2
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %99, %87
  store i32 1, i32* %5, align 4
  br label %115

112:                                              ; preds = %79
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @OPENSSL_free(i32* %113)
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %112, %111, %27, %20
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32* @OPENSSL_malloc(i64) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_6__*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
