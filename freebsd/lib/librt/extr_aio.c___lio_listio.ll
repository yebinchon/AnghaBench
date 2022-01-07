; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_aio.c___lio_listio.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_aio.c___lio_listio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiocb = type { i32 }
%struct.sigevent = type { i64 }
%struct.sigev_node = type { i32 }

@SIGEV_THREAD = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__lio_listio(i32 %0, %struct.aiocb** %1, i32 %2, %struct.sigevent* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aiocb**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sigevent*, align 8
  %10 = alloca %struct.sigev_node*, align 8
  %11 = alloca %struct.sigevent, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.aiocb** %1, %struct.aiocb*** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sigevent* %3, %struct.sigevent** %9, align 8
  %14 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %15 = icmp eq %struct.sigevent* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %18 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SIGEV_THREAD, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16, %4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.aiocb**, %struct.aiocb*** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %27 = call i32 @__sys_lio_listio(i32 %23, %struct.aiocb** %24, i32 %25, %struct.sigevent* %26)
  store i32 %27, i32* %5, align 4
  br label %57

28:                                               ; preds = %16
  %29 = load %struct.aiocb**, %struct.aiocb*** %7, align 8
  %30 = ptrtoint %struct.aiocb** %29 to i32
  %31 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %32 = call i32 @aio_sigev_alloc(i32 %30, %struct.sigevent* %31, %struct.sigev_node** %10, %struct.sigevent* %11)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %57

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.aiocb**, %struct.aiocb*** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %42 = call i32 @__sys_lio_listio(i32 %38, %struct.aiocb** %39, i32 %40, %struct.sigevent* %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %44 = bitcast %struct.sigevent* %43 to i8*
  %45 = bitcast %struct.sigevent* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 8, i1 false)
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %13, align 4
  %50 = call i32 (...) @__sigev_list_lock()
  %51 = load %struct.sigev_node*, %struct.sigev_node** %10, align 8
  %52 = call i32 @__sigev_delete_node(%struct.sigev_node* %51)
  %53 = call i32 (...) @__sigev_list_unlock()
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* @errno, align 4
  br label %55

55:                                               ; preds = %48, %37
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %35, %22
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @__sys_lio_listio(i32, %struct.aiocb**, i32, %struct.sigevent*) #1

declare dso_local i32 @aio_sigev_alloc(i32, %struct.sigevent*, %struct.sigev_node**, %struct.sigevent*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__sigev_list_lock(...) #1

declare dso_local i32 @__sigev_delete_node(%struct.sigev_node*) #1

declare dso_local i32 @__sigev_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
