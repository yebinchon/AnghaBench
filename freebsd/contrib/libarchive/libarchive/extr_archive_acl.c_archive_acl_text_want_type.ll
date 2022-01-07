; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_text_want_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_text_want_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_acl = type { i32 }

@ARCHIVE_ENTRY_ACL_TYPE_NFS4 = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_TYPE_POSIX1E = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_acl*, i32)* @archive_acl_text_want_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_acl_text_want_type(%struct.archive_acl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_acl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.archive_acl* %0, %struct.archive_acl** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.archive_acl*, %struct.archive_acl** %4, align 8
  %8 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.archive_acl*, %struct.archive_acl** %4, align 8
  %15 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_POSIX1E, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %48

21:                                               ; preds = %13
  %22 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  store i32 %22, i32* %3, align 4
  br label %48

23:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_DEFAULT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_DEFAULT, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_POSIX1E, align 4
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %44, %21, %20
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
