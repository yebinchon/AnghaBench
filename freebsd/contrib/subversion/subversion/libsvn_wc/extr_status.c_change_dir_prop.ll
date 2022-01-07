; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_change_dir_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_change_dir_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.dir_baton = type { i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_COMMITTED_REV = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_LAST_AUTHOR = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_COMMITTED_DATE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_3__*, i32*)* @change_dir_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @change_dir_prop(i8* %0, i8* %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dir_baton*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.dir_baton*
  store %struct.dir_baton* %12, %struct.dir_baton** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @svn_wc_is_normal_prop(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @TRUE, align 4
  %18 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %19 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %70

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @SVN_PROP_ENTRY_COMMITTED_REV, align 4
  %26 = call i64 @strcmp(i8* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SVN_STR_TO_REV(i32 %31)
  %33 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %34 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  br label %69

35:                                               ; preds = %23
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @SVN_PROP_ENTRY_LAST_AUTHOR, align 4
  %38 = call i64 @strcmp(i8* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %42 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @apr_pstrdup(i32 %43, i32 %46)
  %48 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %49 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %68

50:                                               ; preds = %35
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* @SVN_PROP_ENTRY_COMMITTED_DATE, align 4
  %53 = call i64 @strcmp(i8* %51, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %60 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @svn_time_from_cstring(i32* %10, i32 %58, i32 %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %66 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %55, %50
  br label %68

68:                                               ; preds = %67, %40
  br label %69

69:                                               ; preds = %68, %28
  br label %70

70:                                               ; preds = %69, %20
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %71
}

declare dso_local i64 @svn_wc_is_normal_prop(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @SVN_STR_TO_REV(i32) #1

declare dso_local i32 @apr_pstrdup(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_time_from_cstring(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
