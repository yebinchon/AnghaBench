; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_aio.c___aio_fsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_aio.c___aio_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiocb = type { %struct.sigevent }
%struct.sigevent = type { i64 }
%struct.sigev_node = type { i32 }

@SIGEV_THREAD = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__aio_fsync(i32 %0, %struct.aiocb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.aiocb*, align 8
  %6 = alloca %struct.sigev_node*, align 8
  %7 = alloca %struct.sigevent, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.aiocb* %1, %struct.aiocb** %5, align 8
  %10 = load %struct.aiocb*, %struct.aiocb** %5, align 8
  %11 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SIGEV_THREAD, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.aiocb*, %struct.aiocb** %5, align 8
  %19 = call i32 @__sys_aio_fsync(i32 %17, %struct.aiocb* %18)
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load %struct.aiocb*, %struct.aiocb** %5, align 8
  %22 = ptrtoint %struct.aiocb* %21 to i32
  %23 = load %struct.aiocb*, %struct.aiocb** %5, align 8
  %24 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %23, i32 0, i32 0
  %25 = call i32 @aio_sigev_alloc(i32 %22, %struct.sigevent* %24, %struct.sigev_node** %6, %struct.sigevent* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %49

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.aiocb*, %struct.aiocb** %5, align 8
  %33 = call i32 @__sys_aio_fsync(i32 %31, %struct.aiocb* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.aiocb*, %struct.aiocb** %5, align 8
  %35 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %34, i32 0, i32 0
  %36 = bitcast %struct.sigevent* %35 to i8*
  %37 = bitcast %struct.sigevent* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %9, align 4
  %42 = call i32 (...) @__sigev_list_lock()
  %43 = load %struct.sigev_node*, %struct.sigev_node** %6, align 8
  %44 = call i32 @__sigev_delete_node(%struct.sigev_node* %43)
  %45 = call i32 (...) @__sigev_list_unlock()
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* @errno, align 4
  br label %47

47:                                               ; preds = %40, %30
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %28, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @__sys_aio_fsync(i32, %struct.aiocb*) #1

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
