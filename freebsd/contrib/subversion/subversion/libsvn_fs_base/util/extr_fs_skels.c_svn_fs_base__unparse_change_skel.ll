; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/util/extr_fs_skels.c_svn_fs_base__unparse_change_skel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/util/extr_fs_skels.c_svn_fs_base__unparse_change_skel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"modify\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__unparse_change_skel(i32** %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32* @svn_skel__make_empty_list(i32* %11)
  store i32* %12, i32** %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @svn_skel__str_atom(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @svn_skel__prepend(i32 %19, i32* %20)
  br label %27

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @svn_skel__mem_atom(i32* null, i32 0, i32* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @svn_skel__prepend(i32 %24, i32* %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @svn_skel__str_atom(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @svn_skel__prepend(i32 %34, i32* %35)
  br label %42

37:                                               ; preds = %27
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @svn_skel__mem_atom(i32* null, i32 0, i32* %38)
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @svn_skel__prepend(i32 %39, i32* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %67 [
    i32 128, label %46
    i32 132, label %51
    i32 131, label %56
    i32 129, label %61
    i32 130, label %66
  ]

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @svn_skel__str_atom(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @svn_skel__prepend(i32 %48, i32* %49)
  br label %72

51:                                               ; preds = %42
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @svn_skel__str_atom(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @svn_skel__prepend(i32 %53, i32* %54)
  br label %72

56:                                               ; preds = %42
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @svn_skel__str_atom(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @svn_skel__prepend(i32 %58, i32* %59)
  br label %72

61:                                               ; preds = %42
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @svn_skel__str_atom(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %62)
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @svn_skel__prepend(i32 %63, i32* %64)
  br label %72

66:                                               ; preds = %42
  br label %67

67:                                               ; preds = %42, %66
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @svn_skel__str_atom(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %68)
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @svn_skel__prepend(i32 %69, i32* %70)
  br label %72

72:                                               ; preds = %67, %61, %56, %51, %46
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call %struct.TYPE_5__* @svn_fs_base__id_unparse(i64 %80, i32* %81)
  store %struct.TYPE_5__* %82, %struct.TYPE_5__** %9, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @svn_skel__mem_atom(i32* %85, i32 %88, i32* %89)
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @svn_skel__prepend(i32 %90, i32* %91)
  br label %98

93:                                               ; preds = %72
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @svn_skel__mem_atom(i32* null, i32 0, i32* %94)
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @svn_skel__prepend(i32 %95, i32* %96)
  br label %98

98:                                               ; preds = %93, %77
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @svn_skel__str_atom(i8* %101, i32* %102)
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @svn_skel__prepend(i32 %103, i32* %104)
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @svn_skel__str_atom(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %106)
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @svn_skel__prepend(i32 %107, i32* %108)
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @is_valid_change_skel(i32* %110, i32* %10)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %98
  %114 = call i32* @skel_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32* %114, i32** %4, align 8
  br label %127

115:                                              ; preds = %98
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = call i32* @skel_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32* %122, i32** %4, align 8
  br label %127

123:                                              ; preds = %115
  %124 = load i32*, i32** %8, align 8
  %125 = load i32**, i32*** %5, align 8
  store i32* %124, i32** %125, align 8
  %126 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %126, i32** %4, align 8
  br label %127

127:                                              ; preds = %123, %121, %113
  %128 = load i32*, i32** %4, align 8
  ret i32* %128
}

declare dso_local i32* @svn_skel__make_empty_list(i32*) #1

declare dso_local i32 @svn_skel__prepend(i32, i32*) #1

declare dso_local i32 @svn_skel__str_atom(i8*, i32*) #1

declare dso_local i32 @svn_skel__mem_atom(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @svn_fs_base__id_unparse(i64, i32*) #1

declare dso_local i32 @is_valid_change_skel(i32*, i32*) #1

declare dso_local i32* @skel_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
