; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_revs-txns.c_svn_fs_base__set_rev_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_revs-txns.c_svn_fs_base__set_rev_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_FS_PROP_BASEVALUE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"revprop '%s' has unexpected value in filesystem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__set_rev_prop(i32* %0, i32 %1, i8* %2, i32** %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32*, i32** %14, align 8
  %23 = load i32*, i32** %15, align 8
  %24 = call i32 @get_rev_txn(%struct.TYPE_4__** %16, i8** %17, i32* %20, i32 %21, i32* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i32* @svn_hash_gets(i64 %28, i8* %29)
  store i32* %30, i32** %18, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %7
  %36 = load i32*, i32** %13, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %39, i32** %8, align 8
  br label %114

40:                                               ; preds = %35, %7
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i32*, i32** %15, align 8
  %47 = call i64 @apr_hash_make(i32* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32**, i32*** %12, align 8
  %52 = icmp ne i32** %51, null
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = load i32**, i32*** %12, align 8
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %19, align 8
  %56 = load i32*, i32** %19, align 8
  %57 = icmp ne i32* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %18, align 8
  %61 = icmp ne i32* %60, null
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = icmp ne i32 %59, %63
  br i1 %64, label %76, label %65

65:                                               ; preds = %53
  %66 = load i32*, i32** %19, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i32*, i32** %18, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32*, i32** %19, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = call i64 @svn_string_compare(i32* %72, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71, %53
  %77 = load i32, i32* @SVN_ERR_FS_PROP_BASEVALUE_MISMATCH, align 4
  %78 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %79 = load i8*, i8** %11, align 8
  %80 = call i32* @svn_error_createf(i32 %77, i32* null, i32 %78, i8* %79)
  store i32* %80, i32** %8, align 8
  br label %114

81:                                               ; preds = %71, %68, %65
  br label %82

82:                                               ; preds = %81, %50
  %83 = load i32*, i32** %18, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %13, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %85, %82
  %89 = load i32*, i32** %18, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i32*, i32** %13, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32*, i32** %18, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = call i64 @svn_string_compare(i32* %95, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94, %85
  %100 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %100, i32** %8, align 8
  br label %114

101:                                              ; preds = %94, %91, %88
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = call i32 @svn_hash_sets(i64 %104, i8* %105, i32* %106)
  %108 = load i32*, i32** %9, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %110 = load i8*, i8** %17, align 8
  %111 = load i32*, i32** %14, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = call i32* @put_txn(i32* %108, %struct.TYPE_4__* %109, i8* %110, i32* %111, i32* %112)
  store i32* %113, i32** %8, align 8
  br label %114

114:                                              ; preds = %101, %99, %76, %38
  %115 = load i32*, i32** %8, align 8
  ret i32* %115
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_rev_txn(%struct.TYPE_4__**, i8**, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_hash_gets(i64, i8*) #1

declare dso_local i64 @apr_hash_make(i32*) #1

declare dso_local i64 @svn_string_compare(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_hash_sets(i64, i8*, i32*) #1

declare dso_local i32* @put_txn(i32*, %struct.TYPE_4__*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
