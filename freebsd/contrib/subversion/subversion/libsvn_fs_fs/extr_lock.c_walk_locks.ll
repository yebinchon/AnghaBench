; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_lock.c_walk_locks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_lock.c_walk_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*, i32 (i8*, i32*, i32*)*, i8*, i64, i32*)* @walk_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @walk_locks(%struct.TYPE_4__* %0, i8* %1, i32 (i8*, i32*, i32*)* %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, i32*, i32*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 (i8*, i32*, i32*)* %2, i32 (i8*, i32*, i32*)** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @read_digest_file(i32** %15, i32** %17, i32 %21, i8* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32*, i32** %17, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %6
  %29 = load i32*, i32** %17, align 8
  %30 = call i64 @lock_expired(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @unlock_single(%struct.TYPE_4__* %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  br label %41

41:                                               ; preds = %35, %32
  br label %53

42:                                               ; preds = %28, %6
  %43 = load i32*, i32** %17, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %10, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 %46(i8* %47, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %52

52:                                               ; preds = %45, %42
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @apr_hash_count(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %58, i32** %7, align 8
  br label %120

59:                                               ; preds = %53
  %60 = load i32*, i32** %13, align 8
  %61 = call i32* @svn_pool_create(i32* %60)
  store i32* %61, i32** %16, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = call i32* @apr_hash_first(i32* %62, i32* %63)
  store i32* %64, i32** %14, align 8
  br label %65

65:                                               ; preds = %113, %59
  %66 = load i32*, i32** %14, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %116

68:                                               ; preds = %65
  %69 = load i32*, i32** %14, align 8
  %70 = call i8* @apr_hash_this_key(i32* %69)
  store i8* %70, i8** %18, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = call i32 @svn_pool_clear(i32* %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %18, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = call i8* @digest_path_from_digest(i32 %78, i8* %79, i32* %80)
  %82 = load i32*, i32** %16, align 8
  %83 = call i32 @read_digest_file(i32** null, i32** %17, i32 %75, i8* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i32*, i32** %17, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %68
  %88 = load i32*, i32** %17, align 8
  %89 = call i64 @lock_expired(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i64, i64* %12, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = load i32*, i32** %17, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @unlock_single(%struct.TYPE_4__* %95, i32* %96, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  br label %100

100:                                              ; preds = %94, %91
  br label %112

101:                                              ; preds = %87, %68
  %102 = load i32*, i32** %17, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %10, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load i32*, i32** %17, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 %105(i8* %106, i32* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  br label %111

111:                                              ; preds = %104, %101
  br label %112

112:                                              ; preds = %111, %100
  br label %113

113:                                              ; preds = %112
  %114 = load i32*, i32** %14, align 8
  %115 = call i32* @apr_hash_next(i32* %114)
  store i32* %115, i32** %14, align 8
  br label %65

116:                                              ; preds = %65
  %117 = load i32*, i32** %16, align 8
  %118 = call i32 @svn_pool_destroy(i32* %117)
  %119 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %119, i32** %7, align 8
  br label %120

120:                                              ; preds = %116, %57
  %121 = load i32*, i32** %7, align 8
  ret i32* %121
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_digest_file(i32**, i32**, i32, i8*, i32*) #1

declare dso_local i64 @lock_expired(i32*) #1

declare dso_local i32 @unlock_single(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @apr_hash_count(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @digest_path_from_digest(i32, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
