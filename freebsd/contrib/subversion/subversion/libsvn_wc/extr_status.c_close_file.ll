; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_close_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_close_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, %struct.TYPE_4__*, i64, i64, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_status_added = common dso_local global i32 0, align 4
@svn_wc_status_modified = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @close_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_file(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.file_baton*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.file_baton*
  store %struct.file_baton* %16, %struct.file_baton** %8, align 8
  store i32* null, i32** %12, align 8
  %17 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %18 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %3
  %22 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %23 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %28 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %32, i32** %4, align 8
  br label %145

33:                                               ; preds = %26, %21, %3
  %34 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %35 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %88

38:                                               ; preds = %33
  %39 = load i32, i32* @svn_wc_status_added, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %41 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @svn_wc_status_modified, align 4
  br label %47

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  store i32 %48, i32* %10, align 4
  %49 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %50 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @svn_wc_status_modified, align 4
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  store i32 %57, i32* %11, align 4
  %58 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %59 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %56
  %66 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %67 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = call i8* @find_dir_repos_relpath(i32 %68, i32* %69)
  store i8* %70, i8** %13, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %73 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i8* @svn_relpath_join(i8* %71, i32 %74, i32* %75)
  store i8* %76, i8** %14, align 8
  %77 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %78 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @svn_fspath__join(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %83, i32* %84)
  %86 = call i32* @svn_hash_gets(i64 %82, i32 %85)
  store i32* %86, i32** %12, align 8
  br label %87

87:                                               ; preds = %65, %56
  br label %121

88:                                               ; preds = %33
  %89 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %90 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %95 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93, %88
  %99 = load i32, i32* @svn_wc_status_modified, align 4
  br label %101

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ]
  store i32 %102, i32* %9, align 4
  %103 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %104 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @svn_wc_status_modified, align 4
  br label %110

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ]
  store i32 %111, i32* %10, align 4
  %112 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %113 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* @svn_wc_status_modified, align 4
  br label %119

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %118 ]
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %119, %87
  %122 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %123 = load i32, i32* @FALSE, align 4
  %124 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %125 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %130 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %136 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %142 = load i32*, i32** %12, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = call i32* @tweak_statushash(%struct.file_baton* %122, i32* null, i32 %123, i32 %128, i32 %134, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32* %142, i32* %143)
  store i32* %144, i32** %4, align 8
  br label %145

145:                                              ; preds = %121, %31
  %146 = load i32*, i32** %4, align 8
  ret i32* %146
}

declare dso_local i8* @find_dir_repos_relpath(i32, i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i32, i32*) #1

declare dso_local i32* @svn_hash_gets(i64, i32) #1

declare dso_local i32 @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i32* @tweak_statushash(%struct.file_baton*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
