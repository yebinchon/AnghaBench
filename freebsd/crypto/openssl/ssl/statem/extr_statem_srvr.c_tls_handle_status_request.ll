; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_handle_status_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_handle_status_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_19__*, i32)*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }

@TLSEXT_STATUSTYPE_nothing = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_HANDLE_STATUS_REQUEST = common dso_local global i32 0, align 4
@SSL_R_CLIENTHELLO_TLSEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @tls_handle_status_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_handle_status_request(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TLSEXT_STATUSTYPE_nothing, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %86

14:                                               ; preds = %1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = icmp ne %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %86

19:                                               ; preds = %14
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.TYPE_19__*, i32)* %25, null
  br i1 %26, label %27, label %86

27:                                               ; preds = %19
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %85

35:                                               ; preds = %27
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i32* %41, i32** %45, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %50, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %51(%struct.TYPE_19__* %52, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  switch i32 %60, label %78 [
    i32 129, label %61
    i32 128, label %65
    i32 130, label %77
  ]

61:                                               ; preds = %35
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  br label %84

65:                                               ; preds = %35
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %65
  br label %84

77:                                               ; preds = %35
  br label %78

78:                                               ; preds = %35, %77
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %80 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %81 = load i32, i32* @SSL_F_TLS_HANDLE_STATUS_REQUEST, align 4
  %82 = load i32, i32* @SSL_R_CLIENTHELLO_TLSEXT, align 4
  %83 = call i32 @SSLfatal(%struct.TYPE_19__* %79, i32 %80, i32 %81, i32 %82)
  store i32 0, i32* %2, align 4
  br label %87

84:                                               ; preds = %76, %61
  br label %85

85:                                               ; preds = %84, %27
  br label %86

86:                                               ; preds = %85, %19, %14, %1
  store i32 1, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %78
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @SSLfatal(%struct.TYPE_19__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
