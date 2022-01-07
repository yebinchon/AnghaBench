; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_acl = type { %struct.archive_acl_entry* }
%struct.archive_acl_entry = type { i32, %struct.archive_acl_entry* }

@ARCHIVE_ENTRY_ACL_TYPE_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_acl_count(%struct.archive_acl* %0, i32 %1) #0 {
  %3 = alloca %struct.archive_acl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_acl_entry*, align 8
  store %struct.archive_acl* %0, %struct.archive_acl** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.archive_acl*, %struct.archive_acl** %3, align 8
  %8 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %7, i32 0, i32 0
  %9 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %8, align 8
  store %struct.archive_acl_entry* %9, %struct.archive_acl_entry** %6, align 8
  br label %10

10:                                               ; preds = %23, %2
  %11 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %6, align 8
  %12 = icmp ne %struct.archive_acl_entry* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %6, align 8
  %15 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %6, align 8
  %25 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %24, i32 0, i32 1
  %26 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %25, align 8
  store %struct.archive_acl_entry* %26, %struct.archive_acl_entry** %6, align 8
  br label %10

27:                                               ; preds = %10
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 3
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %30, %27
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
