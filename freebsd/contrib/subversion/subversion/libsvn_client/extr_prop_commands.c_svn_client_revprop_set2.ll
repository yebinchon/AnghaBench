; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_svn_client_revprop_set2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_svn_client_revprop_set2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i32, i32 (i32, %struct.TYPE_14__*, i32*)*, i32 }
%struct.TYPE_14__ = type { i8*, i32 }

@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@SVN_ERR_CLIENT_REVISION_AUTHOR_CONTAINS_NEWLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Author name should not contain a newline; value will not be set unless forced\00", align 1
@SVN_ERR_CLIENT_PROPERTY_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Bad property name: '%s'\00", align 1
@SVN_RA_CAPABILITY_ATOMIC_REVPROPS = common dso_local global i32 0, align 4
@svn_wc_notify_revprop_deleted = common dso_local global i32 0, align 4
@svn_wc_notify_revprop_set = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_revprop_set2(i8* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2, i8* %3, i32* %4, i32* %5, i64 %6, %struct.TYPE_16__* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_15__**, align 8
  %23 = alloca %struct.TYPE_15__*, align 8
  %24 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %11, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i64 %6, i64* %17, align 8
  store %struct.TYPE_16__* %7, %struct.TYPE_16__** %18, align 8
  store i32* %8, i32** %19, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %27 = call i64 @strcmp(i8* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %9
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %31 = icmp ne %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32* @strchr(i32* %35, i8 signext 10)
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i64, i64* %17, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @SVN_ERR_CLIENT_REVISION_AUTHOR_CONTAINS_NEWLINE, align 4
  %43 = call i32 @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %44 = call i32* @svn_error_create(i32 %42, i32* null, i32 %43)
  store i32* %44, i32** %10, align 8
  br label %146

45:                                               ; preds = %38, %32, %29, %9
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %47 = icmp ne %struct.TYPE_15__* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @svn_prop_name_is_valid(i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @SVN_ERR_CLIENT_PROPERTY_NAME, align 4
  %54 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i8*, i8** %11, align 8
  %56 = call i32* @svn_error_createf(i32 %53, i32* null, i32 %54, i8* %55)
  store i32* %56, i32** %10, align 8
  br label %146

57:                                               ; preds = %48, %45
  %58 = load i8*, i8** %14, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %60 = load i32*, i32** %19, align 8
  %61 = load i32*, i32** %19, align 8
  %62 = call i32 @svn_client_open_ra_session2(i32** %20, i8* %58, i32* null, %struct.TYPE_16__* %59, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32*, i32** %16, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %20, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = load i32*, i32** %19, align 8
  %71 = call i32 @svn_client__get_revision_number(i32* %64, i32* null, i32 %67, i32* null, i32* %68, i32* %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i32*, i32** %20, align 8
  %74 = load i32, i32* @SVN_RA_CAPABILITY_ATOMIC_REVPROPS, align 4
  %75 = load i32*, i32** %19, align 8
  %76 = call i32 @svn_ra_has_capability(i32* %73, i64* %21, i32 %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i64, i64* %21, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %57
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %23, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %82 = icmp eq %struct.TYPE_15__* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store %struct.TYPE_15__** null, %struct.TYPE_15__*** %22, align 8
  br label %92

84:                                               ; preds = %80
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store %struct.TYPE_15__** %23, %struct.TYPE_15__*** %22, align 8
  br label %91

90:                                               ; preds = %84
  store %struct.TYPE_15__** %13, %struct.TYPE_15__*** %22, align 8
  br label %91

91:                                               ; preds = %90, %89
  br label %92

92:                                               ; preds = %91, %83
  %93 = load i32*, i32** %20, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %22, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %99 = load i32*, i32** %19, align 8
  %100 = call i32 @svn_ra_change_rev_prop2(i32* %93, i32 %95, i8* %96, %struct.TYPE_15__** %97, %struct.TYPE_15__* %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  br label %111

102:                                              ; preds = %57
  %103 = load i32*, i32** %16, align 8
  %104 = load i32*, i32** %20, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %108 = load i32*, i32** %19, align 8
  %109 = call i32 @check_and_set_revprop(i32* %103, i32* %104, i8* %105, %struct.TYPE_15__* %106, %struct.TYPE_15__* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  br label %111

111:                                              ; preds = %102, %92
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i32 (i32, %struct.TYPE_14__*, i32*)*, i32 (i32, %struct.TYPE_14__*, i32*)** %113, align 8
  %115 = icmp ne i32 (i32, %struct.TYPE_14__*, i32*)* %114, null
  br i1 %115, label %116, label %144

116:                                              ; preds = %111
  %117 = load i8*, i8** %14, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %119 = icmp eq %struct.TYPE_15__* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* @svn_wc_notify_revprop_deleted, align 4
  br label %124

122:                                              ; preds = %116
  %123 = load i32, i32* @svn_wc_notify_revprop_set, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = load i32*, i32** %19, align 8
  %127 = call %struct.TYPE_14__* @svn_wc_create_notify_url(i8* %117, i32 %125, i32* %126)
  store %struct.TYPE_14__* %127, %struct.TYPE_14__** %24, align 8
  %128 = load i8*, i8** %11, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load i32*, i32** %16, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i32 (i32, %struct.TYPE_14__*, i32*)*, i32 (i32, %struct.TYPE_14__*, i32*)** %136, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %142 = load i32*, i32** %19, align 8
  %143 = call i32 %137(i32 %140, %struct.TYPE_14__* %141, i32* %142)
  br label %144

144:                                              ; preds = %124, %111
  %145 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %145, i32** %10, align 8
  br label %146

146:                                              ; preds = %144, %52, %41
  %147 = load i32*, i32** %10, align 8
  ret i32* %147
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @strchr(i32*, i8 signext) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_prop_name_is_valid(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_open_ra_session2(i32**, i8*, i32*, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @svn_client__get_revision_number(i32*, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_ra_has_capability(i32*, i64*, i32, i32*) #1

declare dso_local i32 @svn_ra_change_rev_prop2(i32*, i32, i8*, %struct.TYPE_15__**, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @check_and_set_revprop(i32*, i32*, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_wc_create_notify_url(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
