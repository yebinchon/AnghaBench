; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_get_ra_library.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_get_ra_library.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_lib_defn = type { i32*, i32 (i32, i32*, i32*)*, i32 }
%struct.TYPE_4__ = type { i32 (...)* }

@ra_libraries = common dso_local global %struct.ra_lib_defn* null, align 8
@SVN_RA_ABI_VERSION = common dso_local global i32 0, align 4
@SVN_ERR_RA_ILLEGAL_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unrecognized URL scheme '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_get_ra_library(%struct.TYPE_4__** %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ra_lib_defn*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32 (i32, i32*, i32*)*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32* @apr_hash_make(i32* %17)
  store i32* %18, i32** %12, align 8
  %19 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** @ra_libraries, align 8
  store %struct.ra_lib_defn* %19, %struct.ra_lib_defn** %10, align 8
  br label %20

20:                                               ; preds = %74, %4
  %21 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %10, align 8
  %22 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %77

25:                                               ; preds = %20
  %26 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %10, align 8
  %27 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i8* @has_scheme_of(i32 %28, i8* %29)
  store i8* %30, i8** %13, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %73

32:                                               ; preds = %25
  %33 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %10, align 8
  %34 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %33, i32 0, i32 1
  %35 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %34, align 8
  store i32 (i32, i32*, i32*)* %35, i32 (i32, i32*, i32*)** %14, align 8
  %36 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %14, align 8
  %37 = icmp ne i32 (i32, i32*, i32*)* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = bitcast i32 (i32, i32*, i32*)** %14 to i32 (i32, i32*, i32*)*
  %40 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %10, align 8
  %41 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @load_ra_module(i32* null, i32 (i32, i32*, i32*)* %39, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  br label %46

46:                                               ; preds = %38, %32
  %47 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %14, align 8
  %48 = icmp ne i32 (i32, i32*, i32*)* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  br label %74

50:                                               ; preds = %46
  %51 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %14, align 8
  %52 = load i32, i32* @SVN_RA_ABI_VERSION, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 %51(i32 %52, i32* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** %12, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call %struct.TYPE_4__* @svn_hash_gets(i32* %57, i8* %58)
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %60, align 8
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  br label %77

65:                                               ; preds = %50
  %66 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32 (...)*, i32 (...)** %68, align 8
  %70 = call i32 (...) %69()
  %71 = load i8*, i8** %13, align 8
  %72 = call i32* @check_ra_version(i32 %70, i8* %71)
  store i32* %72, i32** %5, align 8
  br label %83

73:                                               ; preds = %25
  br label %74

74:                                               ; preds = %73, %49
  %75 = load %struct.ra_lib_defn*, %struct.ra_lib_defn** %10, align 8
  %76 = getelementptr inbounds %struct.ra_lib_defn, %struct.ra_lib_defn* %75, i32 1
  store %struct.ra_lib_defn* %76, %struct.ra_lib_defn** %10, align 8
  br label %20

77:                                               ; preds = %64, %20
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %78, align 8
  %79 = load i32, i32* @SVN_ERR_RA_ILLEGAL_URL, align 4
  %80 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %81 = load i8*, i8** %8, align 8
  %82 = call i32* @svn_error_createf(i32 %79, i32* null, i32 %80, i8* %81)
  store i32* %82, i32** %5, align 8
  br label %83

83:                                               ; preds = %77, %65
  %84 = load i32*, i32** %5, align 8
  ret i32* %84
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i8* @has_scheme_of(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @load_ra_module(i32*, i32 (i32, i32*, i32*)*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32* @check_ra_version(i32, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
