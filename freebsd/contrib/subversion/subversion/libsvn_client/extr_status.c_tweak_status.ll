; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_status.c_tweak_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_status.c_tweak_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.status_baton = type { i32, i32* (i32, i8*, i32*, i32*)*, i32, i64, i64, i64, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_status_deleted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_6__*, i32*)* @tweak_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tweak_status(i8* %0, i8* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.status_baton*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.status_baton*
  store %struct.status_baton* %15, %struct.status_baton** %10, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %11, align 8
  %17 = load %struct.status_baton*, %struct.status_baton** %10, align 8
  %18 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load %struct.status_baton*, %struct.status_baton** %10, align 8
  %23 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.status_baton*, %struct.status_baton** %10, align 8
  %26 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @svn_dirent_skip_ancestor(i64 %27, i8* %28)
  %30 = load i32*, i32** %9, align 8
  %31 = call i8* @svn_dirent_join(i32 %24, i32 %29, i32* %30)
  store i8* %31, i8** %11, align 8
  br label %32

32:                                               ; preds = %21, %4
  %33 = load %struct.status_baton*, %struct.status_baton** %10, align 8
  %34 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.status_baton*, %struct.status_baton** %10, align 8
  %44 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @svn_hash_gets(i64 %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %42, %37
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %52, i32** %5, align 8
  br label %86

53:                                               ; preds = %42, %32
  %54 = load %struct.status_baton*, %struct.status_baton** %10, align 8
  %55 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call %struct.TYPE_6__* @svn_wc_dup_status3(%struct.TYPE_6__* %59, i32* %60)
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %13, align 8
  %62 = load i32, i32* @svn_wc_status_deleted, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %8, align 8
  br label %66

66:                                               ; preds = %58, %53
  %67 = load %struct.status_baton*, %struct.status_baton** %10, align 8
  %68 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @svn_client__create_status(i32** %12, i32 %69, i8* %70, %struct.TYPE_6__* %71, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load %struct.status_baton*, %struct.status_baton** %10, align 8
  %77 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %76, i32 0, i32 1
  %78 = load i32* (i32, i8*, i32*, i32*)*, i32* (i32, i8*, i32*, i32*)** %77, align 8
  %79 = load %struct.status_baton*, %struct.status_baton** %10, align 8
  %80 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = call i32* %78(i32 %81, i8* %82, i32* %83, i32* %84)
  store i32* %85, i32** %5, align 8
  br label %86

86:                                               ; preds = %66, %51
  %87 = load i32*, i32** %5, align 8
  ret i32* %87
}

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_skip_ancestor(i64, i8*) #1

declare dso_local i32 @svn_hash_gets(i64, i32) #1

declare dso_local %struct.TYPE_6__* @svn_wc_dup_status3(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client__create_status(i32**, i32, i8*, %struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
