; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_entry.c_acl_create_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_entry.c_acl_create_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.acl }
%struct.acl = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ACL_MAX_ENTRIES = common dso_local global i64 0, align 8
@ACL_UNDEFINED_TAG = common dso_local global i32 0, align 4
@ACL_UNDEFINED_ID = common dso_local global i32 0, align 4
@ACL_PERM_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_create_entry(%struct.TYPE_5__** %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca %struct.acl*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %5, align 8
  %7 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %8 = icmp eq %struct.TYPE_5__** %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %54

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store %struct.acl* %14, %struct.acl** %6, align 8
  %15 = load %struct.acl*, %struct.acl** %6, align 8
  %16 = getelementptr inbounds %struct.acl, %struct.acl* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = load i64, i64* @ACL_MAX_ENTRIES, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %54

23:                                               ; preds = %11
  %24 = load %struct.acl*, %struct.acl** %6, align 8
  %25 = getelementptr inbounds %struct.acl, %struct.acl* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load %struct.acl*, %struct.acl** %6, align 8
  %28 = getelementptr inbounds %struct.acl, %struct.acl* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %29
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %32, align 8
  %33 = load i32, i32* @ACL_UNDEFINED_TAG, align 4
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @ACL_UNDEFINED_ID, align 4
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @ACL_PERM_NONE, align 4
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %23, %21, %9
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
