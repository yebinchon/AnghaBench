; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs.c_fs_freeze.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs.c_fs_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.fs_freeze_baton_t = type { i8*, i32, %struct.TYPE_6__* }

@TRUE = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_PACK_LOCK_FORMAT = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32, i8*, i32*)* @fs_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fs_freeze(%struct.TYPE_6__* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.fs_freeze_baton_t, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.fs_freeze_baton_t, %struct.fs_freeze_baton_t* %10, i32 0, i32 2
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds %struct.fs_freeze_baton_t, %struct.fs_freeze_baton_t* %10, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds %struct.fs_freeze_baton_t, %struct.fs_freeze_baton_t* %10, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i32 @svn_fs__check_fs(%struct.TYPE_6__* %20, i32 %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SVN_FS_FS__MIN_PACK_LOCK_FORMAT, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @svn_fs_fs__with_pack_lock(%struct.TYPE_6__* %30, i32 (%struct.fs_freeze_baton_t*, i32*)* @fs_freeze_body2, %struct.fs_freeze_baton_t* %10, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  br label %38

34:                                               ; preds = %4
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @fs_freeze_body2(%struct.fs_freeze_baton_t* %10, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %39
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs__check_fs(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @svn_fs_fs__with_pack_lock(%struct.TYPE_6__*, i32 (%struct.fs_freeze_baton_t*, i32*)*, %struct.fs_freeze_baton_t*, i32*) #1

declare dso_local i32 @fs_freeze_body2(%struct.fs_freeze_baton_t*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
