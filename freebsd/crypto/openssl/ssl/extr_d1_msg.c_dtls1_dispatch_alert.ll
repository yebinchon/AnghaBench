; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_d1_msg.c_dtls1_dispatch_alert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_d1_msg.c_dtls1_dispatch_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { void (%struct.TYPE_10__*, i32, i32)*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32, i32 (i32, i32, i32, i32*, i32, %struct.TYPE_10__*, i32)*, i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { void (%struct.TYPE_10__*, i32, i32)* }

@DTLS1_AL_HEADER_LENGTH = common dso_local global i32 0, align 4
@SSL3_RT_ALERT = common dso_local global i32 0, align 4
@SSL_CB_WRITE_ALERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls1_dispatch_alert(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca void (%struct.TYPE_10__*, i32, i32)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store void (%struct.TYPE_10__*, i32, i32)* null, void (%struct.TYPE_10__*, i32, i32)** %5, align 8
  %10 = load i32, i32* @DTLS1_AL_HEADER_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8* %14, i8** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = trunc i64 %11 to i32
  %20 = call i32 @memset(i8* %13, i32 0, i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  store i8 %28, i8* %29, align 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  store i8 %38, i8* %39, align 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = load i32, i32* @SSL3_RT_ALERT, align 4
  %43 = getelementptr inbounds i8, i8* %13, i64 0
  %44 = trunc i64 %11 to i32
  %45 = call i32 @do_dtls1_write(%struct.TYPE_10__* %41, i32 %42, i8* %43, i32 %44, i32 0, i64* %9)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %128

53:                                               ; preds = %1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @BIO_flush(i32 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 5
  %60 = load i32 (i32, i32, i32, i32*, i32, %struct.TYPE_10__*, i32)*, i32 (i32, i32, i32, i32*, i32, %struct.TYPE_10__*, i32)** %59, align 8
  %61 = icmp ne i32 (i32, i32, i32, i32*, i32, %struct.TYPE_10__*, i32)* %60, null
  br i1 %61, label %62, label %80

62:                                               ; preds = %53
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 5
  %65 = load i32 (i32, i32, i32, i32*, i32, %struct.TYPE_10__*, i32)*, i32 (i32, i32, i32, i32*, i32, %struct.TYPE_10__*, i32)** %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SSL3_RT_ALERT, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %65(i32 1, i32 %68, i32 %69, i32* %74, i32 2, %struct.TYPE_10__* %75, i32 %78)
  br label %80

80:                                               ; preds = %62, %53
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load void (%struct.TYPE_10__*, i32, i32)*, void (%struct.TYPE_10__*, i32, i32)** %82, align 8
  %84 = icmp ne void (%struct.TYPE_10__*, i32, i32)* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load void (%struct.TYPE_10__*, i32, i32)*, void (%struct.TYPE_10__*, i32, i32)** %87, align 8
  store void (%struct.TYPE_10__*, i32, i32)* %88, void (%struct.TYPE_10__*, i32, i32)** %5, align 8
  br label %103

89:                                               ; preds = %80
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load void (%struct.TYPE_10__*, i32, i32)*, void (%struct.TYPE_10__*, i32, i32)** %93, align 8
  %95 = icmp ne void (%struct.TYPE_10__*, i32, i32)* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load void (%struct.TYPE_10__*, i32, i32)*, void (%struct.TYPE_10__*, i32, i32)** %100, align 8
  store void (%struct.TYPE_10__*, i32, i32)* %101, void (%struct.TYPE_10__*, i32, i32)** %5, align 8
  br label %102

102:                                              ; preds = %96, %89
  br label %103

103:                                              ; preds = %102, %85
  %104 = load void (%struct.TYPE_10__*, i32, i32)*, void (%struct.TYPE_10__*, i32, i32)** %5, align 8
  %105 = icmp ne void (%struct.TYPE_10__*, i32, i32)* %104, null
  br i1 %105, label %106, label %127

106:                                              ; preds = %103
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %114, %121
  store i32 %122, i32* %4, align 4
  %123 = load void (%struct.TYPE_10__*, i32, i32)*, void (%struct.TYPE_10__*, i32, i32)** %5, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %125 = load i32, i32* @SSL_CB_WRITE_ALERT, align 4
  %126 = load i32, i32* %4, align 4
  call void %123(%struct.TYPE_10__* %124, i32 %125, i32 %126)
  br label %127

127:                                              ; preds = %106, %103
  br label %128

128:                                              ; preds = %127, %48
  %129 = load i32, i32* %3, align 4
  %130 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %130)
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @do_dtls1_write(%struct.TYPE_10__*, i32, i8*, i32, i32, i64*) #2

declare dso_local i32 @BIO_flush(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
