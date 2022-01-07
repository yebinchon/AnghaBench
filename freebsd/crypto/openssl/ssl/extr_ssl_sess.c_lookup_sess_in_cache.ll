; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_sess.c_lookup_sess_in_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_sess.c_lookup_sess_in_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__, %struct.TYPE_15__* (%struct.TYPE_16__*, i8*, i64, i32*)*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@SSL_SESS_CACHE_NO_INTERNAL_LOOKUP = common dso_local global i32 0, align 4
@SSL_MAX_SSL_SESSION_ID_LENGTH = common dso_local global i64 0, align 8
@SSL_SESS_CACHE_NO_INTERNAL_STORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @lookup_sess_in_cache(%struct.TYPE_16__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SSL_SESS_CACHE_NO_INTERNAL_LOOKUP, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %73

19:                                               ; preds = %3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @SSL_MAX_SSL_SESSION_ID_LENGTH, align 8
  %26 = icmp ule i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ossl_assert(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %126

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @memcpy(i32 %33, i8* %34, i64 %35)
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @CRYPTO_THREAD_read_lock(i32 %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_15__* @lh_SSL_SESSION_retrieve(i32 %49, %struct.TYPE_15__* %9)
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %8, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %52 = icmp ne %struct.TYPE_15__* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %31
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %55 = call i32 @SSL_SESSION_up_ref(%struct.TYPE_15__* %54)
  br label %56

56:                                               ; preds = %53, %31
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @CRYPTO_THREAD_unlock(i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = icmp eq %struct.TYPE_15__* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = call i32 @tsan_counter(i32* %70)
  br label %72

72:                                               ; preds = %65, %56
  br label %73

73:                                               ; preds = %72, %3
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %75 = icmp eq %struct.TYPE_15__* %74, null
  br i1 %75, label %76, label %124

76:                                               ; preds = %73
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_15__* (%struct.TYPE_16__*, i8*, i64, i32*)*, %struct.TYPE_15__* (%struct.TYPE_16__*, i8*, i64, i32*)** %80, align 8
  %82 = icmp ne %struct.TYPE_15__* (%struct.TYPE_16__*, i8*, i64, i32*)* %81, null
  br i1 %82, label %83, label %124

83:                                               ; preds = %76
  store i32 1, i32* %10, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_15__* (%struct.TYPE_16__*, i8*, i64, i32*)*, %struct.TYPE_15__* (%struct.TYPE_16__*, i8*, i64, i32*)** %87, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call %struct.TYPE_15__* %88(%struct.TYPE_16__* %89, i8* %90, i64 %91, i32* %10)
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %8, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = icmp ne %struct.TYPE_15__* %93, null
  br i1 %94, label %95, label %123

95:                                               ; preds = %83
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = call i32 @tsan_counter(i32* %100)
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %106 = call i32 @SSL_SESSION_up_ref(%struct.TYPE_15__* %105)
  br label %107

107:                                              ; preds = %104, %95
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @SSL_SESS_CACHE_NO_INTERNAL_STORE, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %107
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %121 = call i32 @SSL_CTX_add_session(%struct.TYPE_13__* %119, %struct.TYPE_15__* %120)
  br label %122

122:                                              ; preds = %116, %107
  br label %123

123:                                              ; preds = %122, %83
  br label %124

124:                                              ; preds = %123, %76, %73
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %125, %struct.TYPE_15__** %4, align 8
  br label %126

126:                                              ; preds = %124, %30
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %127
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @CRYPTO_THREAD_read_lock(i32) #1

declare dso_local %struct.TYPE_15__* @lh_SSL_SESSION_retrieve(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @SSL_SESSION_up_ref(%struct.TYPE_15__*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

declare dso_local i32 @tsan_counter(i32*) #1

declare dso_local i32 @SSL_CTX_add_session(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
