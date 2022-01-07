; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_data = type { i64, %struct.tls_data*, %struct.tls_data*, %struct.tls_data*, i32* }
%struct.tls_context = type { i64, %struct.tls_context*, %struct.tls_context*, %struct.tls_context*, i32* }

@tls_global = common dso_local global %struct.tls_data* null, align 8
@tls_openssl_ref_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_deinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tls_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tls_context*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.tls_data*
  store %struct.tls_data* %7, %struct.tls_data** %3, align 8
  %8 = load %struct.tls_data*, %struct.tls_data** %3, align 8
  %9 = getelementptr inbounds %struct.tls_data, %struct.tls_data* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.tls_data* @SSL_CTX_get_app_data(i32* %11)
  %13 = bitcast %struct.tls_data* %12 to %struct.tls_context*
  store %struct.tls_context* %13, %struct.tls_context** %5, align 8
  %14 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %15 = load %struct.tls_data*, %struct.tls_data** @tls_global, align 8
  %16 = bitcast %struct.tls_data* %15 to %struct.tls_context*
  %17 = icmp ne %struct.tls_context* %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %20 = bitcast %struct.tls_context* %19 to %struct.tls_data*
  %21 = call i32 @os_free(%struct.tls_data* %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.tls_data*, %struct.tls_data** %3, align 8
  %24 = getelementptr inbounds %struct.tls_data, %struct.tls_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @SSL_CTX_flush_sessions(i32* %28, i32 0)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.tls_data*, %struct.tls_data** %3, align 8
  %32 = getelementptr inbounds %struct.tls_data, %struct.tls_data* %31, i32 0, i32 3
  %33 = load %struct.tls_data*, %struct.tls_data** %32, align 8
  %34 = call i32 @os_free(%struct.tls_data* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @SSL_CTX_free(i32* %35)
  %37 = load i64, i64* @tls_openssl_ref_count, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* @tls_openssl_ref_count, align 8
  %39 = load i64, i64* @tls_openssl_ref_count, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %30
  %42 = call i32 (...) @ENGINE_cleanup()
  %43 = call i32 (...) @CRYPTO_cleanup_all_ex_data()
  %44 = call i32 @ERR_remove_thread_state(i32* null)
  %45 = call i32 (...) @ERR_free_strings()
  %46 = call i32 (...) @EVP_cleanup()
  %47 = load %struct.tls_data*, %struct.tls_data** @tls_global, align 8
  %48 = getelementptr inbounds %struct.tls_data, %struct.tls_data* %47, i32 0, i32 2
  %49 = load %struct.tls_data*, %struct.tls_data** %48, align 8
  %50 = call i32 @os_free(%struct.tls_data* %49)
  %51 = load %struct.tls_data*, %struct.tls_data** @tls_global, align 8
  %52 = getelementptr inbounds %struct.tls_data, %struct.tls_data* %51, i32 0, i32 2
  store %struct.tls_data* null, %struct.tls_data** %52, align 8
  %53 = load %struct.tls_data*, %struct.tls_data** @tls_global, align 8
  %54 = call i32 @os_free(%struct.tls_data* %53)
  store %struct.tls_data* null, %struct.tls_data** @tls_global, align 8
  br label %55

55:                                               ; preds = %41, %30
  %56 = load %struct.tls_data*, %struct.tls_data** %3, align 8
  %57 = getelementptr inbounds %struct.tls_data, %struct.tls_data* %56, i32 0, i32 1
  %58 = load %struct.tls_data*, %struct.tls_data** %57, align 8
  %59 = call i32 @os_free(%struct.tls_data* %58)
  %60 = load %struct.tls_data*, %struct.tls_data** %3, align 8
  %61 = call i32 @os_free(%struct.tls_data* %60)
  ret void
}

declare dso_local %struct.tls_data* @SSL_CTX_get_app_data(i32*) #1

declare dso_local i32 @os_free(%struct.tls_data*) #1

declare dso_local i32 @SSL_CTX_flush_sessions(i32*, i32) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

declare dso_local i32 @ENGINE_cleanup(...) #1

declare dso_local i32 @CRYPTO_cleanup_all_ex_data(...) #1

declare dso_local i32 @ERR_remove_thread_state(i32*) #1

declare dso_local i32 @ERR_free_strings(...) #1

declare dso_local i32 @EVP_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
