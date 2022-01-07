; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz.c_svn_repos_authz_check_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz.c_svn_repos_authz_check_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@svn_authz_read = common dso_local global i32 0, align 4
@authz_access_read_flag = common dso_local global i32 0, align 4
@svn_authz_write = common dso_local global i32 0, align 4
@authz_access_write_flag = common dso_local global i32 0, align 4
@AUTHZ_ANY_REPOSITORY = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_authz_recursive = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_authz_check_access(%struct.TYPE_11__* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @svn_authz_read, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @authz_access_read_flag, align 4
  br label %25

24:                                               ; preds = %7
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @svn_authz_write, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @authz_access_write_flag, align 4
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = or i32 %26, %35
  store i32 %36, i32* %16, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i8*, i8** %10, align 8
  br label %44

42:                                               ; preds = %34
  %43 = load i8*, i8** @AUTHZ_ANY_REPOSITORY, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i8* [ %41, %40 ], [ %43, %42 ]
  %46 = load i8*, i8** %12, align 8
  %47 = call %struct.TYPE_12__* @get_user_rules(%struct.TYPE_11__* %37, i8* %45, i8* %46)
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %17, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %16, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %16, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load i32, i32* @TRUE, align 4
  %58 = load i32*, i32** %14, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %59, i32** %8, align 8
  br label %134

60:                                               ; preds = %44
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %16, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load i32, i32* @FALSE, align 4
  %71 = load i32*, i32** %14, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %72, i32** %8, align 8
  br label %134

73:                                               ; preds = %60
  %74 = load i8*, i8** %11, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %88, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %16, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* %16, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i32*, i32** %14, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %87, i32** %8, align 8
  br label %134

88:                                               ; preds = %73
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = call i32 @filter_tree(%struct.TYPE_11__* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  br label %98

98:                                               ; preds = %93, %88
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = call i8* @init_lockup_state(i32 %103, i32 %108, i8* %109)
  store i8* %110, i8** %11, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 47
  %116 = zext i1 %115 to i32
  %117 = call i32 @SVN_ERR_ASSERT(i32 %116)
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i8*, i8** %11, align 8
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @svn_authz_recursive, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = load i32*, i32** %15, align 8
  %131 = call i32 @lookup(i32 %120, i8* %121, i32 %122, i32 %129, i32* %130)
  %132 = load i32*, i32** %14, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %133, i32** %8, align 8
  br label %134

134:                                              ; preds = %98, %76, %69, %56
  %135 = load i32*, i32** %8, align 8
  ret i32* %135
}

declare dso_local %struct.TYPE_12__* @get_user_rules(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @filter_tree(%struct.TYPE_11__*, i32*) #1

declare dso_local i8* @init_lockup_state(i32, i32, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @lookup(i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
