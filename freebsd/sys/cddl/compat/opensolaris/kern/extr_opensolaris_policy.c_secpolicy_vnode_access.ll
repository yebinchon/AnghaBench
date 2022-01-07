; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_policy.c_secpolicy_vnode_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_policy.c_secpolicy_vnode_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@VREAD = common dso_local global i32 0, align 4
@PRIV_VFS_READ = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@PRIV_VFS_WRITE = common dso_local global i32 0, align 4
@VEXEC = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@PRIV_VFS_LOOKUP = common dso_local global i32 0, align 4
@PRIV_VFS_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @secpolicy_vnode_access(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @secpolicy_fs_owner(i32 %12, i32* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %70

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @VREAD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @PRIV_VFS_READ, align 4
  %25 = call i64 @priv_check_cred(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @EACCES, align 4
  store i32 %28, i32* %5, align 4
  br label %70

29:                                               ; preds = %22, %17
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @VWRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @PRIV_VFS_WRITE, align 4
  %37 = call i64 @priv_check_cred(i32* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @EACCES, align 4
  store i32 %40, i32* %5, align 4
  br label %70

41:                                               ; preds = %34, %29
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @VEXEC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VDIR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @PRIV_VFS_LOOKUP, align 4
  %55 = call i64 @priv_check_cred(i32* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @EACCES, align 4
  store i32 %58, i32* %5, align 4
  br label %70

59:                                               ; preds = %52
  br label %68

60:                                               ; preds = %46
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @PRIV_VFS_EXEC, align 4
  %63 = call i64 @priv_check_cred(i32* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @EACCES, align 4
  store i32 %66, i32* %5, align 4
  br label %70

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %59
  br label %69

69:                                               ; preds = %68, %41
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %65, %57, %39, %27, %16
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @secpolicy_fs_owner(i32, i32*) #1

declare dso_local i64 @priv_check_cred(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
