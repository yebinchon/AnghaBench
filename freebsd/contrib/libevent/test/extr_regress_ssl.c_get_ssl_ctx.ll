; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_ssl.c_get_ssl_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_ssl.c_get_ssl_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@the_ssl_ctx = common dso_local global i32* null, align 8
@disable_tls_11_and_12 = common dso_local global i64 0, align 8
@SSL_OP_NO_TLSv1_1 = common dso_local global i32 0, align 4
@SSL_OP_NO_TLSv1_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_ssl_ctx() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @the_ssl_ctx, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32*, i32** @the_ssl_ctx, align 8
  store i32* %5, i32** %1, align 8
  br label %18

6:                                                ; preds = %0
  %7 = call i32 (...) @SSLv23_method()
  %8 = call i32* @SSL_CTX_new(i32 %7)
  store i32* %8, i32** @the_ssl_ctx, align 8
  %9 = load i32*, i32** @the_ssl_ctx, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  store i32* null, i32** %1, align 8
  br label %18

12:                                               ; preds = %6
  %13 = load i64, i64* @disable_tls_11_and_12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32*, i32** @the_ssl_ctx, align 8
  store i32* %17, i32** %1, align 8
  br label %18

18:                                               ; preds = %16, %11, %4
  %19 = load i32*, i32** %1, align 8
  ret i32* %19
}

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @SSLv23_method(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
