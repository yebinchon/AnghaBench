; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_change_rev_prop_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_change_rev_prop_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.change_rev_prop_baton = type { i32, i32, i32*, i32, i32** }

@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_FS_PROP_BASEVALUE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"revprop '%s' has unexpected value in filesystem\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @change_rev_prop_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @change_rev_prop_body(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.change_rev_prop_baton*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.change_rev_prop_baton*
  store %struct.change_rev_prop_baton* %11, %struct.change_rev_prop_baton** %6, align 8
  %12 = load %struct.change_rev_prop_baton*, %struct.change_rev_prop_baton** %6, align 8
  %13 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.change_rev_prop_baton*, %struct.change_rev_prop_baton** %6, align 8
  %16 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @TRUE, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @svn_fs_fs__get_revision_proplist(i32** %7, i32 %14, i32 %17, i32 %18, i32* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.change_rev_prop_baton*, %struct.change_rev_prop_baton** %6, align 8
  %25 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32* @svn_hash_gets(i32* %23, i32 %26)
  store i32* %27, i32** %8, align 8
  %28 = load %struct.change_rev_prop_baton*, %struct.change_rev_prop_baton** %6, align 8
  %29 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %28, i32 0, i32 4
  %30 = load i32**, i32*** %29, align 8
  %31 = icmp ne i32** %30, null
  br i1 %31, label %32, label %65

32:                                               ; preds = %2
  %33 = load %struct.change_rev_prop_baton*, %struct.change_rev_prop_baton** %6, align 8
  %34 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %33, i32 0, i32 4
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load i32*, i32** %8, align 8
  %42 = icmp ne i32* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = icmp ne i32 %40, %44
  br i1 %45, label %57, label %46

46:                                               ; preds = %32
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load i32*, i32** %8, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i64 @svn_string_compare(i32* %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %52, %32
  %58 = load i32, i32* @SVN_ERR_FS_PROP_BASEVALUE_MISMATCH, align 4
  %59 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.change_rev_prop_baton*, %struct.change_rev_prop_baton** %6, align 8
  %61 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32* @svn_error_createf(i32 %58, i32* null, i32 %59, i32 %62)
  store i32* %63, i32** %3, align 8
  br label %108

64:                                               ; preds = %52, %49, %46
  br label %65

65:                                               ; preds = %64, %2
  %66 = load i32*, i32** %8, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load %struct.change_rev_prop_baton*, %struct.change_rev_prop_baton** %6, align 8
  %70 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %68, %65
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load %struct.change_rev_prop_baton*, %struct.change_rev_prop_baton** %6, align 8
  %78 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i32*, i32** %8, align 8
  %83 = load %struct.change_rev_prop_baton*, %struct.change_rev_prop_baton** %6, align 8
  %84 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i64 @svn_string_compare(i32* %82, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81, %68
  %89 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %89, i32** %3, align 8
  br label %108

90:                                               ; preds = %81, %76, %73
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.change_rev_prop_baton*, %struct.change_rev_prop_baton** %6, align 8
  %93 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.change_rev_prop_baton*, %struct.change_rev_prop_baton** %6, align 8
  %96 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @svn_hash_sets(i32* %91, i32 %94, i32* %97)
  %99 = load %struct.change_rev_prop_baton*, %struct.change_rev_prop_baton** %6, align 8
  %100 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.change_rev_prop_baton*, %struct.change_rev_prop_baton** %6, align 8
  %103 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = call i32* @svn_fs_fs__set_revision_proplist(i32 %101, i32 %104, i32* %105, i32* %106)
  store i32* %107, i32** %3, align 8
  br label %108

108:                                              ; preds = %90, %88, %57
  %109 = load i32*, i32** %3, align 8
  ret i32* %109
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__get_revision_proplist(i32**, i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

declare dso_local i64 @svn_string_compare(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32*) #1

declare dso_local i32* @svn_fs_fs__set_revision_proplist(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
