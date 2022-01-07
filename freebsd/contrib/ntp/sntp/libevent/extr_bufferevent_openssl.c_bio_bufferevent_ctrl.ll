; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_bio_bufferevent_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_bio_bufferevent_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.bufferevent* }
%struct.bufferevent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32, i64, i8*)* @bio_bufferevent_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bio_bufferevent_ctrl(%struct.TYPE_3__* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bufferevent*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  store %struct.bufferevent* %13, %struct.bufferevent** %9, align 8
  store i64 1, i64* %10, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %40 [
    i32 131, label %15
    i32 129, label %19
    i32 130, label %25
    i32 128, label %32
    i32 133, label %39
    i32 132, label %39
  ]

15:                                               ; preds = %4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  br label %41

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %41

25:                                               ; preds = %4
  %26 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %27 = call i32 @bufferevent_get_input(%struct.bufferevent* %26)
  %28 = call i32 @evbuffer_get_length(i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %10, align 8
  br label %41

32:                                               ; preds = %4
  %33 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %34 = call i32 @bufferevent_get_output(%struct.bufferevent* %33)
  %35 = call i32 @evbuffer_get_length(i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %10, align 8
  br label %41

39:                                               ; preds = %4, %4
  store i64 1, i64* %10, align 8
  br label %41

40:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %41

41:                                               ; preds = %40, %39, %32, %25, %19, %15
  %42 = load i64, i64* %10, align 8
  ret i64 %42
}

declare dso_local i32 @evbuffer_get_length(i32) #1

declare dso_local i32 @bufferevent_get_input(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_get_output(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
