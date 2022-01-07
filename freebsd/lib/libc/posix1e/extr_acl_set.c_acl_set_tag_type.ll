; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_set.c_acl_set_tag_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_set.c_acl_set_tag_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ACL_BRAND_POSIX = common dso_local global i32 0, align 4
@ACL_BRAND_NFS4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_set_tag_type(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  store i32 %9, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %42

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %34 [
    i32 130, label %12
    i32 131, label %12
    i32 134, label %23
  ]

12:                                               ; preds = %10, %10
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = load i32, i32* @ACL_BRAND_POSIX, align 4
  %15 = call i32 @_entry_brand_may_be(%struct.TYPE_5__* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %42

19:                                               ; preds = %12
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = load i32, i32* @ACL_BRAND_POSIX, align 4
  %22 = call i32 @_entry_brand_as(%struct.TYPE_5__* %20, i32 %21)
  br label %34

23:                                               ; preds = %10
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = load i32, i32* @ACL_BRAND_NFS4, align 4
  %26 = call i32 @_entry_brand_may_be(%struct.TYPE_5__* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %42

30:                                               ; preds = %23
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = load i32, i32* @ACL_BRAND_NFS4, align 4
  %33 = call i32 @_entry_brand_as(%struct.TYPE_5__* %31, i32 %32)
  br label %34

34:                                               ; preds = %10, %30, %19
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %40 [
    i32 128, label %36
    i32 129, label %36
    i32 132, label %36
    i32 133, label %36
    i32 131, label %36
    i32 130, label %36
    i32 134, label %36
  ]

36:                                               ; preds = %34, %34, %34, %34, %34, %34, %34
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %36, %28, %17, %8
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @_entry_brand_may_be(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @_entry_brand_as(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
