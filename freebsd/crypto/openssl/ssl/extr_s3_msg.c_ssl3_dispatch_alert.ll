; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_msg.c_ssl3_dispatch_alert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_msg.c_ssl3_dispatch_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { void (%struct.TYPE_10__*, i32, i32)*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32, i32 (i32, i32, i32, i32*, i32, %struct.TYPE_10__*, i32)*, i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { void (%struct.TYPE_10__*, i32, i32)* }

@SSL3_RT_ALERT = common dso_local global i32 0, align 4
@SSL_CB_WRITE_ALERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_dispatch_alert(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca void (%struct.TYPE_10__*, i32, i32)*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store void (%struct.TYPE_10__*, i32, i32)* null, void (%struct.TYPE_10__*, i32, i32)** %6, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  store i64 2, i64* %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = load i32, i32* @SSL3_RT_ALERT, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = call i32 @do_ssl3_write(%struct.TYPE_10__* %12, i32 %13, i32* %19, i64* %5, i32 1, i32 0, i64* %7)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %103

28:                                               ; preds = %1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @BIO_flush(i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 5
  %35 = load i32 (i32, i32, i32, i32*, i32, %struct.TYPE_10__*, i32)*, i32 (i32, i32, i32, i32*, i32, %struct.TYPE_10__*, i32)** %34, align 8
  %36 = icmp ne i32 (i32, i32, i32, i32*, i32, %struct.TYPE_10__*, i32)* %35, null
  br i1 %36, label %37, label %55

37:                                               ; preds = %28
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 5
  %40 = load i32 (i32, i32, i32, i32*, i32, %struct.TYPE_10__*, i32)*, i32 (i32, i32, i32, i32*, i32, %struct.TYPE_10__*, i32)** %39, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SSL3_RT_ALERT, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %40(i32 1, i32 %43, i32 %44, i32* %49, i32 2, %struct.TYPE_10__* %50, i32 %53)
  br label %55

55:                                               ; preds = %37, %28
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load void (%struct.TYPE_10__*, i32, i32)*, void (%struct.TYPE_10__*, i32, i32)** %57, align 8
  %59 = icmp ne void (%struct.TYPE_10__*, i32, i32)* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load void (%struct.TYPE_10__*, i32, i32)*, void (%struct.TYPE_10__*, i32, i32)** %62, align 8
  store void (%struct.TYPE_10__*, i32, i32)* %63, void (%struct.TYPE_10__*, i32, i32)** %6, align 8
  br label %78

64:                                               ; preds = %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load void (%struct.TYPE_10__*, i32, i32)*, void (%struct.TYPE_10__*, i32, i32)** %68, align 8
  %70 = icmp ne void (%struct.TYPE_10__*, i32, i32)* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load void (%struct.TYPE_10__*, i32, i32)*, void (%struct.TYPE_10__*, i32, i32)** %75, align 8
  store void (%struct.TYPE_10__*, i32, i32)* %76, void (%struct.TYPE_10__*, i32, i32)** %6, align 8
  br label %77

77:                                               ; preds = %71, %64
  br label %78

78:                                               ; preds = %77, %60
  %79 = load void (%struct.TYPE_10__*, i32, i32)*, void (%struct.TYPE_10__*, i32, i32)** %6, align 8
  %80 = icmp ne void (%struct.TYPE_10__*, i32, i32)* %79, null
  br i1 %80, label %81, label %102

81:                                               ; preds = %78
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %89, %96
  store i32 %97, i32* %4, align 4
  %98 = load void (%struct.TYPE_10__*, i32, i32)*, void (%struct.TYPE_10__*, i32, i32)** %6, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %100 = load i32, i32* @SSL_CB_WRITE_ALERT, align 4
  %101 = load i32, i32* %4, align 4
  call void %98(%struct.TYPE_10__* %99, i32 %100, i32 %101)
  br label %102

102:                                              ; preds = %81, %78
  br label %103

103:                                              ; preds = %102, %23
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @do_ssl3_write(%struct.TYPE_10__*, i32, i32*, i64*, i32, i32, i64*) #1

declare dso_local i32 @BIO_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
