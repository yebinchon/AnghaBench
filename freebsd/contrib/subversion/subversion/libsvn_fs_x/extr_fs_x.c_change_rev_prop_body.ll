; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_change_rev_prop_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_change_rev_prop_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32** }

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
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %6, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @TRUE, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @svn_fs_x__get_revision_proplist(i32** %7, i32 %14, i32 %17, i32 %18, i32 %19, i32* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @svn_hash_gets(i32* %24, i32 %27)
  store i32* %28, i32** %8, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i32**, i32*** %30, align 8
  %32 = icmp ne i32** %31, null
  br i1 %32, label %33, label %66

33:                                               ; preds = %2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = icmp ne i32 %41, %45
  br i1 %46, label %58, label %47

47:                                               ; preds = %33
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @svn_string_compare(i32* %54, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53, %33
  %59 = load i32, i32* @SVN_ERR_FS_PROP_BASEVALUE_MISMATCH, align 4
  %60 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32* @svn_error_createf(i32 %59, i32* null, i32 %60, i32 %63)
  store i32* %64, i32** %3, align 8
  br label %109

65:                                               ; preds = %53, %50, %47
  br label %66

66:                                               ; preds = %65, %2
  %67 = load i32*, i32** %8, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %69, %66
  %75 = load i32*, i32** %8, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @svn_string_compare(i32* %83, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82, %69
  %90 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %90, i32** %3, align 8
  br label %109

91:                                               ; preds = %82, %77, %74
  %92 = load i32*, i32** %7, align 8
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @svn_hash_sets(i32* %92, i32 %95, i32* %98)
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = call i32* @svn_fs_x__set_revision_proplist(i32 %102, i32 %105, i32* %106, i32* %107)
  store i32* %108, i32** %3, align 8
  br label %109

109:                                              ; preds = %91, %89, %58
  %110 = load i32*, i32** %3, align 8
  ret i32* %110
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__get_revision_proplist(i32**, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

declare dso_local i64 @svn_string_compare(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32*) #1

declare dso_local i32* @svn_fs_x__set_revision_proplist(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
