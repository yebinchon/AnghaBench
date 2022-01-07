; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_ssl_buckets.c_ssl_init_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_ssl_buckets.c_ssl_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i8*, i8*, i64, i64, i32*, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_13__, i8*, i8*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__, i8*, i8*, i32*, i32* }

@SSL_OP_NO_SSLv2 = common dso_local global i32 0, align 4
@SSL_OP_NO_SSLv3 = common dso_local global i32 0, align 4
@ssl_need_client_cert = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i8* null, align 8
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@validate_server_certificate = common dso_local global i32 0, align 4
@SSL_OP_ALL = common dso_local global i32 0, align 4
@ssl_encrypt = common dso_local global i32 0, align 4
@ssl_decrypt = common dso_local global i32 0, align 4
@apps_ssl_info_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32*)* @ssl_init_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @ssl_init_context(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = call i32 (...) @init_ssl_libraries()
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.TYPE_12__* @serf_bucket_mem_alloc(i32* %5, i32 192)
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 16
  store i64 0, i64* %8, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @serf_bucket_allocator_get_pool(i32* %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 15
  store i32 %10, i32* %12, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 14
  store i32* %13, i32** %15, align 8
  %16 = call i32 (...) @SSLv23_client_method()
  %17 = call i32 @SSL_CTX_new(i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SSL_OP_NO_SSLv2, align 4
  %24 = load i32, i32* @SSL_OP_NO_SSLv3, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @SSL_CTX_set_options(i32 %22, i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ssl_need_client_cert, align 4
  %31 = call i32 @SSL_CTX_set_client_cert_cb(i32 %29, i32 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 13
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 12
  store i64 0, i64* %35, align 8
  %36 = load i8*, i8** @APR_SUCCESS, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @APR_SUCCESS, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 10
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 9
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 8
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 7
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 6
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %54 = load i32, i32* @validate_server_certificate, align 4
  %55 = call i32 @SSL_CTX_set_verify(i32 %52, i32 %53, i32 %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SSL_OP_ALL, align 4
  %60 = call i32 @SSL_CTX_set_options(i32 %58, i32 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = call i32 @disable_compression(%struct.TYPE_12__* %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @SSL_new(i32 %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = call i32 (...) @bio_meth_bucket_new()
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @BIO_new(i32 %74)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = call i32 @bio_set_data(i32 %80, %struct.TYPE_12__* %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @SSL_set_bio(i32 %85, i32 %88, i32 %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @SSL_set_connect_state(i32 %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = call i32 @SSL_set_app_data(i32 %99, %struct.TYPE_12__* %100)
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 4
  store i32* null, i32** %104, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  store i32* null, i32** %107, align 8
  %108 = load i32*, i32** %2, align 8
  %109 = call i8* @serf_bucket_aggregate_create(i32* %108)
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  store i8* %109, i8** %112, align 8
  %113 = load i8*, i8** @APR_SUCCESS, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  store i8* %113, i8** %116, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = call i32 @serf_databuf_init(%struct.TYPE_13__* %119)
  %121 = load i32, i32* @ssl_encrypt, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  store i32 %121, i32* %125, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  store %struct.TYPE_12__* %126, %struct.TYPE_12__** %130, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  store i32* null, i32** %133, align 8
  %134 = load i32*, i32** %2, align 8
  %135 = call i8* @serf_bucket_aggregate_create(i32* %134)
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  store i8* %135, i8** %138, align 8
  %139 = load i8*, i8** @APR_SUCCESS, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  store i8* %139, i8** %142, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = call i32 @serf_databuf_init(%struct.TYPE_13__* %145)
  %147 = load i32, i32* @ssl_decrypt, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  store i32 %147, i32* %151, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  store %struct.TYPE_12__* %152, %struct.TYPE_12__** %156, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %157
}

declare dso_local i32 @init_ssl_libraries(...) #1

declare dso_local %struct.TYPE_12__* @serf_bucket_mem_alloc(i32*, i32) #1

declare dso_local i32 @serf_bucket_allocator_get_pool(i32*) #1

declare dso_local i32 @SSL_CTX_new(i32) #1

declare dso_local i32 @SSLv23_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_options(i32, i32) #1

declare dso_local i32 @SSL_CTX_set_client_cert_cb(i32, i32) #1

declare dso_local i32 @SSL_CTX_set_verify(i32, i32, i32) #1

declare dso_local i32 @disable_compression(%struct.TYPE_12__*) #1

declare dso_local i32 @SSL_new(i32) #1

declare dso_local i32 @bio_meth_bucket_new(...) #1

declare dso_local i32 @BIO_new(i32) #1

declare dso_local i32 @bio_set_data(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @SSL_set_bio(i32, i32, i32) #1

declare dso_local i32 @SSL_set_connect_state(i32) #1

declare dso_local i32 @SSL_set_app_data(i32, %struct.TYPE_12__*) #1

declare dso_local i8* @serf_bucket_aggregate_create(i32*) #1

declare dso_local i32 @serf_databuf_init(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
