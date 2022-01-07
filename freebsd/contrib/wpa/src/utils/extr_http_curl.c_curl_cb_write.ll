; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_curl_cb_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_curl_cb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_ctx = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @curl_cb_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @curl_cb_write(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.http_ctx*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.http_ctx*
  store %struct.http_ctx* %13, %struct.http_ctx** %10, align 8
  %14 = load %struct.http_ctx*, %struct.http_ctx** %10, align 8
  %15 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.http_ctx*, %struct.http_ctx** %10, align 8
  %18 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = mul i64 %20, %21
  %23 = add i64 %19, %22
  %24 = add i64 %23, 1
  %25 = call i8* @os_realloc(i8* %16, i64 %24)
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %62

29:                                               ; preds = %4
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.http_ctx*, %struct.http_ctx** %10, align 8
  %32 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load %struct.http_ctx*, %struct.http_ctx** %10, align 8
  %35 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = mul i64 %39, %40
  %42 = call i32 @os_memcpy(i8* %37, i8* %38, i64 %41)
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.http_ctx*, %struct.http_ctx** %10, align 8
  %45 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = mul i64 %47, %48
  %50 = add i64 %46, %49
  %51 = getelementptr inbounds i8, i8* %43, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = mul i64 %52, %53
  %55 = load %struct.http_ctx*, %struct.http_ctx** %10, align 8
  %56 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = mul i64 %59, %60
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %29, %28
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

declare dso_local i8* @os_realloc(i8*, i64) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
