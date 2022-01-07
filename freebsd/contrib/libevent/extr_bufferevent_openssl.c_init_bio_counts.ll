; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_init_bio_counts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_init_bio_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent_openssl*)* @init_bio_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_bio_counts(%struct.bufferevent_openssl* %0) #0 {
  %2 = alloca %struct.bufferevent_openssl*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %2, align 8
  %5 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %6 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32* @SSL_get_wbio(i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @BIO_number_written(i32* %12)
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ %13, %11 ], [ 0, %14 ]
  %17 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %18 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %21 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @SSL_get_rbio(i32 %22)
  store i32* %23, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @BIO_number_read(i32* %27)
  br label %30

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ %28, %26 ], [ 0, %29 ]
  %32 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %33 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  ret void
}

declare dso_local i32* @SSL_get_wbio(i32) #1

declare dso_local i32 @BIO_number_written(i32*) #1

declare dso_local i32* @SSL_get_rbio(i32) #1

declare dso_local i32 @BIO_number_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
