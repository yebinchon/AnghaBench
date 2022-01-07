; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_sess.c_SSL_CTX_add_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_sess.c_SSL_CTX_add_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_CTX_add_session(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @SSL_SESSION_up_ref(i32* %7)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @CRYPTO_THREAD_write_lock(i32 %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @lh_SSL_SESSION_insert(i32 %15, i32* %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @SSL_SESSION_list_remove(%struct.TYPE_10__* %25, i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @SSL_SESSION_free(i32* %28)
  store i32* null, i32** %6, align 8
  br label %43

30:                                               ; preds = %20, %2
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i32* @lh_SSL_SESSION_retrieve(i32 %36, i32* %37)
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32*, i32** %4, align 8
  store i32* %41, i32** %6, align 8
  br label %42

42:                                               ; preds = %40, %33, %30
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32*, i32** %6, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @SSL_SESSION_list_add(%struct.TYPE_10__* %47, i32* %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32*, i32** %6, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @SSL_SESSION_free(i32* %54)
  store i32 0, i32* %5, align 4
  br label %83

56:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = call i64 @SSL_CTX_sess_get_cache_size(%struct.TYPE_10__* %57)
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %80, %60
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = call i64 @SSL_CTX_sess_number(%struct.TYPE_10__* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = call i64 @SSL_CTX_sess_get_cache_size(%struct.TYPE_10__* %64)
  %66 = icmp sgt i64 %63, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @remove_session_lock(%struct.TYPE_10__* %68, i32 %71, i32 0)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  br label %81

75:                                               ; preds = %67
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = call i32 @tsan_counter(i32* %78)
  br label %80

80:                                               ; preds = %75
  br label %61

81:                                               ; preds = %74, %61
  br label %82

82:                                               ; preds = %81, %56
  br label %83

83:                                               ; preds = %82, %53
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @CRYPTO_THREAD_unlock(i32 %86)
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @SSL_SESSION_up_ref(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32* @lh_SSL_SESSION_insert(i32, i32*) #1

declare dso_local i32 @SSL_SESSION_list_remove(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32* @lh_SSL_SESSION_retrieve(i32, i32*) #1

declare dso_local i32 @SSL_SESSION_list_add(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @SSL_CTX_sess_get_cache_size(%struct.TYPE_10__*) #1

declare dso_local i64 @SSL_CTX_sess_number(%struct.TYPE_10__*) #1

declare dso_local i32 @remove_session_lock(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @tsan_counter(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
