; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zil.c_zil_alloc_lwb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zil.c_zil_alloc_lwb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i8*, i64, i32*, i32*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@zil_lwb_cache = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@LWB_STATE_CLOSED = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_ZILOG2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*, i32*, i32, i32)* @zil_alloc_lwb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @zil_alloc_lwb(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @zil_lwb_cache, align 4
  %11 = load i32, i32* @KM_SLEEP, align 4
  %12 = call %struct.TYPE_8__* @kmem_cache_alloc(i32 %10, i32 %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %9, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 14
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 13
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 12
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @LWB_STATE_CLOSED, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i8* @BP_GET_LSIZE(i32* %26)
  %28 = call i32 @zio_buf_alloc(i8* %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 9
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 8
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 7
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 6
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @BP_GET_CHECKSUM(i32* %42)
  %44 = load i64, i64* @ZIO_CHECKSUM_ZILOG2, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 4, i32* %48, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i8* @BP_GET_LSIZE(i32* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  br label %61

53:                                               ; preds = %4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i8* @BP_GET_LSIZE(i32* %56)
  %58 = getelementptr i8, i8* %57, i64 -4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %53, %46
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = call i32 @mutex_enter(i32* %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = call i32 @list_insert_tail(i32* %66, %struct.TYPE_8__* %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = call i32 @mutex_exit(i32* %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = call i32 @MUTEX_HELD(i32* %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT(i32 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = call i32 @avl_is_empty(i32* %80)
  %82 = call i32 @ASSERT(i32 %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = call i32 @list_is_empty(i32* %84)
  %86 = call i32 @VERIFY(i32 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  ret %struct.TYPE_8__* %87
}

declare dso_local %struct.TYPE_8__* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @zio_buf_alloc(i8*) #1

declare dso_local i8* @BP_GET_LSIZE(i32*) #1

declare dso_local i64 @BP_GET_CHECKSUM(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @list_insert_tail(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @avl_is_empty(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @list_is_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
