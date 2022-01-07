; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_internal.c_tls_connection_prf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_internal.c_tls_connection_prf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tls_connection*, i8*, i32*, i64, i32, i32, i32*, i64)* @tls_connection_prf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_connection_prf(i8* %0, %struct.tls_connection* %1, i8* %2, i32* %3, i64 %4, i32 %5, i32 %6, i32* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tls_connection*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i8* %0, i8** %11, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32* %3, i32** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i64 %8, i64* %19, align 8
  store i32 -1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32* null, i32** %22, align 8
  %24 = load i32*, i32** %18, align 8
  store i32* %24, i32** %23, align 8
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %9
  %28 = load %struct.tls_connection*, %struct.tls_connection** %12, align 8
  %29 = call i32 @tls_get_keyblock_size(%struct.tls_connection* %28)
  store i32 %29, i32* %21, align 4
  %30 = load i32, i32* %21, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %10, align 4
  br label %64

33:                                               ; preds = %27
  %34 = load i32, i32* %21, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %19, align 8
  %37 = add i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32* @os_malloc(i32 %38)
  store i32* %39, i32** %22, align 8
  %40 = load i32*, i32** %22, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  store i32 -1, i32* %10, align 4
  br label %64

43:                                               ; preds = %33
  %44 = load i32*, i32** %22, align 8
  store i32* %44, i32** %23, align 8
  br label %45

45:                                               ; preds = %43, %9
  %46 = load i32, i32* %20, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32*, i32** %18, align 8
  %53 = load i32*, i32** %23, align 8
  %54 = load i32, i32* %21, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i64, i64* %19, align 8
  %58 = call i32 @os_memcpy(i32* %52, i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %51, %48, %45
  %60 = load i32*, i32** %22, align 8
  %61 = load i32, i32* %21, align 4
  %62 = call i32 @bin_clear_free(i32* %60, i32 %61)
  %63 = load i32, i32* %20, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %59, %42, %32
  %65 = load i32, i32* %10, align 4
  ret i32 %65
}

declare dso_local i32 @tls_get_keyblock_size(%struct.tls_connection*) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @bin_clear_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
