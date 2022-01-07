; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_copy_session_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_copy_session_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_copy_session_id(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = call i32 @SSL_get_session(%struct.TYPE_12__* %8)
  %10 = call i32 @SSL_set_session(%struct.TYPE_12__* %7, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

13:                                               ; preds = %2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = icmp ne %struct.TYPE_11__* %16, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %13
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %25, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = call i32 %26(%struct.TYPE_12__* %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)** %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = call i64 %38(%struct.TYPE_12__* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %76

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %43, %13
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @CRYPTO_UP_REF(i32* %48, i32* %6, i32 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = call i32 @ssl_cert_free(%struct.TYPE_13__* %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @SSL_set_session_id_context(%struct.TYPE_12__* %64, i32 %67, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %76

75:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %74, %42, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @SSL_set_session(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @SSL_get_session(%struct.TYPE_12__*) #1

declare dso_local i32 @CRYPTO_UP_REF(i32*, i32*, i32) #1

declare dso_local i32 @ssl_cert_free(%struct.TYPE_13__*) #1

declare dso_local i32 @SSL_set_session_id_context(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
