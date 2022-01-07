; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_pcache1Alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_pcache1Alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }

@pcache1 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SQLITE_STATUS_PAGECACHE_SIZE = common dso_local global i32 0, align 4
@SQLITE_STATUS_PAGECACHE_USED = common dso_local global i32 0, align 4
@SQLITE_STATUS_PAGECACHE_OVERFLOW = common dso_local global i32 0, align 4
@MEMTYPE_PCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @pcache1Alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pcache1Alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcache1, i32 0, i32 6, i32 0), align 8
  %6 = call i32 @sqlite3_mutex_notheld(i32 %5)
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcache1, i32 0, i32 0), align 8
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcache1, i32 0, i32 4), align 8
  %13 = call i32 @sqlite3_mutex_enter(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcache1, i32 0, i32 5), align 8
  %15 = bitcast %struct.TYPE_5__* %14 to i32*
  %16 = bitcast i32* %15 to i8*
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %11
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcache1, i32 0, i32 5), align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcache1, i32 0, i32 5), align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcache1, i32 0, i32 1), align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcache1, i32 0, i32 1), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcache1, i32 0, i32 1), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcache1, i32 0, i32 3), align 8
  %27 = icmp slt i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcache1, i32 0, i32 2), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcache1, i32 0, i32 1), align 8
  %30 = icmp sge i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* @SQLITE_STATUS_PAGECACHE_SIZE, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @sqlite3StatusHighwater(i32 %33, i32 %34)
  %36 = load i32, i32* @SQLITE_STATUS_PAGECACHE_USED, align 4
  %37 = call i32 @sqlite3StatusUp(i32 %36, i32 1)
  br label %38

38:                                               ; preds = %19, %11
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcache1, i32 0, i32 4), align 8
  %40 = call i32 @sqlite3_mutex_leave(i32 %39)
  br label %41

41:                                               ; preds = %38, %1
  %42 = load i8*, i8** %3, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i32, i32* %2, align 4
  %46 = call i8* @sqlite3Malloc(i32 %45)
  store i8* %46, i8** %3, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @sqlite3MallocSize(i8* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcache1, i32 0, i32 4), align 8
  %53 = call i32 @sqlite3_mutex_enter(i32 %52)
  %54 = load i32, i32* @SQLITE_STATUS_PAGECACHE_SIZE, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @sqlite3StatusHighwater(i32 %54, i32 %55)
  %57 = load i32, i32* @SQLITE_STATUS_PAGECACHE_OVERFLOW, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @sqlite3StatusUp(i32 %57, i32 %58)
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcache1, i32 0, i32 4), align 8
  %61 = call i32 @sqlite3_mutex_leave(i32 %60)
  br label %62

62:                                               ; preds = %49, %44
  %63 = load i8*, i8** %3, align 8
  %64 = load i32, i32* @MEMTYPE_PCACHE, align 4
  %65 = call i32 @sqlite3MemdebugSetType(i8* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %41
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_notheld(i32) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3StatusHighwater(i32, i32) #1

declare dso_local i32 @sqlite3StatusUp(i32, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i8* @sqlite3Malloc(i32) #1

declare dso_local i32 @sqlite3MallocSize(i8*) #1

declare dso_local i32 @sqlite3MemdebugSetType(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
