; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_aio.c_aio_sigev_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_aio.c_aio_sigev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigev_node = type { i32, i32 }
%struct.sigevent = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SI_ASYNCIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@aio_dispatch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sigevent*, %struct.sigev_node**, %struct.sigevent*)* @aio_sigev_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_sigev_alloc(i32 %0, %struct.sigevent* %1, %struct.sigev_node** %2, %struct.sigevent* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sigevent*, align 8
  %8 = alloca %struct.sigev_node**, align 8
  %9 = alloca %struct.sigevent*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.sigevent* %1, %struct.sigevent** %7, align 8
  store %struct.sigev_node** %2, %struct.sigev_node*** %8, align 8
  store %struct.sigevent* %3, %struct.sigevent** %9, align 8
  %10 = call i64 (...) @__sigev_check_init()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %50

14:                                               ; preds = %4
  %15 = load i32, i32* @SI_ASYNCIO, align 4
  %16 = load %struct.sigevent*, %struct.sigevent** %7, align 8
  %17 = call %struct.sigev_node* @__sigev_alloc(i32 %15, %struct.sigevent* %16, i32* null, i32 1)
  %18 = load %struct.sigev_node**, %struct.sigev_node*** %8, align 8
  store %struct.sigev_node* %17, %struct.sigev_node** %18, align 8
  %19 = load %struct.sigev_node**, %struct.sigev_node*** %8, align 8
  %20 = load %struct.sigev_node*, %struct.sigev_node** %19, align 8
  %21 = icmp eq %struct.sigev_node* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @EAGAIN, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %50

24:                                               ; preds = %14
  %25 = load %struct.sigevent*, %struct.sigevent** %9, align 8
  %26 = load %struct.sigevent*, %struct.sigevent** %7, align 8
  %27 = bitcast %struct.sigevent* %25 to i8*
  %28 = bitcast %struct.sigevent* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.sigev_node**, %struct.sigev_node*** %8, align 8
  %31 = load %struct.sigev_node*, %struct.sigev_node** %30, align 8
  %32 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.sigev_node**, %struct.sigev_node*** %8, align 8
  %34 = load %struct.sigev_node*, %struct.sigev_node** %33, align 8
  %35 = load %struct.sigevent*, %struct.sigevent** %7, align 8
  %36 = load %struct.sigev_node**, %struct.sigev_node*** %8, align 8
  %37 = load %struct.sigev_node*, %struct.sigev_node** %36, align 8
  %38 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__sigev_get_sigevent(%struct.sigev_node* %34, %struct.sigevent* %35, i32 %39)
  %41 = load i32, i32* @aio_dispatch, align 4
  %42 = load %struct.sigev_node**, %struct.sigev_node*** %8, align 8
  %43 = load %struct.sigev_node*, %struct.sigev_node** %42, align 8
  %44 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = call i32 (...) @__sigev_list_lock()
  %46 = load %struct.sigev_node**, %struct.sigev_node*** %8, align 8
  %47 = load %struct.sigev_node*, %struct.sigev_node** %46, align 8
  %48 = call i32 @__sigev_register(%struct.sigev_node* %47)
  %49 = call i32 (...) @__sigev_list_unlock()
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %24, %22, %12
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @__sigev_check_init(...) #1

declare dso_local %struct.sigev_node* @__sigev_alloc(i32, %struct.sigevent*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__sigev_get_sigevent(%struct.sigev_node*, %struct.sigevent*, i32) #1

declare dso_local i32 @__sigev_list_lock(...) #1

declare dso_local i32 @__sigev_register(%struct.sigev_node*) #1

declare dso_local i32 @__sigev_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
