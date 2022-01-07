; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_get_ticket.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_get_ticket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i32*, i32, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32*, i32*)* @kcm_op_get_ticket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_op_get_ticket(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca %struct.TYPE_16__, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %15, align 8
  %20 = call i32 @memset(%struct.TYPE_17__* %17, i32 0, i32 24)
  %21 = load i32*, i32** %10, align 8
  %22 = call i64 @krb5_ret_stringz(i32* %21, i8** %14)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i64, i64* %12, align 8
  store i64 %26, i64* %6, align 8
  br label %115

27:                                               ; preds = %5
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %14, align 8
  %32 = call i32 @KCM_LOG_REQUEST_NAME(i32 %28, i32* %29, i32 %30, i8* %31)
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %35 = call i64 @krb5_ret_uint32(i32* %33, i32* %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i8*, i8** %14, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i64, i64* %12, align 8
  store i64 %41, i64* %6, align 8
  br label %115

42:                                               ; preds = %27
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = call i64 @krb5_ret_int32(i32* %43, i32* %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i64, i64* %12, align 8
  store i64 %52, i64* %6, align 8
  br label %115

53:                                               ; preds = %42
  %54 = load i32*, i32** %10, align 8
  %55 = call i64 @krb5_ret_principal(i32* %54, i32** %15)
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i64, i64* %12, align 8
  store i64 %61, i64* %6, align 8
  br label %115

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = call i64 @kcm_ccache_resolve_client(i32 %63, i32* %64, i32 %65, i8* %66, %struct.TYPE_18__** %13)
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = call i32 @krb5_free_principal(i32 %71, i32* %72)
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i64, i64* %12, align 8
  store i64 %76, i64* %6, align 8
  br label %115

77:                                               ; preds = %62
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = call i32 @HEIMDAL_MUTEX_lock(i32* %79)
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %83 = call i32 @kcm_internal_ccache(i32 %81, %struct.TYPE_18__* %82, i32* %16)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  store i32 %86, i32* %87, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  store i32* %88, i32** %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* %7, align 4
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @krb5_get_credentials_with_flags(i32 %92, i32 0, i32 %94, i32* %16, %struct.TYPE_17__* %17, %struct.TYPE_17__** %18)
  store i64 %95, i64* %12, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = call i32 @HEIMDAL_MUTEX_unlock(i32* %97)
  %99 = load i32, i32* %7, align 4
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @krb5_free_principal(i32 %99, i32* %100)
  %102 = load i64, i64* %12, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %77
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %107 = call i32 @krb5_free_cred_contents(i32 %105, %struct.TYPE_17__* %106)
  br label %108

108:                                              ; preds = %104, %77
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %111 = call i32 @kcm_release_ccache(i32 %109, %struct.TYPE_18__* %110)
  %112 = load i8*, i8** %14, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load i64, i64* %12, align 8
  store i64 %114, i64* %6, align 8
  br label %115

115:                                              ; preds = %108, %70, %58, %49, %38, %25
  %116 = load i64, i64* %6, align 8
  ret i64 %116
}

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @krb5_ret_stringz(i32*, i8**) #1

declare dso_local i32 @KCM_LOG_REQUEST_NAME(i32, i32*, i32, i8*) #1

declare dso_local i64 @krb5_ret_uint32(i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_ret_int32(i32*, i32*) #1

declare dso_local i64 @krb5_ret_principal(i32*, i32**) #1

declare dso_local i64 @kcm_ccache_resolve_client(i32, i32*, i32, i8*, %struct.TYPE_18__**) #1

declare dso_local i32 @krb5_free_principal(i32, i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @kcm_internal_ccache(i32, %struct.TYPE_18__*, i32*) #1

declare dso_local i64 @krb5_get_credentials_with_flags(i32, i32, i32, i32*, %struct.TYPE_17__*, %struct.TYPE_17__**) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i32 @krb5_free_cred_contents(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @kcm_release_ccache(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
