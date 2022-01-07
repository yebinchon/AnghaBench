; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_get_file_from_ra.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_get_file_from_ra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.file_baton*, i32, i32*)* @get_file_from_ra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_file_from_ra(%struct.file_baton* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.file_baton*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.file_baton* %0, %struct.file_baton** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %51, label %10

10:                                               ; preds = %3
  %11 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %12 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %11, i32 0, i32 6
  %13 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %14 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %15 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @svn_stream_open_unique(i32** %7, i32* %12, i32* null, i32 %13, i32 %16, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %22 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %21, i32 0, i32 5
  %23 = load i32, i32* @svn_checksum_md5, align 4
  %24 = load i32, i32* @TRUE, align 4
  %25 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %26 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @svn_stream_checksummed2(i32* %20, i32* null, i32* %22, i32 %23, i32 %24, i32 %27)
  store i32* %28, i32** %7, align 8
  %29 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %30 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %35 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %38 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %42 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %41, i32 0, i32 1
  %43 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %44 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @svn_ra_get_file(i32 %33, i32 %36, i32 %39, i32* %40, i32* null, i32* %42, i32 %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @svn_stream_close(i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  br label %70

51:                                               ; preds = %3
  %52 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %53 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %58 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %61 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %64 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %63, i32 0, i32 1
  %65 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %66 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @svn_ra_get_file(i32 %56, i32 %59, i32 %62, i32* null, i32* null, i32* %64, i32 %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  br label %70

70:                                               ; preds = %51, %10
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %71
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32* @svn_stream_checksummed2(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @svn_ra_get_file(i32, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @svn_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
