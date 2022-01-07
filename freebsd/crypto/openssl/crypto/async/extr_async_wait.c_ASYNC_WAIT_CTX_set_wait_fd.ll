; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/async/extr_async_wait.c_ASYNC_WAIT_CTX_set_wait_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/async/extr_async_wait.c_ASYNC_WAIT_CTX_set_wait_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.fd_lookup_st* }
%struct.fd_lookup_st = type { void (%struct.TYPE_5__*, i8*, i32, i8*)*, i32, %struct.fd_lookup_st*, i8*, i32, i8* }

@ASYNC_F_ASYNC_WAIT_CTX_SET_WAIT_FD = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASYNC_WAIT_CTX_set_wait_fd(%struct.TYPE_5__* %0, i8* %1, i32 %2, i8* %3, void (%struct.TYPE_5__*, i8*, i32, i8*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca void (%struct.TYPE_5__*, i8*, i32, i8*)*, align 8
  %12 = alloca %struct.fd_lookup_st*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store void (%struct.TYPE_5__*, i8*, i32, i8*)* %4, void (%struct.TYPE_5__*, i8*, i32, i8*)** %11, align 8
  %13 = call %struct.fd_lookup_st* @OPENSSL_zalloc(i32 48)
  store %struct.fd_lookup_st* %13, %struct.fd_lookup_st** %12, align 8
  %14 = icmp eq %struct.fd_lookup_st* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i32, i32* @ASYNC_F_ASYNC_WAIT_CTX_SET_WAIT_FD, align 4
  %17 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %18 = call i32 @ASYNCerr(i32 %16, i32 %17)
  store i32 0, i32* %6, align 4
  br label %46

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  %22 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  %25 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  %28 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load void (%struct.TYPE_5__*, i8*, i32, i8*)*, void (%struct.TYPE_5__*, i8*, i32, i8*)** %11, align 8
  %30 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  %31 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %30, i32 0, i32 0
  store void (%struct.TYPE_5__*, i8*, i32, i8*)* %29, void (%struct.TYPE_5__*, i8*, i32, i8*)** %31, align 8
  %32 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  %33 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %32, i32 0, i32 1
  store i32 1, i32* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %35, align 8
  %37 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  %38 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %37, i32 0, i32 2
  store %struct.fd_lookup_st* %36, %struct.fd_lookup_st** %38, align 8
  %39 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %12, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store %struct.fd_lookup_st* %39, %struct.fd_lookup_st** %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  store i32 1, i32* %6, align 4
  br label %46

46:                                               ; preds = %19, %15
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.fd_lookup_st* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @ASYNCerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
