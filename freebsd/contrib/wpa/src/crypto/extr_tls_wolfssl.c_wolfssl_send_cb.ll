; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_wolfssl_send_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_wolfssl_send_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.tls_out_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SSL: adding %d bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*)* @wolfssl_send_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wolfssl_send_cb(i32* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.tls_out_data*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.tls_out_data*
  store %struct.tls_out_data* %13, %struct.tls_out_data** %11, align 8
  %14 = load %struct.tls_out_data*, %struct.tls_out_data** %11, align 8
  %15 = icmp ne %struct.tls_out_data* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %42

17:                                               ; preds = %4
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.wpabuf* @wpabuf_alloc_copy(i8* %21, i32 %22)
  store %struct.wpabuf* %23, %struct.wpabuf** %10, align 8
  %24 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %25 = icmp ne %struct.wpabuf* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %42

27:                                               ; preds = %17
  %28 = load %struct.tls_out_data*, %struct.tls_out_data** %11, align 8
  %29 = getelementptr inbounds %struct.tls_out_data, %struct.tls_out_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %32 = call i32 @wpabuf_concat(i32 %30, %struct.wpabuf* %31)
  %33 = load %struct.tls_out_data*, %struct.tls_out_data** %11, align 8
  %34 = getelementptr inbounds %struct.tls_out_data, %struct.tls_out_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.tls_out_data*, %struct.tls_out_data** %11, align 8
  %36 = getelementptr inbounds %struct.tls_out_data, %struct.tls_out_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %42

40:                                               ; preds = %27
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %39, %26, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i8*, i32) #1

declare dso_local i32 @wpabuf_concat(i32, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
