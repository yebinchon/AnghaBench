; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_svn_client_proplist4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_svn_client_proplist4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }

@svn_depth_unknown = common dso_local global i64 0, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@svn_opt_revision_working = common dso_local global i64 0, align 8
@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_proplist4(i8* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, i64 %3, i32* %4, i32 %5, i32 %6, i8* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call %struct.TYPE_12__* @svn_cl__rev_default_to_head_or_working(%struct.TYPE_12__* %23, i8* %24)
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %12, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %28 = call %struct.TYPE_12__* @svn_cl__rev_default_to_peg(%struct.TYPE_12__* %26, %struct.TYPE_12__* %27)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %13, align 8
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* @svn_depth_unknown, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %10
  %33 = load i64, i64* @svn_depth_empty, align 8
  store i64 %33, i64* %14, align 8
  br label %34

34:                                               ; preds = %32, %10
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @svn_path_is_url(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(i64 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %44, %38, %34
  %51 = phi i1 [ false, %38 ], [ false, %34 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %50
  %56 = load i32, i32* %21, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @svn_opt_revision_working, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %64, %58
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @svn_opt_revision_working, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %81 = icmp eq i64 %79, %80
  br label %82

82:                                               ; preds = %76, %70
  %83 = phi i1 [ true, %70 ], [ %81, %76 ]
  br label %84

84:                                               ; preds = %82, %64, %55, %50
  %85 = phi i1 [ false, %64 ], [ false, %55 ], [ false, %50 ], [ %83, %82 ]
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %22, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %22, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %21, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %119, label %95

95:                                               ; preds = %92, %89
  %96 = load i8*, i8** %11, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %99 = load i64, i64* %14, align 8
  %100 = load i32, i32* %21, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %95
  %107 = load i32, i32* %22, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br label %110

110:                                              ; preds = %106, %95
  %111 = phi i1 [ false, %95 ], [ %109, %106 ]
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %17, align 4
  %114 = load i8*, i8** %18, align 8
  %115 = load i32*, i32** %19, align 8
  %116 = load i32*, i32** %20, align 8
  %117 = call i32 @get_remote_props(i8* %96, %struct.TYPE_12__* %97, %struct.TYPE_12__* %98, i64 %99, i32 %103, i32 %112, i32 %113, i8* %114, i32* %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  br label %119

119:                                              ; preds = %110, %92
  %120 = load i32, i32* %21, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %119
  %123 = load i8*, i8** %11, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %125 = load i64, i64* %14, align 8
  %126 = load i32*, i32** %15, align 8
  %127 = load i32, i32* %22, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i8*, i8** %18, align 8
  %130 = load i32*, i32** %19, align 8
  %131 = load i32*, i32** %20, align 8
  %132 = call i32 @get_local_props(i8* %123, %struct.TYPE_12__* %124, i64 %125, i32* %126, i32 %127, i32 %128, i8* %129, i32* %130, i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  br label %134

134:                                              ; preds = %122, %119
  %135 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %135
}

declare dso_local %struct.TYPE_12__* @svn_cl__rev_default_to_head_or_working(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.TYPE_12__* @svn_cl__rev_default_to_peg(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i64 @SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_remote_props(i8*, %struct.TYPE_12__*, %struct.TYPE_12__*, i64, i32, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @get_local_props(i8*, %struct.TYPE_12__*, i64, i32*, i32, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
