; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/util/extr_fs_skels.c_svn_fs_base__unparse_copy_skel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/util/extr_fs_skels.c_svn_fs_base__unparse_copy_skel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i64, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@copy_kind_real = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"soft-copy\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__unparse_copy_skel(i32** %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32* @svn_skel__make_empty_list(i32* %10)
  store i32* %11, i32** %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call %struct.TYPE_5__* @svn_fs_base__id_unparse(i32 %14, i32* %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %9, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @svn_skel__mem_atom(i32* %19, i32 %22, i32* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @svn_skel__prepend(i32 %24, i32* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @svn_skel__str_atom(i8* %41, i32* %42)
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @svn_skel__prepend(i32 %43, i32* %44)
  br label %51

46:                                               ; preds = %31, %3
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @svn_skel__mem_atom(i32* null, i32 0, i32* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @svn_skel__prepend(i32 %48, i32* %49)
  br label %51

51:                                               ; preds = %46, %38
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @svn_skel__str_atom(i8* %66, i32* %67)
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @svn_skel__prepend(i32 %68, i32* %69)
  br label %76

71:                                               ; preds = %56, %51
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @svn_skel__mem_atom(i32* null, i32 0, i32* %72)
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @svn_skel__prepend(i32 %73, i32* %74)
  br label %76

76:                                               ; preds = %71, %63
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @copy_kind_real, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @svn_skel__str_atom(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %83)
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @svn_skel__prepend(i32 %84, i32* %85)
  br label %92

87:                                               ; preds = %76
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @svn_skel__str_atom(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %88)
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @svn_skel__prepend(i32 %89, i32* %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @is_valid_copy_skel(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = call i32* @skel_err(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %97, i32** %4, align 8
  br label %102

98:                                               ; preds = %92
  %99 = load i32*, i32** %8, align 8
  %100 = load i32**, i32*** %5, align 8
  store i32* %99, i32** %100, align 8
  %101 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %101, i32** %4, align 8
  br label %102

102:                                              ; preds = %98, %96
  %103 = load i32*, i32** %4, align 8
  ret i32* %103
}

declare dso_local i32* @svn_skel__make_empty_list(i32*) #1

declare dso_local %struct.TYPE_5__* @svn_fs_base__id_unparse(i32, i32*) #1

declare dso_local i32 @svn_skel__prepend(i32, i32*) #1

declare dso_local i32 @svn_skel__mem_atom(i32*, i32, i32*) #1

declare dso_local i32 @svn_skel__str_atom(i8*, i32*) #1

declare dso_local i32 @is_valid_copy_skel(i32*) #1

declare dso_local i32* @skel_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
