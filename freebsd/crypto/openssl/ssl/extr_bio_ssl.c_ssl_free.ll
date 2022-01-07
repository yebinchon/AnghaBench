; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_bio_ssl.c_ssl_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_bio_ssl.c_ssl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ssl_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_free(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_4__* @BIO_get_data(i32* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @SSL_shutdown(i32* %18)
  br label %20

20:                                               ; preds = %15, %8
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @BIO_get_shutdown(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @BIO_get_init(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @SSL_free(i32* %31)
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @BIO_clear_flags(i32* %34, i32 -1)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @BIO_set_init(i32* %36, i32 0)
  br label %38

38:                                               ; preds = %33, %20
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = call i32 @OPENSSL_free(%struct.TYPE_4__* %39)
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %7
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.TYPE_4__* @BIO_get_data(i32*) #1

declare dso_local i32 @SSL_shutdown(i32*) #1

declare dso_local i64 @BIO_get_shutdown(i32*) #1

declare dso_local i64 @BIO_get_init(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @BIO_clear_flags(i32*, i32) #1

declare dso_local i32 @BIO_set_init(i32*, i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
