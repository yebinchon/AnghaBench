; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_d1_lib.c_dtls1_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_d1_lib.c_dtls1_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.timeval = type { i32 }

@DTLS1_MAX_MTU_OVERHEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dtls1_ctrl(%struct.TYPE_8__* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %51 [
    i32 131, label %12
    i32 130, label %20
    i32 129, label %23
    i32 132, label %34
    i32 128, label %36
  ]

12:                                               ; preds = %4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.timeval*
  %16 = call i32* @dtls1_get_timeout(%struct.TYPE_8__* %13, %struct.timeval* %15)
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %10, align 4
  br label %19

19:                                               ; preds = %18, %12
  br label %57

20:                                               ; preds = %4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = call i32 @dtls1_handle_timeout(%struct.TYPE_8__* %21)
  store i32 %22, i32* %10, align 4
  br label %57

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = call i64 (...) @dtls1_link_min_mtu()
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i64 0, i64* %5, align 8
  br label %60

28:                                               ; preds = %23
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i64 %29, i64* %33, align 8
  store i64 1, i64* %5, align 8
  br label %60

34:                                               ; preds = %4
  %35 = call i64 (...) @dtls1_link_min_mtu()
  store i64 %35, i64* %5, align 8
  br label %60

36:                                               ; preds = %4
  %37 = load i64, i64* %8, align 8
  %38 = call i64 (...) @dtls1_link_min_mtu()
  %39 = load i32, i32* @DTLS1_MAX_MTU_OVERHEAD, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %38, %40
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i64 0, i64* %5, align 8
  br label %60

44:                                               ; preds = %36
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i64 %45, i64* %49, align 8
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %5, align 8
  br label %60

51:                                               ; preds = %4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i64, i64* %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @ssl3_ctrl(%struct.TYPE_8__* %52, i32 %53, i64 %54, i8* %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %51, %20, %19
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %57, %44, %43, %34, %28, %27
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local i32* @dtls1_get_timeout(%struct.TYPE_8__*, %struct.timeval*) #1

declare dso_local i32 @dtls1_handle_timeout(%struct.TYPE_8__*) #1

declare dso_local i64 @dtls1_link_min_mtu(...) #1

declare dso_local i32 @ssl3_ctrl(%struct.TYPE_8__*, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
