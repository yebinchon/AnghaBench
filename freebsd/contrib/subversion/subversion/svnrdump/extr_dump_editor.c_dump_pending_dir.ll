; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_dump_pending_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_dump_pending_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_edit_baton = type { %struct.dir_baton*, i32 }
%struct.dir_baton = type { i64, i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dump_edit_baton*, i32*)* @dump_pending_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dump_pending_dir(%struct.dump_edit_baton* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dump_edit_baton*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dir_baton*, align 8
  %7 = alloca i32*, align 8
  store %struct.dump_edit_baton* %0, %struct.dump_edit_baton** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %4, align 8
  %9 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %8, i32 0, i32 0
  %10 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  store %struct.dir_baton* %10, %struct.dir_baton** %6, align 8
  store i32* null, i32** %7, align 8
  %11 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %12 = icmp ne %struct.dir_baton* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %14, i32** %3, align 8
  br label %72

15:                                               ; preds = %2
  %16 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %17 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %22 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %25 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %28 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @get_props_content(i32 %23, i32** %7, i32 %26, i32 %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  br label %34

34:                                               ; preds = %20, %15
  %35 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %4, align 8
  %36 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %39 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i64, i64* @FALSE, align 8
  %43 = load i64, i64* @FALSE, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @svn_repos__dump_node_record(i32 %37, i32 %40, i32* %41, i64 %42, i32 0, i64 %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %4, align 8
  %48 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @svn_stream_puts(i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %53 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %34
  %57 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %58 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @apr_hash_clear(i32 %59)
  %61 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %62 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @apr_hash_clear(i32 %63)
  %65 = load i64, i64* @FALSE, align 8
  %66 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %67 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %56, %34
  %69 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %4, align 8
  %70 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %69, i32 0, i32 0
  store %struct.dir_baton* null, %struct.dir_baton** %70, align 8
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %71, i32** %3, align 8
  br label %72

72:                                               ; preds = %68, %13
  %73 = load i32*, i32** %3, align 8
  ret i32* %73
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_props_content(i32, i32**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_repos__dump_node_record(i32, i32, i32*, i64, i32, i64, i32*) #1

declare dso_local i32 @svn_stream_puts(i32, i8*) #1

declare dso_local i32 @apr_hash_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
