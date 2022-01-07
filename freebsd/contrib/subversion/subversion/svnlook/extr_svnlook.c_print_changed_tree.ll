; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_print_changed_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_print_changed_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8*, i64, i8*, %struct.TYPE_3__*, i32, %struct.TYPE_3__*, i64, i64 }

@__const.print_changed_tree.status = private unnamed_addr constant [4 x i8] c"_  \00", align 1
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s %s%s\0A\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"    (from %s%s:r%ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i64, i32*)* @print_changed_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @print_changed_tree(%struct.TYPE_3__* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [4 x i8], align 1
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = bitcast [4 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.print_changed_tree.status, i32 0, i32 0), i64 4, i1 false)
  %15 = load i64, i64* @TRUE, align 8
  store i64 %15, i64* %12, align 8
  %16 = call i32* @check_cancel(i32* null)
  %17 = call i32 @SVN_ERR(i32* %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %21, i32** %5, align 8
  br label %177

22:                                               ; preds = %4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 8
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 65
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  store i8 65, i8* %29, align 1
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 2
  store i8 43, i8* %38, align 1
  br label %39

39:                                               ; preds = %37, %32, %28
  br label %85

40:                                               ; preds = %22
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 8
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 68
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  store i8 68, i8* %47, align 1
  br label %84

48:                                               ; preds = %40
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 8
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 82
  br i1 %53, label %54, label %81

54:                                               ; preds = %48
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* @FALSE, align 8
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %64, %59, %54
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 8
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  store i8 85, i8* %72, align 1
  br label %73

73:                                               ; preds = %71, %66
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 1
  store i8 85, i8* %79, align 1
  br label %80

80:                                               ; preds = %78, %73
  br label %83

81:                                               ; preds = %48
  %82 = load i64, i64* @FALSE, align 8
  store i64 %82, i64* %12, align 8
  br label %83

83:                                               ; preds = %81, %80
  br label %84

84:                                               ; preds = %83, %46
  br label %85

85:                                               ; preds = %84, %39
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %141

88:                                               ; preds = %85
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %91 = load i8*, i8** %7, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @svn_node_dir, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %99 = call i32* @svn_cmdline_printf(i32* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %90, i8* %91, i8* %98)
  %100 = call i32 @SVN_ERR(i32* %99)
  %101 = load i64, i64* %8, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %140

103:                                              ; preds = %88
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %140

108:                                              ; preds = %103
  %109 = load i32*, i32** %9, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 47
  br i1 %116, label %117, label %122

117:                                              ; preds = %108
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  br label %126

122:                                              ; preds = %108
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  br label %126

126:                                              ; preds = %122, %117
  %127 = phi i8* [ %121, %117 ], [ %125, %122 ]
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @svn_node_dir, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  %137 = load i8*, i8** %136, align 8
  %138 = call i32* @svn_cmdline_printf(i32* %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %127, i8* %134, i8* %137)
  %139 = call i32 @SVN_ERR(i32* %138)
  br label %140

140:                                              ; preds = %126, %103, %88
  br label %141

141:                                              ; preds = %140, %85
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 6
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  store %struct.TYPE_3__* %144, %struct.TYPE_3__** %6, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %146 = icmp ne %struct.TYPE_3__* %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %141
  %148 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %148, i32** %5, align 8
  br label %177

149:                                              ; preds = %141
  %150 = load i32*, i32** %9, align 8
  %151 = call i32* @svn_pool_create(i32* %150)
  store i32* %151, i32** %13, align 8
  br label %152

152:                                              ; preds = %155, %149
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %154 = icmp ne %struct.TYPE_3__* %153, null
  br i1 %154, label %155, label %173

155:                                              ; preds = %152
  %156 = load i32*, i32** %13, align 8
  %157 = call i32 @svn_pool_clear(i32* %156)
  %158 = load i8*, i8** %7, align 8
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load i32*, i32** %13, align 8
  %163 = call i8* @svn_dirent_join(i8* %158, i32 %161, i32* %162)
  store i8* %163, i8** %10, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = load i64, i64* %8, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = call i32* @print_changed_tree(%struct.TYPE_3__* %164, i8* %165, i64 %166, i32* %167)
  %169 = call i32 @SVN_ERR(i32* %168)
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 4
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  store %struct.TYPE_3__* %172, %struct.TYPE_3__** %6, align 8
  br label %152

173:                                              ; preds = %152
  %174 = load i32*, i32** %13, align 8
  %175 = call i32 @svn_pool_destroy(i32* %174)
  %176 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %176, i32** %5, align 8
  br label %177

177:                                              ; preds = %173, %147, %20
  %178 = load i32*, i32** %5, align 8
  ret i32* %178
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR(i32*) #2

declare dso_local i32* @check_cancel(i32*) #2

declare dso_local i32* @svn_cmdline_printf(i32*, i8*, i8*, i8*, i8*) #2

declare dso_local i32* @svn_pool_create(i32*) #2

declare dso_local i32 @svn_pool_clear(i32*) #2

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #2

declare dso_local i32 @svn_pool_destroy(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
