; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_set.c_acl_set_fd_np.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_set.c_acl_set_fd_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_set_fd_np(i32 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %9 = icmp eq %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %37

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @_acl_type_unold(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @_acl_type_not_valid_for_acl(%struct.TYPE_6__* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %37

21:                                               ; preds = %12
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @_posix1e_acl(%struct.TYPE_6__* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = call i32 @_posix1e_acl_sort(%struct.TYPE_6__* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @___acl_set_fd(i32 %32, i32 %33, i32* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %29, %19, %10
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @_acl_type_unold(i32) #1

declare dso_local i64 @_acl_type_not_valid_for_acl(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @_posix1e_acl(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @_posix1e_acl_sort(%struct.TYPE_6__*) #1

declare dso_local i32 @___acl_set_fd(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
