; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_remove_cred_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_remove_cred_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.kcm_creds* }
%struct.kcm_creds = type { i32, %struct.kcm_creds* }

@KRB5_CC_NOTFOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kcm_ccache_remove_cred_internal(i32 %0, %struct.TYPE_3__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kcm_creds**, align 8
  %11 = alloca %struct.kcm_creds*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i64, i64* @KRB5_CC_NOTFOUND, align 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.kcm_creds** %14, %struct.kcm_creds*** %10, align 8
  br label %15

15:                                               ; preds = %47, %4
  %16 = load %struct.kcm_creds**, %struct.kcm_creds*** %10, align 8
  %17 = load %struct.kcm_creds*, %struct.kcm_creds** %16, align 8
  %18 = icmp ne %struct.kcm_creds* %17, null
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.kcm_creds**, %struct.kcm_creds*** %10, align 8
  %24 = load %struct.kcm_creds*, %struct.kcm_creds** %23, align 8
  %25 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %24, i32 0, i32 0
  %26 = call i64 @krb5_compare_creds(i32 %20, i32 %21, i32* %22, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %19
  %29 = load %struct.kcm_creds**, %struct.kcm_creds*** %10, align 8
  %30 = load %struct.kcm_creds*, %struct.kcm_creds** %29, align 8
  store %struct.kcm_creds* %30, %struct.kcm_creds** %11, align 8
  %31 = load %struct.kcm_creds*, %struct.kcm_creds** %11, align 8
  %32 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %31, i32 0, i32 1
  %33 = load %struct.kcm_creds*, %struct.kcm_creds** %32, align 8
  %34 = load %struct.kcm_creds**, %struct.kcm_creds*** %10, align 8
  store %struct.kcm_creds* %33, %struct.kcm_creds** %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.kcm_creds*, %struct.kcm_creds** %11, align 8
  %37 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %36, i32 0, i32 0
  %38 = call i32 @krb5_free_cred_contents(i32 %35, i32* %37)
  %39 = load %struct.kcm_creds*, %struct.kcm_creds** %11, align 8
  %40 = call i32 @free(%struct.kcm_creds* %39)
  store i64 0, i64* %9, align 8
  %41 = load %struct.kcm_creds**, %struct.kcm_creds*** %10, align 8
  %42 = load %struct.kcm_creds*, %struct.kcm_creds** %41, align 8
  %43 = icmp eq %struct.kcm_creds* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %51

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %19
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.kcm_creds**, %struct.kcm_creds*** %10, align 8
  %49 = load %struct.kcm_creds*, %struct.kcm_creds** %48, align 8
  %50 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %49, i32 0, i32 1
  store %struct.kcm_creds** %50, %struct.kcm_creds*** %10, align 8
  br label %15

51:                                               ; preds = %44, %15
  %52 = load i64, i64* %9, align 8
  ret i64 %52
}

declare dso_local i64 @krb5_compare_creds(i32, i32, i32*, i32*) #1

declare dso_local i32 @krb5_free_cred_contents(i32, i32*) #1

declare dso_local i32 @free(%struct.kcm_creds*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
