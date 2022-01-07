; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_https_to_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_https_to_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_list = type { i32 }

@verb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"could not write to server\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ip_list*, i8*, i8*)* @https_to_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @https_to_ip(%struct.ip_list* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ip_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.ip_list* %0, %struct.ip_list** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = call i32* (...) @setup_sslctx()
  store i32* %12, i32** %11, align 8
  %13 = load i32*, i32** %11, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %61

16:                                               ; preds = %3
  %17 = load %struct.ip_list*, %struct.ip_list** %5, align 8
  %18 = call i32 @connect_to_ip(%struct.ip_list* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @SSL_CTX_free(i32* %22)
  store i32* null, i32** %4, align 8
  br label %61

24:                                               ; preds = %16
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32* @TLS_initiate(i32* %25, i32 %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @SSL_CTX_free(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @fd_close(i32 %33)
  store i32* null, i32** %4, align 8
  br label %61

35:                                               ; preds = %24
  %36 = load i32*, i32** %9, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @write_http_get(i32* %36, i8* %37, i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* @verb, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @SSL_free(i32* %47)
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @SSL_CTX_free(i32* %49)
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @fd_close(i32 %51)
  store i32* null, i32** %4, align 8
  br label %61

53:                                               ; preds = %35
  %54 = load i32*, i32** %9, align 8
  %55 = call i32* @read_http_result(i32* %54)
  store i32* %55, i32** %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @TLS_shutdown(i32 %56, i32* %57, i32* %58)
  %60 = load i32*, i32** %10, align 8
  store i32* %60, i32** %4, align 8
  br label %61

61:                                               ; preds = %53, %46, %30, %21, %15
  %62 = load i32*, i32** %4, align 8
  ret i32* %62
}

declare dso_local i32* @setup_sslctx(...) #1

declare dso_local i32 @connect_to_ip(%struct.ip_list*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

declare dso_local i32* @TLS_initiate(i32*, i32) #1

declare dso_local i32 @fd_close(i32) #1

declare dso_local i32 @write_http_get(i32*, i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32* @read_http_result(i32*) #1

declare dso_local i32 @TLS_shutdown(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
