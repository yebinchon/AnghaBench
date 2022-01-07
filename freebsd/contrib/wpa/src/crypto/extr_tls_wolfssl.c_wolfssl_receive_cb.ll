; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_wolfssl_receive_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_wolfssl_receive_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_in_data = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*)* @wolfssl_receive_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wolfssl_receive_cb(i32* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tls_in_data*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %10, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.tls_in_data*
  store %struct.tls_in_data* %15, %struct.tls_in_data** %11, align 8
  %16 = load %struct.tls_in_data*, %struct.tls_in_data** %11, align 8
  %17 = icmp ne %struct.tls_in_data* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %62

19:                                               ; preds = %4
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.tls_in_data*, %struct.tls_in_data** %11, align 8
  %22 = getelementptr inbounds %struct.tls_in_data, %struct.tls_in_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @wpabuf_len(i32 %23)
  %25 = load %struct.tls_in_data*, %struct.tls_in_data** %11, align 8
  %26 = getelementptr inbounds %struct.tls_in_data, %struct.tls_in_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %24, %27
  %29 = icmp ugt i64 %20, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = load %struct.tls_in_data*, %struct.tls_in_data** %11, align 8
  %32 = getelementptr inbounds %struct.tls_in_data, %struct.tls_in_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @wpabuf_len(i32 %33)
  %35 = load %struct.tls_in_data*, %struct.tls_in_data** %11, align 8
  %36 = getelementptr inbounds %struct.tls_in_data, %struct.tls_in_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %34, %37
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %30, %19
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.tls_in_data*, %struct.tls_in_data** %11, align 8
  %42 = getelementptr inbounds %struct.tls_in_data, %struct.tls_in_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @wpabuf_head_u8(i32 %43)
  %45 = load %struct.tls_in_data*, %struct.tls_in_data** %11, align 8
  %46 = getelementptr inbounds %struct.tls_in_data, %struct.tls_in_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %44, %47
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @os_memcpy(i8* %40, i64 %48, i64 %49)
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.tls_in_data*, %struct.tls_in_data** %11, align 8
  %53 = getelementptr inbounds %struct.tls_in_data, %struct.tls_in_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  store i32 -2, i32* %5, align 4
  br label %62

59:                                               ; preds = %39
  %60 = load i64, i64* %10, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %58, %18
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @wpabuf_len(i32) #1

declare dso_local i32 @os_memcpy(i8*, i64, i64) #1

declare dso_local i64 @wpabuf_head_u8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
