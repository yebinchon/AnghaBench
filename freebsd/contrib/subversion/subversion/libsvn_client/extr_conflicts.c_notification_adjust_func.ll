; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_notification_adjust_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_notification_adjust_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.notification_adjust_baton = type { i32, i32 (i32, %struct.TYPE_6__*, i32*)*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_6__*, i32*)* @notification_adjust_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notification_adjust_func(i8* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.notification_adjust_baton*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.notification_adjust_baton*
  store %struct.notification_adjust_baton* %11, %struct.notification_adjust_baton** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.TYPE_6__* @svn_wc_dup_notify(%struct.TYPE_6__* %12, i32* %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  %15 = load %struct.notification_adjust_baton*, %struct.notification_adjust_baton** %7, align 8
  %16 = getelementptr inbounds %struct.notification_adjust_baton, %struct.notification_adjust_baton* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @svn_dirent_skip_ancestor(i32 %17, i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load %struct.notification_adjust_baton*, %struct.notification_adjust_baton** %7, align 8
  %23 = getelementptr inbounds %struct.notification_adjust_baton, %struct.notification_adjust_baton* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @svn_dirent_join(i32 %24, i8* %25, i32* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.notification_adjust_baton*, %struct.notification_adjust_baton** %7, align 8
  %31 = getelementptr inbounds %struct.notification_adjust_baton, %struct.notification_adjust_baton* %30, i32 0, i32 1
  %32 = load i32 (i32, %struct.TYPE_6__*, i32*)*, i32 (i32, %struct.TYPE_6__*, i32*)** %31, align 8
  %33 = icmp ne i32 (i32, %struct.TYPE_6__*, i32*)* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %3
  %35 = load %struct.notification_adjust_baton*, %struct.notification_adjust_baton** %7, align 8
  %36 = getelementptr inbounds %struct.notification_adjust_baton, %struct.notification_adjust_baton* %35, i32 0, i32 1
  %37 = load i32 (i32, %struct.TYPE_6__*, i32*)*, i32 (i32, %struct.TYPE_6__*, i32*)** %36, align 8
  %38 = load %struct.notification_adjust_baton*, %struct.notification_adjust_baton** %7, align 8
  %39 = getelementptr inbounds %struct.notification_adjust_baton, %struct.notification_adjust_baton* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 %37(i32 %40, %struct.TYPE_6__* %41, i32* %42)
  br label %44

44:                                               ; preds = %34, %3
  ret void
}

declare dso_local %struct.TYPE_6__* @svn_wc_dup_notify(%struct.TYPE_6__*, i32*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i32, i32) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
