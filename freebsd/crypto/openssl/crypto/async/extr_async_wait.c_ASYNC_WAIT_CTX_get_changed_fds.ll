; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/async/extr_async_wait.c_ASYNC_WAIT_CTX_get_changed_fds.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/async/extr_async_wait.c_ASYNC_WAIT_CTX_get_changed_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, %struct.fd_lookup_st* }
%struct.fd_lookup_st = type { %struct.fd_lookup_st*, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASYNC_WAIT_CTX_get_changed_fds(%struct.TYPE_3__* %0, i32* %1, i64* %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.fd_lookup_st*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %9, align 8
  store i64 %15, i64* %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64*, i64** %11, align 8
  store i64 %19, i64* %20, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32*, i32** %10, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  br label %79

27:                                               ; preds = %23, %5
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %29, align 8
  store %struct.fd_lookup_st* %30, %struct.fd_lookup_st** %12, align 8
  br label %31

31:                                               ; preds = %74, %27
  %32 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  %33 = icmp ne %struct.fd_lookup_st* %32, null
  br i1 %33, label %34, label %78

34:                                               ; preds = %31
  %35 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  %36 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  %41 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  %49 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %10, align 8
  br label %54

54:                                               ; preds = %47, %44, %39, %34
  %55 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  %56 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  %61 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load i32*, i32** %8, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  %69 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %8, align 8
  br label %74

74:                                               ; preds = %67, %64, %59, %54
  %75 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  %76 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %75, i32 0, i32 0
  %77 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %76, align 8
  store %struct.fd_lookup_st* %77, %struct.fd_lookup_st** %12, align 8
  br label %31

78:                                               ; preds = %31
  store i32 1, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %26
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
