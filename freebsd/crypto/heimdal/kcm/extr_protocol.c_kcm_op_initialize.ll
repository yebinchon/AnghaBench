; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@KCM_EVENT_DESTROY_EMPTY_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32*, i32*)* @kcm_op_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_op_initialize(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
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
  %21 = call i64 @krb5_ret_stringz(i32* %20, i8** %15)
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i64, i64* %14, align 8
  store i64 %25, i64* %6, align 8
  br label %59

26:                                               ; preds = %5
  %27 = load i32*, i32** %10, align 8
  %28 = call i64 @krb5_ret_principal(i32* %27, i32* %13)
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* %14, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %15, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i64, i64* %14, align 8
  store i64 %34, i64* %6, align 8
  br label %59

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = call i64 @kcm_ccache_new_client(i32 %36, i32* %37, i8* %38, %struct.TYPE_7__** %12)
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @krb5_free_principal(i32 %45, i32 %46)
  %48 = load i64, i64* %14, align 8
  store i64 %48, i64* %6, align 8
  br label %59

49:                                               ; preds = %35
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %57 = call i32 @kcm_release_ccache(i32 %55, %struct.TYPE_7__* %56)
  %58 = load i64, i64* %14, align 8
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %49, %42, %31, %24
  %60 = load i64, i64* %6, align 8
  ret i64 %60
}

declare dso_local i32 @KCM_LOG_REQUEST(i32, i32*, i32) #1

declare dso_local i64 @krb5_ret_stringz(i32*, i8**) #1

declare dso_local i64 @krb5_ret_principal(i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @kcm_ccache_new_client(i32, i32*, i8*, %struct.TYPE_7__**) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @kcm_release_ccache(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
