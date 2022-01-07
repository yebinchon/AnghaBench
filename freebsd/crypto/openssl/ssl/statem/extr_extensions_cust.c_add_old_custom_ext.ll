; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_cust.c_add_old_custom_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_cust.c_add_old_custom_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32, i32, i8* }

@custom_ext_add_old_cb_wrap = common dso_local global i32 0, align 4
@custom_ext_free_old_cb_wrap = common dso_local global i32 0, align 4
@custom_ext_parse_old_cb_wrap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32, i8*, i32, i8*)* @add_old_custom_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_old_custom_ext(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  %23 = call %struct.TYPE_7__* @OPENSSL_malloc(i32 32)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %20, align 8
  %24 = call %struct.TYPE_7__* @OPENSSL_malloc(i32 32)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %21, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %26 = icmp eq %struct.TYPE_7__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %9
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %29 = icmp eq %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %9
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %32 = call i32 @OPENSSL_free(%struct.TYPE_7__* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %34 = call i32 @OPENSSL_free(%struct.TYPE_7__* %33)
  store i32 0, i32* %10, align 4
  br label %70

35:                                               ; preds = %27
  %36 = load i8*, i8** %17, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** %19, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %18, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @custom_ext_add_old_cb_wrap, align 4
  %56 = load i32, i32* @custom_ext_free_old_cb_wrap, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %58 = load i32, i32* @custom_ext_parse_old_cb_wrap, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %60 = call i32 @add_custom_ext_intern(i32* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, %struct.TYPE_7__* %57, i32 %58, %struct.TYPE_7__* %59)
  store i32 %60, i32* %22, align 4
  %61 = load i32, i32* %22, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %35
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %65 = call i32 @OPENSSL_free(%struct.TYPE_7__* %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %67 = call i32 @OPENSSL_free(%struct.TYPE_7__* %66)
  br label %68

68:                                               ; preds = %63, %35
  %69 = load i32, i32* %22, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %68, %30
  %71 = load i32, i32* %10, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_7__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_7__*) #1

declare dso_local i32 @add_custom_ext_intern(i32*, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
