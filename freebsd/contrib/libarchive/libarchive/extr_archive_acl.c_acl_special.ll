; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_acl_special.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_acl_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_acl = type { i32 }

@ARCHIVE_ENTRY_ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_acl*, i32, i32, i32)* @acl_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acl_special(%struct.archive_acl* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_acl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.archive_acl* %0, %struct.archive_acl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %14, -8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %54 [
    i32 128, label %19
    i32 130, label %31
    i32 129, label %43
  ]

19:                                               ; preds = %17
  %20 = load %struct.archive_acl*, %struct.archive_acl** %6, align 8
  %21 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, -449
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 7
  %26 = shl i32 %25, 6
  %27 = load %struct.archive_acl*, %struct.archive_acl** %6, align 8
  %28 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  store i32 0, i32* %5, align 4
  br label %56

31:                                               ; preds = %17
  %32 = load %struct.archive_acl*, %struct.archive_acl** %6, align 8
  %33 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, -57
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 7
  %38 = shl i32 %37, 3
  %39 = load %struct.archive_acl*, %struct.archive_acl** %6, align 8
  %40 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  store i32 0, i32* %5, align 4
  br label %56

43:                                               ; preds = %17
  %44 = load %struct.archive_acl*, %struct.archive_acl** %6, align 8
  %45 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, -8
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 7
  %50 = load %struct.archive_acl*, %struct.archive_acl** %6, align 8
  %51 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %56

54:                                               ; preds = %17
  br label %55

55:                                               ; preds = %54, %13, %4
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %43, %31, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
