; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_get_cred_uuid_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_get_cred_uuid_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_creds = type { i32, %struct.kcm_creds* }
%struct.TYPE_4__ = type { %struct.kcm_creds* }

@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32*, i32*)* @kcm_op_get_cred_uuid_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_op_get_cred_uuid_list(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.kcm_creds*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i64 @krb5_ret_stringz(i32* %17, i8** %15)
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %13, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i64, i64* %13, align 8
  store i64 %22, i64* %6, align 8
  br label %67

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %15, align 8
  %28 = call i32 @KCM_LOG_REQUEST_NAME(i32 %24, i32* %25, i32 %26, i8* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %15, align 8
  %33 = call i64 @kcm_ccache_resolve_client(i32 %29, i32* %30, i32 %31, i8* %32, %struct.TYPE_4__** %14)
  store i64 %33, i64* %13, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i64, i64* %13, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i64, i64* %13, align 8
  store i64 %39, i64* %6, align 8
  br label %67

40:                                               ; preds = %23
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.kcm_creds*, %struct.kcm_creds** %42, align 8
  store %struct.kcm_creds* %43, %struct.kcm_creds** %12, align 8
  br label %44

44:                                               ; preds = %58, %40
  %45 = load %struct.kcm_creds*, %struct.kcm_creds** %12, align 8
  %46 = icmp ne %struct.kcm_creds* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.kcm_creds*, %struct.kcm_creds** %12, align 8
  %50 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %49, i32 0, i32 0
  %51 = call i32 @krb5_storage_write(i32* %48, i32* %50, i32 4)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %53, 4
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i64, i64* @ENOMEM, align 8
  store i64 %56, i64* %13, align 8
  br label %62

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.kcm_creds*, %struct.kcm_creds** %12, align 8
  %60 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %59, i32 0, i32 1
  %61 = load %struct.kcm_creds*, %struct.kcm_creds** %60, align 8
  store %struct.kcm_creds* %61, %struct.kcm_creds** %12, align 8
  br label %44

62:                                               ; preds = %55, %44
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %65 = call i32 @kcm_release_ccache(i32 %63, %struct.TYPE_4__* %64)
  %66 = load i64, i64* %13, align 8
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %62, %38, %21
  %68 = load i64, i64* %6, align 8
  ret i64 %68
}

declare dso_local i64 @krb5_ret_stringz(i32*, i8**) #1

declare dso_local i32 @KCM_LOG_REQUEST_NAME(i32, i32*, i32, i8*) #1

declare dso_local i64 @kcm_ccache_resolve_client(i32, i32*, i32, i8*, %struct.TYPE_4__**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_storage_write(i32*, i32*, i32) #1

declare dso_local i32 @kcm_release_ccache(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
