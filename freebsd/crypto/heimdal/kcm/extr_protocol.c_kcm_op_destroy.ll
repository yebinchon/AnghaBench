; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32*, i32*)* @kcm_op_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_op_destroy(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = call i64 @krb5_ret_stringz(i32* %14, i8** %13)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i64, i64* %12, align 8
  store i64 %19, i64* %6, align 8
  br label %41

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i8*, i8** %13, align 8
  %25 = call i32 @KCM_LOG_REQUEST_NAME(i32 %21, i32* %22, i32 %23, i8* %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i64 @kcm_ccache_destroy_client(i32 %26, i32* %27, i8* %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @kcm_drop_default_cache(i32 %33, i32* %34, i8* %35)
  br label %37

37:                                               ; preds = %32, %20
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %37, %18
  %42 = load i64, i64* %6, align 8
  ret i64 %42
}

declare dso_local i64 @krb5_ret_stringz(i32*, i8**) #1

declare dso_local i32 @KCM_LOG_REQUEST_NAME(i32, i32*, i32, i8*) #1

declare dso_local i64 @kcm_ccache_destroy_client(i32, i32*, i8*) #1

declare dso_local i32 @kcm_drop_default_cache(i32, i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
