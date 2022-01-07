; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support.c__posix1e_acl_entry_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support.c__posix1e_acl_entry_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_entry = type { i64, i64 }

@ACL_BRAND_POSIX = common dso_local global i64 0, align 8
@ACL_USER = common dso_local global i64 0, align 8
@ACL_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acl_entry*, %struct.acl_entry*)* @_posix1e_acl_entry_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_posix1e_acl_entry_compare(%struct.acl_entry* %0, %struct.acl_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acl_entry*, align 8
  %5 = alloca %struct.acl_entry*, align 8
  store %struct.acl_entry* %0, %struct.acl_entry** %4, align 8
  store %struct.acl_entry* %1, %struct.acl_entry** %5, align 8
  %6 = load %struct.acl_entry*, %struct.acl_entry** %4, align 8
  %7 = call i64 @_entry_brand(%struct.acl_entry* %6)
  %8 = load i64, i64* @ACL_BRAND_POSIX, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %13 = call i64 @_entry_brand(%struct.acl_entry* %12)
  %14 = load i64, i64* @ACL_BRAND_POSIX, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.acl_entry*, %struct.acl_entry** %4, align 8
  %19 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %22 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %67

26:                                               ; preds = %2
  %27 = load %struct.acl_entry*, %struct.acl_entry** %4, align 8
  %28 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %31 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %67

35:                                               ; preds = %26
  %36 = load %struct.acl_entry*, %struct.acl_entry** %4, align 8
  %37 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ACL_USER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.acl_entry*, %struct.acl_entry** %4, align 8
  %43 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ACL_GROUP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %41, %35
  %48 = load %struct.acl_entry*, %struct.acl_entry** %4, align 8
  %49 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %52 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %67

56:                                               ; preds = %47
  %57 = load %struct.acl_entry*, %struct.acl_entry** %4, align 8
  %58 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %61 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %67

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %41
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %64, %55, %34, %25
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_entry_brand(%struct.acl_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
