; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_commit_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_commit_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.revision_baton = type { i64, %struct.parse_baton* }
%struct.parse_baton = type { i64, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"* Loaded revision %ld.\0A\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32*)* @commit_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @commit_callback(%struct.TYPE_3__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.revision_baton*, align 8
  %8 = alloca %struct.parse_baton*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.revision_baton*
  store %struct.revision_baton* %11, %struct.revision_baton** %7, align 8
  %12 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %13 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %12, i32 0, i32 1
  %14 = load %struct.parse_baton*, %struct.parse_baton** %13, align 8
  store %struct.parse_baton* %14, %struct.parse_baton** %8, align 8
  %15 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %16 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @svn_cmdline_printf(i32* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  br label %26

26:                                               ; preds = %19, %3
  %27 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %28 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %31 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @set_revision_mapping(i32 %29, i64 %32, i64 %35)
  %37 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %38 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %26
  %43 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %44 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %47 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %42
  %52 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %53 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %71, %51
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %59 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %64 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %68 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @set_revision_mapping(i32 %65, i64 %66, i64 %69)
  br label %71

71:                                               ; preds = %62
  %72 = load i64, i64* %9, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %9, align 8
  br label %56

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74, %42, %26
  %76 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %77 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %80 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %81
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cmdline_printf(i32*, i8*, i64) #1

declare dso_local i32 @set_revision_mapping(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
