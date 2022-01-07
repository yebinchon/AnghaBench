; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/engines/extr_e_dasync.c_dummy_pause_job.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/engines/extr_e_dasync.c_dummy_pause_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@engine_dasync_id = common dso_local global i32 0, align 4
@DUMMY_CHAR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dummy_pause_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dummy_pause_job() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32*, align 8
  %5 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false)
  %6 = call i32* (...) @ASYNC_get_current_job()
  store i32* %6, i32** %1, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %48

9:                                                ; preds = %0
  %10 = load i32*, i32** %1, align 8
  %11 = call i32* @ASYNC_get_wait_ctx(i32* %10)
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @engine_dasync_id, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %15 = bitcast i32** %4 to i8**
  %16 = call i64 @ASYNC_WAIT_CTX_get_fd(i32* %12, i32 %13, i32* %14, i8** %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  br label %46

22:                                               ; preds = %9
  %23 = call i32* @OPENSSL_malloc(i32 4)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %48

27:                                               ; preds = %22
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @engine_dasync_id, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @ASYNC_WAIT_CTX_set_wait_fd(i32* %31, i32 %32, i32 %34, i32* %35, i32 (i32*, i32, i32, i32*)* @wait_cleanup)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %27
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @engine_dasync_id, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @wait_cleanup(i32* %39, i32 %40, i32 %42, i32* %43)
  br label %48

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45, %18
  %47 = call i32 (...) @ASYNC_pause_job()
  br label %48

48:                                               ; preds = %46, %38, %26, %8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @ASYNC_get_current_job(...) #2

declare dso_local i32* @ASYNC_get_wait_ctx(i32*) #2

declare dso_local i64 @ASYNC_WAIT_CTX_get_fd(i32*, i32, i32*, i8**) #2

declare dso_local i32* @OPENSSL_malloc(i32) #2

declare dso_local i32 @ASYNC_WAIT_CTX_set_wait_fd(i32*, i32, i32, i32*, i32 (i32*, i32, i32, i32*)*) #2

declare dso_local i32 @wait_cleanup(i32*, i32, i32, i32*) #2

declare dso_local i32 @ASYNC_pause_job(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
