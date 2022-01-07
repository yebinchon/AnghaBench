; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_aio.c_aio_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_aio.c_aio_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiocb = type { %struct.sigevent }
%struct.sigevent = type { i64 }
%struct.sigev_node = type { i32 }

@SIGEV_THREAD = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aiocb*, i32 (%struct.aiocb*)*)* @aio_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_io(%struct.aiocb* %0, i32 (%struct.aiocb*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aiocb*, align 8
  %5 = alloca i32 (%struct.aiocb*)*, align 8
  %6 = alloca %struct.sigev_node*, align 8
  %7 = alloca %struct.sigevent, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aiocb* %0, %struct.aiocb** %4, align 8
  store i32 (%struct.aiocb*)* %1, i32 (%struct.aiocb*)** %5, align 8
  %10 = load %struct.aiocb*, %struct.aiocb** %4, align 8
  %11 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SIGEV_THREAD, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32 (%struct.aiocb*)*, i32 (%struct.aiocb*)** %5, align 8
  %18 = load %struct.aiocb*, %struct.aiocb** %4, align 8
  %19 = call i32 %17(%struct.aiocb* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %50

21:                                               ; preds = %2
  %22 = load %struct.aiocb*, %struct.aiocb** %4, align 8
  %23 = ptrtoint %struct.aiocb* %22 to i32
  %24 = load %struct.aiocb*, %struct.aiocb** %4, align 8
  %25 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %24, i32 0, i32 0
  %26 = call i32 @aio_sigev_alloc(i32 %23, %struct.sigevent* %25, %struct.sigev_node** %6, %struct.sigevent* %7)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %21
  %32 = load i32 (%struct.aiocb*)*, i32 (%struct.aiocb*)** %5, align 8
  %33 = load %struct.aiocb*, %struct.aiocb** %4, align 8
  %34 = call i32 %32(%struct.aiocb* %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.aiocb*, %struct.aiocb** %4, align 8
  %36 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %35, i32 0, i32 0
  %37 = bitcast %struct.sigevent* %36 to i8*
  %38 = bitcast %struct.sigevent* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load i32, i32* @errno, align 4
  store i32 %42, i32* %9, align 4
  %43 = call i32 (...) @__sigev_list_lock()
  %44 = load %struct.sigev_node*, %struct.sigev_node** %6, align 8
  %45 = call i32 @__sigev_delete_node(%struct.sigev_node* %44)
  %46 = call i32 (...) @__sigev_list_unlock()
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* @errno, align 4
  br label %48

48:                                               ; preds = %41, %31
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %29, %16
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

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
