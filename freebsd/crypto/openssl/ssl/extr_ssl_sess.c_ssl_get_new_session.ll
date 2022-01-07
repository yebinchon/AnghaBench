; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_sess.c_ssl_get_new_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_sess.c_ssl_get_new_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*, i32, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i64 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL_GET_NEW_SESSION = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@X509_V_OK = common dso_local global i32 0, align 4
@TLS1_FLAGS_RECEIVED_EXTMS = common dso_local global i32 0, align 4
@SSL_SESS_FLAG_EXTMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_get_new_session(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  %7 = call %struct.TYPE_15__* (...) @SSL_SESSION_new()
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %6, align 8
  %8 = icmp eq %struct.TYPE_15__* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %12 = load i32, i32* @SSL_F_SSL_GET_NEW_SESSION, align 4
  %13 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %14 = call i32 @SSLfatal(%struct.TYPE_16__* %10, i32 %11, i32 %12, i32 %13)
  store i32 0, i32* %3, align 4
  br label %120

15:                                               ; preds = %2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = call i64 @SSL_get_default_timeout(%struct.TYPE_16__* %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %35

27:                                               ; preds = %15
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %27, %22
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = call i32 @SSL_SESSION_free(%struct.TYPE_15__* %38)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 3
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %35
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = call i64 @SSL_IS_TLS13(%struct.TYPE_16__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 6
  store i64 0, i64* %50, align 8
  br label %60

51:                                               ; preds = %44
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = call i32 @ssl_generate_session_id(%struct.TYPE_16__* %52, %struct.TYPE_15__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = call i32 @SSL_SESSION_free(%struct.TYPE_15__* %57)
  store i32 0, i32* %3, align 4
  br label %120

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %48
  br label %64

61:                                               ; preds = %35
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 6
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %60
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = icmp ugt i64 %68, 4
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %73 = load i32, i32* @SSL_F_SSL_GET_NEW_SESSION, align 4
  %74 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %75 = call i32 @SSLfatal(%struct.TYPE_16__* %71, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = call i32 @SSL_SESSION_free(%struct.TYPE_15__* %76)
  store i32 0, i32* %3, align 4
  br label %120

78:                                               ; preds = %64
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @memcpy(i32 %81, i32 %84, i32 %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 3
  store %struct.TYPE_15__* %94, %struct.TYPE_15__** %96, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @X509_V_OK, align 4
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @TLS1_FLAGS_RECEIVED_EXTMS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %78
  %114 = load i32, i32* @SSL_SESS_FLAG_EXTMS, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %78
  store i32 1, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %70, %56, %9
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.TYPE_15__* @SSL_SESSION_new(...) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i64 @SSL_get_default_timeout(%struct.TYPE_16__*) #1

declare dso_local i32 @SSL_SESSION_free(%struct.TYPE_15__*) #1

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_16__*) #1

declare dso_local i32 @ssl_generate_session_id(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
