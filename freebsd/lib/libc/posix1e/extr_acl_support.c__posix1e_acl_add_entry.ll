; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support.c__posix1e_acl_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support.c__posix1e_acl_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.acl }
%struct.acl = type { i64, %struct.acl_entry* }
%struct.acl_entry = type { i32, i32, i32 }

@ACL_MAX_ENTRIES = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_posix1e_acl_add_entry(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.acl*, align 8
  %11 = alloca %struct.acl_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.acl* %13, %struct.acl** %10, align 8
  %14 = load %struct.acl*, %struct.acl** %10, align 8
  %15 = getelementptr inbounds %struct.acl, %struct.acl* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ACL_MAX_ENTRIES, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %42

21:                                               ; preds = %4
  %22 = load %struct.acl*, %struct.acl** %10, align 8
  %23 = getelementptr inbounds %struct.acl, %struct.acl* %22, i32 0, i32 1
  %24 = load %struct.acl_entry*, %struct.acl_entry** %23, align 8
  %25 = load %struct.acl*, %struct.acl** %10, align 8
  %26 = getelementptr inbounds %struct.acl, %struct.acl* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %24, i64 %27
  store %struct.acl_entry* %28, %struct.acl_entry** %11, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.acl_entry*, %struct.acl_entry** %11, align 8
  %31 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.acl_entry*, %struct.acl_entry** %11, align 8
  %34 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.acl_entry*, %struct.acl_entry** %11, align 8
  %37 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.acl*, %struct.acl** %10, align 8
  %39 = getelementptr inbounds %struct.acl, %struct.acl* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %39, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %21, %19
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
