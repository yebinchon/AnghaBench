; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_policy.c_secpolicy_setid_setsticky_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_policy.c_secpolicy_setid_setsticky_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.vattr = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i64 }

@VDIR = common dso_local global i64 0, align 8
@S_ISTXT = common dso_local global i32 0, align 4
@PRIV_VFS_STICKYFILE = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@PRIV_VFS_ADMIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @secpolicy_setid_setsticky_clear(%struct.TYPE_9__* %0, %struct.vattr* %1, %struct.vattr* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.vattr*, align 8
  %8 = alloca %struct.vattr*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.vattr* %1, %struct.vattr** %7, align 8
  store %struct.vattr* %2, %struct.vattr** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %15 = call i64 @secpolicy_fs_owner(i32 %13, %struct.TYPE_10__* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %83

18:                                               ; preds = %4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VDIR, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %18
  %25 = load %struct.vattr*, %struct.vattr** %7, align 8
  %26 = getelementptr inbounds %struct.vattr, %struct.vattr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @S_ISTXT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = load i32, i32* @PRIV_VFS_STICKYFILE, align 4
  %34 = call i32 @priv_check_cred(%struct.TYPE_10__* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @EFTYPE, align 4
  store i32 %37, i32* %5, align 4
  br label %83

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %24, %18
  %40 = load %struct.vattr*, %struct.vattr** %7, align 8
  %41 = getelementptr inbounds %struct.vattr, %struct.vattr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @S_ISGID, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = load %struct.vattr*, %struct.vattr** %8, align 8
  %50 = getelementptr inbounds %struct.vattr, %struct.vattr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @secpolicy_vnode_setids_setgids(%struct.TYPE_9__* %47, %struct.TYPE_10__* %48, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %83

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %39
  %59 = load %struct.vattr*, %struct.vattr** %7, align 8
  %60 = getelementptr inbounds %struct.vattr, %struct.vattr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @S_ISUID, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %58
  %66 = load %struct.vattr*, %struct.vattr** %8, align 8
  %67 = getelementptr inbounds %struct.vattr, %struct.vattr* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %75 = load i32, i32* @PRIV_VFS_ADMIN, align 4
  %76 = call i32 @priv_check_cred(%struct.TYPE_10__* %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %5, align 4
  br label %83

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %65, %58
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %79, %55, %36, %17
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @secpolicy_fs_owner(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @priv_check_cred(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @secpolicy_vnode_setids_setgids(%struct.TYPE_9__*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
