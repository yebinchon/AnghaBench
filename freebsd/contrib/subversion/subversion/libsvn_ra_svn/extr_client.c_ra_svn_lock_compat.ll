; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_lock_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_lock_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [40 x i8] c"Server doesn't support the lock command\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32*, i8*, i32, i32* (i8*, i8*, i32, i32*, i32*, i32*)*, i8*, i32*)* @ra_svn_lock_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_lock_compat(%struct.TYPE_6__* %0, i32* %1, i8* %2, i32 %3, i32* (i8*, i8*, i32, i32*, i32*, i32*)* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32* (i8*, i8*, i32, i32*, i32*, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* (i8*, i8*, i32, i32*, i32*, i32*)* %4, i32* (i8*, i8*, i32, i32*, i32*, i32*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %16, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %17, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = call i32* @svn_pool_create(i32* %34)
  store i32* %35, i32** %20, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32* @apr_hash_first(i32* %36, i32* %37)
  store i32* %38, i32** %19, align 8
  br label %39

39:                                               ; preds = %110, %7
  %40 = load i32*, i32** %19, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %113

42:                                               ; preds = %39
  store i32* null, i32** %27, align 8
  %43 = load i32*, i32** %20, align 8
  %44 = call i32 @svn_pool_clear(i32* %43)
  %45 = load i32*, i32** %19, align 8
  %46 = call i32 @apr_hash_this(i32* %45, i8** %22, i32* null, i8** %24)
  %47 = load i8*, i8** %22, align 8
  store i8* %47, i8** %23, align 8
  %48 = load i8*, i8** %24, align 8
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %25, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = load i32*, i32** %20, align 8
  %52 = load i8*, i8** %23, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32*, i32** %25, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @svn_ra_svn__write_cmd_lock(i32* %50, i32* %51, i8* %52, i8* %53, i32 %54, i32 %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @handle_auth_request(%struct.TYPE_5__* %59, i32* %60)
  %62 = call i32 @N_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 @handle_unsupported_cmd(i32 %61, i32 %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i32*, i32** %17, align 8
  %66 = load i32*, i32** %20, align 8
  %67 = call i32* @svn_ra_svn__read_cmd_response(i32* %65, i32* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32** %18)
  store i32* %67, i32** %26, align 8
  %68 = load i32*, i32** %26, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %42
  %71 = load i32*, i32** %18, align 8
  %72 = load i32*, i32** %20, align 8
  %73 = call i32 @parse_lock(i32* %71, i32* %72, i32** %21)
  %74 = call i32 @SVN_ERR(i32 %73)
  br label %75

75:                                               ; preds = %70, %42
  %76 = load i32*, i32** %26, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32*, i32** %26, align 8
  %80 = call i32 @SVN_ERR_IS_LOCK_ERROR(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load i32*, i32** %26, align 8
  store i32* %83, i32** %8, align 8
  br label %117

84:                                               ; preds = %78, %75
  %85 = load i32* (i8*, i8*, i32, i32*, i32*, i32*)*, i32* (i8*, i8*, i32, i32*, i32*, i32*)** %13, align 8
  %86 = icmp ne i32* (i8*, i8*, i32, i32*, i32*, i32*)* %85, null
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load i32* (i8*, i8*, i32, i32*, i32*, i32*)*, i32* (i8*, i8*, i32, i32*, i32*, i32*)** %13, align 8
  %89 = load i8*, i8** %14, align 8
  %90 = load i8*, i8** %23, align 8
  %91 = load i32, i32* @TRUE, align 4
  %92 = load i32*, i32** %26, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %97

95:                                               ; preds = %87
  %96 = load i32*, i32** %21, align 8
  br label %97

97:                                               ; preds = %95, %94
  %98 = phi i32* [ null, %94 ], [ %96, %95 ]
  %99 = load i32*, i32** %26, align 8
  %100 = load i32*, i32** %20, align 8
  %101 = call i32* %88(i8* %89, i8* %90, i32 %91, i32* %98, i32* %99, i32* %100)
  store i32* %101, i32** %27, align 8
  br label %102

102:                                              ; preds = %97, %84
  %103 = load i32*, i32** %26, align 8
  %104 = call i32 @svn_error_clear(i32* %103)
  %105 = load i32*, i32** %27, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32*, i32** %27, align 8
  store i32* %108, i32** %8, align 8
  br label %117

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109
  %111 = load i32*, i32** %19, align 8
  %112 = call i32* @apr_hash_next(i32* %111)
  store i32* %112, i32** %19, align 8
  br label %39

113:                                              ; preds = %39
  %114 = load i32*, i32** %20, align 8
  %115 = call i32 @svn_pool_destroy(i32* %114)
  %116 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %116, i32** %8, align 8
  br label %117

117:                                              ; preds = %113, %107, %82
  %118 = load i32*, i32** %8, align 8
  ret i32* %118
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__write_cmd_lock(i32*, i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @handle_unsupported_cmd(i32, i32) #1

declare dso_local i32 @handle_auth_request(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32* @svn_ra_svn__read_cmd_response(i32*, i32*, i8*, i32**) #1

declare dso_local i32 @parse_lock(i32*, i32*, i32**) #1

declare dso_local i32 @SVN_ERR_IS_LOCK_ERROR(i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
