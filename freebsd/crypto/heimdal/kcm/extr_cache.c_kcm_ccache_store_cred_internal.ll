; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_store_cred_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_store_cred_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.kcm_creds* }
%struct.kcm_creds = type { i32, i32, %struct.kcm_creds* }

@KRB5_CC_NOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kcm_ccache_store_cred_internal(i32 %0, %struct.TYPE_3__* %1, i32* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.kcm_creds**, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.kcm_creds** %15, %struct.kcm_creds*** %12, align 8
  br label %16

16:                                               ; preds = %21, %5
  %17 = load %struct.kcm_creds**, %struct.kcm_creds*** %12, align 8
  %18 = load %struct.kcm_creds*, %struct.kcm_creds** %17, align 8
  %19 = icmp ne %struct.kcm_creds* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.kcm_creds**, %struct.kcm_creds*** %12, align 8
  %23 = load %struct.kcm_creds*, %struct.kcm_creds** %22, align 8
  %24 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %23, i32 0, i32 2
  store %struct.kcm_creds** %24, %struct.kcm_creds*** %12, align 8
  br label %16

25:                                               ; preds = %16
  %26 = call i64 @calloc(i32 1, i32 16)
  %27 = inttoptr i64 %26 to %struct.kcm_creds*
  %28 = load %struct.kcm_creds**, %struct.kcm_creds*** %12, align 8
  store %struct.kcm_creds* %27, %struct.kcm_creds** %28, align 8
  %29 = load %struct.kcm_creds**, %struct.kcm_creds*** %12, align 8
  %30 = load %struct.kcm_creds*, %struct.kcm_creds** %29, align 8
  %31 = icmp eq %struct.kcm_creds* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* @KRB5_CC_NOMEM, align 8
  store i64 %33, i64* %6, align 8
  br label %67

34:                                               ; preds = %25
  %35 = load %struct.kcm_creds**, %struct.kcm_creds*** %12, align 8
  %36 = load %struct.kcm_creds*, %struct.kcm_creds** %35, align 8
  %37 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @RAND_bytes(i32 %38, i32 4)
  %40 = load %struct.kcm_creds**, %struct.kcm_creds*** %12, align 8
  %41 = load %struct.kcm_creds*, %struct.kcm_creds** %40, align 8
  %42 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %41, i32 0, i32 0
  %43 = load i32**, i32*** %11, align 8
  store i32* %42, i32** %43, align 8
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %34
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32**, i32*** %11, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @krb5_copy_creds_contents(i32 %47, i32* %48, i32* %50)
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.kcm_creds**, %struct.kcm_creds*** %12, align 8
  %56 = load %struct.kcm_creds*, %struct.kcm_creds** %55, align 8
  %57 = call i32 @free(%struct.kcm_creds* %56)
  %58 = load %struct.kcm_creds**, %struct.kcm_creds*** %12, align 8
  store %struct.kcm_creds* null, %struct.kcm_creds** %58, align 8
  br label %59

59:                                               ; preds = %54, %46
  br label %65

60:                                               ; preds = %34
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32**, i32*** %11, align 8
  %64 = load i32*, i32** %63, align 8
  store i32 %62, i32* %64, align 4
  store i64 0, i64* %13, align 8
  br label %65

65:                                               ; preds = %60, %59
  %66 = load i64, i64* %13, align 8
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %65, %32
  %68 = load i64, i64* %6, align 8
  ret i64 %68
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @RAND_bytes(i32, i32) #1

declare dso_local i64 @krb5_copy_creds_contents(i32, i32*, i32*) #1

declare dso_local i32 @free(%struct.kcm_creds*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
