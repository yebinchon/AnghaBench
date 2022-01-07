; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_policy.c_secpolicy_vnode_any_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_policy.c_secpolicy_vnode_any_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }

@secpolicy_vnode_any_access.privs = internal global [5 x i32] [i32 132, i32 129, i32 128, i32 131, i32 130], align 16
@B_FALSE = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @secpolicy_vnode_any_access(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = call i64 @secpolicy_fs_owner(i32 %13, %struct.TYPE_8__* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %64

25:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %59, %25
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 5
  br i1 %29, label %30, label %62

30:                                               ; preds = %26
  %31 = load i32, i32* @B_FALSE, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* @secpolicy_vnode_any_access.privs, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  switch i32 %35, label %52 [
    i32 131, label %36
    i32 130, label %44
  ]

36:                                               ; preds = %30
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @VDIR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %59

43:                                               ; preds = %36
  br label %52

44:                                               ; preds = %30
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VDIR, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %59

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %30, %51, %43
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @priv_check_cred(%struct.TYPE_8__* %53, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %64

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %50, %42
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %26

62:                                               ; preds = %26
  %63 = load i32, i32* @EPERM, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %57, %24, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @secpolicy_fs_owner(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @priv_check_cred(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
