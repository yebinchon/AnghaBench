; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_get_cred_by_uuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_get_cred_by_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.kcm_creds = type { i32 }

@KRB5_CC_IO = common dso_local global i64 0, align 8
@KRB5_CC_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32*, i32*)* @kcm_op_get_cred_by_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_op_get_cred_by_uuid(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.kcm_creds*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i64 @krb5_ret_stringz(i32* %18, i8** %14)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i64, i64* %12, align 8
  store i64 %23, i64* %6, align 8
  br label %81

24:                                               ; preds = %5
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %14, align 8
  %29 = call i32 @KCM_LOG_REQUEST_NAME(i32 %25, i32* %26, i32 %27, i8* %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i8*, i8** %14, align 8
  %34 = call i64 @kcm_ccache_resolve_client(i32 %30, i32* %31, i32 %32, i8* %33, %struct.TYPE_5__** %13)
  store i64 %34, i64* %12, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i64, i64* %12, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %6, align 8
  br label %81

41:                                               ; preds = %24
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @krb5_storage_read(i32* %42, i32* %16, i32 4)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 4
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %50 = call i32 @kcm_release_ccache(i32 %48, %struct.TYPE_5__* %49)
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @krb5_clear_error_message(i32 %51)
  %53 = load i64, i64* @KRB5_CC_IO, align 8
  store i64 %53, i64* %6, align 8
  br label %81

54:                                               ; preds = %41
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call %struct.kcm_creds* @kcm_ccache_find_cred_uuid(i32 %55, %struct.TYPE_5__* %56, i32 %57)
  store %struct.kcm_creds* %58, %struct.kcm_creds** %15, align 8
  %59 = load %struct.kcm_creds*, %struct.kcm_creds** %15, align 8
  %60 = icmp eq %struct.kcm_creds* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %64 = call i32 @kcm_release_ccache(i32 %62, %struct.TYPE_5__* %63)
  %65 = load i64, i64* @KRB5_CC_END, align 8
  store i64 %65, i64* %6, align 8
  br label %81

66:                                               ; preds = %54
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = call i32 @HEIMDAL_MUTEX_lock(i32* %68)
  %70 = load i32*, i32** %11, align 8
  %71 = load %struct.kcm_creds*, %struct.kcm_creds** %15, align 8
  %72 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %71, i32 0, i32 0
  %73 = call i64 @krb5_store_creds(i32* %70, i32* %72)
  store i64 %73, i64* %12, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = call i32 @HEIMDAL_MUTEX_unlock(i32* %75)
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %79 = call i32 @kcm_release_ccache(i32 %77, %struct.TYPE_5__* %78)
  %80 = load i64, i64* %12, align 8
  store i64 %80, i64* %6, align 8
  br label %81

81:                                               ; preds = %66, %61, %47, %39, %22
  %82 = load i64, i64* %6, align 8
  ret i64 %82
}

declare dso_local i64 @krb5_ret_stringz(i32*, i8**) #1

declare dso_local i32 @KCM_LOG_REQUEST_NAME(i32, i32*, i32, i8*) #1

declare dso_local i64 @kcm_ccache_resolve_client(i32, i32*, i32, i8*, %struct.TYPE_5__**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_storage_read(i32*, i32*, i32) #1

declare dso_local i32 @kcm_release_ccache(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local %struct.kcm_creds* @kcm_ccache_find_cred_uuid(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i64 @krb5_store_creds(i32*, i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
