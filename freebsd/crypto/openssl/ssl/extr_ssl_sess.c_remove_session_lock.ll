; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_sess.c_remove_session_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_sess.c_remove_session_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)*, i32, i32 }
%struct.TYPE_14__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32)* @remove_session_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_session_lock(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %10 = icmp ne %struct.TYPE_14__* %9, null
  br i1 %10, label %11, label %69

11:                                               ; preds = %3
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %69

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @CRYPTO_THREAD_write_lock(i32 %22)
  br label %24

24:                                               ; preds = %19, %16
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = call %struct.TYPE_14__* @lh_SSL_SESSION_retrieve(i32 %27, %struct.TYPE_14__* %28)
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %7, align 8
  %30 = icmp ne %struct.TYPE_14__* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  store i32 1, i32* %8, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %36 = call %struct.TYPE_14__* @lh_SSL_SESSION_delete(i32 %34, %struct.TYPE_14__* %35)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %7, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %39 = call i32 @SSL_SESSION_list_remove(%struct.TYPE_15__* %37, %struct.TYPE_14__* %38)
  br label %40

40:                                               ; preds = %31, %24
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @CRYPTO_THREAD_unlock(i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)** %52, align 8
  %54 = icmp ne i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)** %57, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %61 = call i32 %58(%struct.TYPE_15__* %59, %struct.TYPE_14__* %60)
  br label %62

62:                                               ; preds = %55, %50
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = call i32 @SSL_SESSION_free(%struct.TYPE_14__* %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %70

69:                                               ; preds = %11, %3
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %68
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local %struct.TYPE_14__* @lh_SSL_SESSION_retrieve(i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @lh_SSL_SESSION_delete(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @SSL_SESSION_list_remove(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

declare dso_local i32 @SSL_SESSION_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
