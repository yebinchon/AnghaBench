; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_acl = type { i32, i32, i64 }

@ARCHIVE_ENTRY_ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_USER_OBJ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_acl_reset(%struct.archive_acl* %0, i32 %1) #0 {
  %3 = alloca %struct.archive_acl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.archive_acl* %0, %struct.archive_acl** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.archive_acl*, %struct.archive_acl** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @archive_acl_count(%struct.archive_acl* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 3, i32* %6, align 4
  br label %16

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, i64* @ARCHIVE_ENTRY_ACL_USER_OBJ, align 8
  %22 = load %struct.archive_acl*, %struct.archive_acl** %3, align 8
  %23 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  br label %27

24:                                               ; preds = %16
  %25 = load %struct.archive_acl*, %struct.archive_acl** %3, align 8
  %26 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = load %struct.archive_acl*, %struct.archive_acl** %3, align 8
  %29 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.archive_acl*, %struct.archive_acl** %3, align 8
  %32 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @archive_acl_count(%struct.archive_acl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
