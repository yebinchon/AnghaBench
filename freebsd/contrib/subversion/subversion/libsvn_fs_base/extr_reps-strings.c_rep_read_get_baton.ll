; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_rep_read_get_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_rep_read_get_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rep_read_baton = type { i8*, i64, i32, i32*, i32*, i32, i64, i8*, i8* }

@svn_checksum_md5 = common dso_local global i32 0, align 4
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.rep_read_baton**, i32*, i8*, i64, i32*, i32*)* @rep_read_get_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rep_read_get_baton(%struct.rep_read_baton** %0, i32* %1, i8* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.rep_read_baton**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.rep_read_baton*, align 8
  store %struct.rep_read_baton** %0, %struct.rep_read_baton*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = call %struct.rep_read_baton* @apr_pcalloc(i32* %14, i32 72)
  store %struct.rep_read_baton* %15, %struct.rep_read_baton** %13, align 8
  %16 = load i32, i32* @svn_checksum_md5, align 4
  %17 = load i32*, i32** %12, align 8
  %18 = call i8* @svn_checksum_ctx_create(i32 %16, i32* %17)
  %19 = load %struct.rep_read_baton*, %struct.rep_read_baton** %13, align 8
  %20 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %19, i32 0, i32 8
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @svn_checksum_sha1, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = call i8* @svn_checksum_ctx_create(i32 %21, i32* %22)
  %24 = load %struct.rep_read_baton*, %struct.rep_read_baton** %13, align 8
  %25 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %6
  %29 = load %struct.rep_read_baton*, %struct.rep_read_baton** %13, align 8
  %30 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %29, i32 0, i32 6
  %31 = load i32*, i32** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @svn_fs_base__rep_contents_size(i64* %30, i32* %31, i8* %32, i32* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  br label %40

37:                                               ; preds = %6
  %38 = load %struct.rep_read_baton*, %struct.rep_read_baton** %13, align 8
  %39 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %28
  %41 = load i32, i32* @FALSE, align 4
  %42 = load %struct.rep_read_baton*, %struct.rep_read_baton** %13, align 8
  %43 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.rep_read_baton*, %struct.rep_read_baton** %13, align 8
  %46 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %45, i32 0, i32 4
  store i32* %44, i32** %46, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32*, i32** %11, align 8
  br label %52

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32* [ %50, %49 ], [ null, %51 ]
  %54 = load %struct.rep_read_baton*, %struct.rep_read_baton** %13, align 8
  %55 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %54, i32 0, i32 3
  store i32* %53, i32** %55, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @svn_pool_create(i32* %56)
  %58 = load %struct.rep_read_baton*, %struct.rep_read_baton** %13, align 8
  %59 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.rep_read_baton*, %struct.rep_read_baton** %13, align 8
  %62 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.rep_read_baton*, %struct.rep_read_baton** %13, align 8
  %64 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.rep_read_baton*, %struct.rep_read_baton** %13, align 8
  %66 = load %struct.rep_read_baton**, %struct.rep_read_baton*** %7, align 8
  store %struct.rep_read_baton* %65, %struct.rep_read_baton** %66, align 8
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %67
}

declare dso_local %struct.rep_read_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @svn_checksum_ctx_create(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__rep_contents_size(i64*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_pool_create(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
