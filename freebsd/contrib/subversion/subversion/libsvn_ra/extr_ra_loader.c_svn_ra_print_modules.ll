; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_print_modules.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_print_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_lib_defn = type { i32*, i32 (i32, %struct.TYPE_4__**, i32*)* }
%struct.TYPE_4__ = type { i8** (i32*)*, i32 (i32*)*, i32 (...)* }

@ra_libraries = common dso_local global %struct.ra_lib_defn* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"* ra_%s : %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"  - handles '%s' scheme\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_print_modules(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ra_lib_defn*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32 (i32, %struct.TYPE_4__**, i32*)*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @svn_pool_create(i32* %11)
  store i32* %12, i32** %9, align 8
  %13 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** @ra_libraries, align 8
  store %struct.ra_lib_defn* %13, %struct.ra_lib_defn** %5, align 8
  br label %14

14:                                               ; preds = %92, %2
  %15 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %5, align 8
  %16 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %95

19:                                               ; preds = %14
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @svn_pool_clear(i32* %20)
  %22 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %5, align 8
  %23 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %22, i32 0, i32 1
  %24 = load i32 (i32, %struct.TYPE_4__**, i32*)*, i32 (i32, %struct.TYPE_4__**, i32*)** %23, align 8
  store i32 (i32, %struct.TYPE_4__**, i32*)* %24, i32 (i32, %struct.TYPE_4__**, i32*)** %7, align 8
  %25 = load i32 (i32, %struct.TYPE_4__**, i32*)*, i32 (i32, %struct.TYPE_4__**, i32*)** %7, align 8
  %26 = icmp ne i32 (i32, %struct.TYPE_4__**, i32*)* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = bitcast i32 (i32, %struct.TYPE_4__**, i32*)** %7 to i32 (i32, %struct.TYPE_4__**, i32*)*
  %29 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %5, align 8
  %30 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @load_ra_module(i32 (i32, %struct.TYPE_4__**, i32*)* %28, i32* null, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  br label %35

35:                                               ; preds = %27, %19
  %36 = load i32 (i32, %struct.TYPE_4__**, i32*)*, i32 (i32, %struct.TYPE_4__**, i32*)** %7, align 8
  %37 = icmp ne i32 (i32, %struct.TYPE_4__**, i32*)* %36, null
  br i1 %37, label %38, label %91

38:                                               ; preds = %35
  %39 = load i32 (i32, %struct.TYPE_4__**, i32*)*, i32 (i32, %struct.TYPE_4__**, i32*)** %7, align 8
  %40 = call i32 (...) @svn_ra_version()
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 %39(i32 %40, %struct.TYPE_4__** %8, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32 (...)*, i32 (...)** %45, align 8
  %47 = call i32 (...) %46()
  %48 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %5, align 8
  %49 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @check_ra_version(i32 %47, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %5, align 8
  %55 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32 (i32*)*, i32 (i32*)** %59, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 %60(i32* %61)
  %63 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %57, i32 %62)
  store i8* %63, i8** %10, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @svn_stringbuf_appendcstr(i32* %64, i8* %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i8** (i32*)*, i8** (i32*)** %68, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i8** %69(i32* %70)
  store i8** %71, i8*** %6, align 8
  br label %72

72:                                               ; preds = %87, %38
  %73 = load i8**, i8*** %6, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load i8**, i8*** %6, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %77, i8* %80, i8* %82)
  store i8* %83, i8** %10, align 8
  %84 = load i32*, i32** %3, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @svn_stringbuf_appendcstr(i32* %84, i8* %85)
  br label %87

87:                                               ; preds = %76
  %88 = load i8**, i8*** %6, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  store i8** %89, i8*** %6, align 8
  br label %72

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90, %35
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %5, align 8
  %94 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %93, i32 1
  store %struct.ra_lib_defn* %94, %struct.ra_lib_defn** %5, align 8
  br label %14

95:                                               ; preds = %14
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @svn_pool_destroy(i32* %96)
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %98
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @load_ra_module(i32 (i32, %struct.TYPE_4__**, i32*)*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_ra_version(...) #1

declare dso_local i32 @check_ra_version(i32, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @svn_stringbuf_appendcstr(i32*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
