; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_push_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_push_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revision_baton = type { %struct.directory_baton*, i32 }
%struct.directory_baton = type { i8*, i64, i8*, %struct.directory_baton*, i8* }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.revision_baton*, i8*, i8*, i64, i8*, i64)* @push_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_directory(%struct.revision_baton* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.revision_baton*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.directory_baton*, align 8
  %14 = alloca i8*, align 8
  store %struct.revision_baton* %0, %struct.revision_baton** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %16 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.directory_baton* @apr_pcalloc(i32 %17, i32 40)
  store %struct.directory_baton* %18, %struct.directory_baton** %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %6
  %22 = load i8*, i8** %11, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br label %30

30:                                               ; preds = %28, %6
  %31 = phi i1 [ true, %6 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %32)
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %30
  %37 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %38 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %37, i32 0, i32 0
  %39 = load %struct.directory_baton*, %struct.directory_baton** %38, align 8
  %40 = getelementptr inbounds %struct.directory_baton, %struct.directory_baton* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %43 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %42, i32 0, i32 0
  %44 = load %struct.directory_baton*, %struct.directory_baton** %43, align 8
  %45 = getelementptr inbounds %struct.directory_baton, %struct.directory_baton* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @ARE_VALID_COPY_ARGS(i8* %41, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %36
  %50 = load i8*, i8** %9, align 8
  %51 = call i8* @svn_relpath_basename(i8* %50, i32* null)
  store i8* %51, i8** %14, align 8
  %52 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %53 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %52, i32 0, i32 0
  %54 = load %struct.directory_baton*, %struct.directory_baton** %53, align 8
  %55 = getelementptr inbounds %struct.directory_baton, %struct.directory_baton* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %59 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @svn_relpath_join(i8* %56, i8* %57, i32 %60)
  store i8* %61, i8** %11, align 8
  %62 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %63 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %62, i32 0, i32 0
  %64 = load %struct.directory_baton*, %struct.directory_baton** %63, align 8
  %65 = getelementptr inbounds %struct.directory_baton, %struct.directory_baton* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %49, %36, %30
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.directory_baton*, %struct.directory_baton** %13, align 8
  %70 = getelementptr inbounds %struct.directory_baton, %struct.directory_baton* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.directory_baton*, %struct.directory_baton** %13, align 8
  %73 = getelementptr inbounds %struct.directory_baton, %struct.directory_baton* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.directory_baton*, %struct.directory_baton** %13, align 8
  %76 = getelementptr inbounds %struct.directory_baton, %struct.directory_baton* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.directory_baton*, %struct.directory_baton** %13, align 8
  %79 = getelementptr inbounds %struct.directory_baton, %struct.directory_baton* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %81 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %80, i32 0, i32 0
  %82 = load %struct.directory_baton*, %struct.directory_baton** %81, align 8
  %83 = load %struct.directory_baton*, %struct.directory_baton** %13, align 8
  %84 = getelementptr inbounds %struct.directory_baton, %struct.directory_baton* %83, i32 0, i32 3
  store %struct.directory_baton* %82, %struct.directory_baton** %84, align 8
  %85 = load %struct.directory_baton*, %struct.directory_baton** %13, align 8
  %86 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %87 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %86, i32 0, i32 0
  store %struct.directory_baton* %85, %struct.directory_baton** %87, align 8
  ret void
}

declare dso_local %struct.directory_baton* @apr_pcalloc(i32, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT_NO_RETURN(i32) #1

declare dso_local i64 @ARE_VALID_COPY_ARGS(i8*, i64) #1

declare dso_local i8* @svn_relpath_basename(i8*, i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
