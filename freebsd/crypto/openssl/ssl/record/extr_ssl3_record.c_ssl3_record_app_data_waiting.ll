; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_record.c_ssl3_record_app_data_waiting.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_record.c_ssl3_record_app_data_waiting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SSL3_RT_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL3_RT_APPLICATION_DATA = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @ssl3_record_app_data_waiting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl3_record_app_data_waiting(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32* @RECORD_LAYER_get_rbuf(i32* %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @SSL3_BUFFER_get_buf(i32* %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @SSL3_BUFFER_get_left(i32* %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @SSL3_RT_HEADER_LENGTH, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %49

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @SSL3_BUFFER_get_offset(i32* %24)
  %26 = load i8*, i8** %7, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @SSL3_RT_APPLICATION_DATA, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %49

36:                                               ; preds = %23
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @n2s(i8* %39, i64 %40)
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @SSL3_RT_HEADER_LENGTH, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %43, %44
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %49

48:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %47, %35, %22, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32* @RECORD_LAYER_get_rbuf(i32*) #1

declare dso_local i8* @SSL3_BUFFER_get_buf(i32*) #1

declare dso_local i64 @SSL3_BUFFER_get_left(i32*) #1

declare dso_local i32 @SSL3_BUFFER_get_offset(i32*) #1

declare dso_local i32 @n2s(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
