; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_get_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_FS_GENERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to find time on revision %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i32*)* @get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_time(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @svn_fs_revision_prop2(%struct.TYPE_3__** %10, i32* %11, i32 %12, i32 %13, i32 %14, i32* %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @SVN_ERR_FS_GENERAL, align 4
  %23 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %8, align 4
  %25 = call i32* @svn_error_createf(i32 %22, i32* null, i32 %23, i32 %24)
  store i32* %25, i32** %5, align 8
  br label %33

26:                                               ; preds = %4
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i32* @svn_time_from_cstring(i32* %27, i32 %30, i32* %31)
  store i32* %32, i32** %5, align 8
  br label %33

33:                                               ; preds = %26, %21
  %34 = load i32*, i32** %5, align 8
  ret i32* %34
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_prop2(%struct.TYPE_3__**, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_time_from_cstring(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
