; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/util/extr_fs_skels.c_svn_fs_base__unparse_lock_skel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/util/extr_fs_skels.c_svn_fs_base__unparse_lock_skel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__unparse_lock_skel(i32** %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = call i32* @svn_skel__make_empty_list(i32* %9)
  store i32* %10, i32** %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i8* @svn_time_to_cstring(i64 %18, i32* %19)
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @svn_skel__str_atom(i8* %20, i32* %21)
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @svn_skel__prepend(i32 %22, i32* %23)
  br label %30

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @svn_skel__mem_atom(i32* null, i32 0, i32* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @svn_skel__prepend(i32 %27, i32* %28)
  br label %30

30:                                               ; preds = %25, %15
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i8* @svn_time_to_cstring(i64 %33, i32* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @svn_skel__str_atom(i8* %35, i32* %36)
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @svn_skel__prepend(i32 %37, i32* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @svn_skel__str_atom(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @svn_skel__prepend(i32 %46, i32* %47)
  br label %54

49:                                               ; preds = %30
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @svn_skel__str_atom(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @svn_skel__prepend(i32 %51, i32* %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @svn_skel__str_atom(i8* %62, i32* %63)
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @svn_skel__prepend(i32 %64, i32* %65)
  br label %72

67:                                               ; preds = %54
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @svn_skel__mem_atom(i32* null, i32 0, i32* %68)
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @svn_skel__prepend(i32 %69, i32* %70)
  br label %72

72:                                               ; preds = %67, %59
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @svn_skel__str_atom(i8* %75, i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @svn_skel__prepend(i32 %77, i32* %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @svn_skel__str_atom(i8* %82, i32* %83)
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @svn_skel__prepend(i32 %84, i32* %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @svn_skel__str_atom(i8* %89, i32* %90)
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @svn_skel__prepend(i32 %91, i32* %92)
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @svn_skel__str_atom(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %94)
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @svn_skel__prepend(i32 %95, i32* %96)
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @is_valid_lock_skel(i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %72
  %102 = call i32* @skel_err(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32* %102, i32** %4, align 8
  br label %107

103:                                              ; preds = %72
  %104 = load i32*, i32** %8, align 8
  %105 = load i32**, i32*** %5, align 8
  store i32* %104, i32** %105, align 8
  %106 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %106, i32** %4, align 8
  br label %107

107:                                              ; preds = %103, %101
  %108 = load i32*, i32** %4, align 8
  ret i32* %108
}

declare dso_local i32* @svn_skel__make_empty_list(i32*) #1

declare dso_local i32 @svn_skel__prepend(i32, i32*) #1

declare dso_local i32 @svn_skel__str_atom(i8*, i32*) #1

declare dso_local i8* @svn_time_to_cstring(i64, i32*) #1

declare dso_local i32 @svn_skel__mem_atom(i32*, i32, i32*) #1

declare dso_local i32 @is_valid_lock_skel(i32*) #1

declare dso_local i32* @skel_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
