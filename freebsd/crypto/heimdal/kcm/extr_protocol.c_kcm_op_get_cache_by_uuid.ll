; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_get_cache_by_uuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_get_cache_by_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@KRB5_CC_IO = common dso_local global i64 0, align 8
@KRB5_FCC_NOFILE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32*, i32*)* @kcm_op_get_cache_by_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_op_get_cache_by_uuid(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @KCM_LOG_REQUEST(i32 %16, i32* %17, i32 %18)
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @krb5_storage_read(i32* %20, i32* %13, i32 4)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 4
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @krb5_clear_error_message(i32 %26)
  %28 = load i64, i64* @KRB5_CC_IO, align 8
  store i64 %28, i64* %6, align 8
  br label %61

29:                                               ; preds = %5
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i64 @kcm_ccache_resolve_by_uuid(i32 %30, i32 %31, %struct.TYPE_5__** %15)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* %12, align 8
  store i64 %36, i64* %6, align 8
  br label %61

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %42 = call i64 @kcm_access(i32 %38, i32* %39, i32 %40, %struct.TYPE_5__* %41)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i64, i64* @KRB5_FCC_NOFILE, align 8
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %45, %37
  %48 = load i64, i64* %12, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32*, i32** %11, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @krb5_store_stringz(i32* %51, i32 %54)
  store i64 %55, i64* %12, align 8
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %59 = call i32 @kcm_release_ccache(i32 %57, %struct.TYPE_5__* %58)
  %60 = load i64, i64* %12, align 8
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %56, %35, %25
  %62 = load i64, i64* %6, align 8
  ret i64 %62
}

declare dso_local i32 @KCM_LOG_REQUEST(i32, i32*, i32) #1

declare dso_local i32 @krb5_storage_read(i32*, i32*, i32) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i64 @kcm_ccache_resolve_by_uuid(i32, i32, %struct.TYPE_5__**) #1

declare dso_local i64 @kcm_access(i32, i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @krb5_store_stringz(i32*, i32) #1

declare dso_local i32 @kcm_release_ccache(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
