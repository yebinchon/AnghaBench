; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl3_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl3_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_new(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = call i32* @OPENSSL_zalloc(i32 4)
  store i32* %5, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32* %9, i32** %11, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = call i32 @SSL_SRP_CTX_init(%struct.TYPE_7__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %28

16:                                               ; preds = %8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.TYPE_7__*)**
  %22 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = call i32 %22(%struct.TYPE_7__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %29

27:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %29

28:                                               ; preds = %15, %7
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %26
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @SSL_SRP_CTX_init(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
