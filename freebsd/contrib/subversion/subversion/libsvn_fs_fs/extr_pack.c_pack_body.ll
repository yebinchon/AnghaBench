; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_pack.c_pack_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_pack.c_pack_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_baton = type { i32, i32, i32 (i32)*, %struct.TYPE_4__*, i8*, i8*, i32, i32 (i32, i32, i32, i32*)* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@svn_fs_pack_notify_noop = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@PATH_REVS_DIR = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT = common dso_local global i64 0, align 8
@PATH_REVPROPS_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @pack_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pack_body(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pack_baton*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.pack_baton*
  store %struct.pack_baton* %12, %struct.pack_baton** %6, align 8
  %13 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %14 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %7, align 8
  %18 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %19 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @get_pack_status(i64* %10, %struct.TYPE_4__* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %2
  %27 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %28 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %27, i32 0, i32 7
  %29 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %28, align 8
  %30 = icmp ne i32 (i32, i32, i32, i32*)* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %33 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %32, i32 0, i32 7
  %34 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %33, align 8
  %35 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %36 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %40, %43
  %45 = load i32, i32* @svn_fs_pack_notify_noop, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 %34(i32 %37, i32 %44, i32 %45, i32* %46)
  br label %48

48:                                               ; preds = %31, %26
  %49 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %49, i32** %3, align 8
  br label %133

50:                                               ; preds = %2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %54, %57
  store i32 %58, i32* %8, align 4
  %59 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %60 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %59, i32 0, i32 3
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PATH_REVS_DIR, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = call i8* @svn_dirent_join(i32 %63, i32 %64, i32* %65)
  %67 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %68 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %50
  %75 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %76 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @PATH_REVPROPS_DIR, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = call i8* @svn_dirent_join(i32 %79, i32 %80, i32* %81)
  %83 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %84 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %74, %50
  %86 = load i32*, i32** %5, align 8
  %87 = call i32* @svn_pool_create(i32* %86)
  store i32* %87, i32** %9, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %90, %93
  %95 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %96 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %124, %85
  %98 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %99 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %129

103:                                              ; preds = %97
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @svn_pool_clear(i32* %104)
  %106 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %107 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %106, i32 0, i32 2
  %108 = load i32 (i32)*, i32 (i32)** %107, align 8
  %109 = icmp ne i32 (i32)* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %103
  %111 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %112 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %111, i32 0, i32 2
  %113 = load i32 (i32)*, i32 (i32)** %112, align 8
  %114 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %115 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 %113(i32 %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  br label %119

119:                                              ; preds = %110, %103
  %120 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = call i32 @pack_shard(%struct.pack_baton* %120, i32* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  br label %124

124:                                              ; preds = %119
  %125 = load %struct.pack_baton*, %struct.pack_baton** %6, align 8
  %126 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  br label %97

129:                                              ; preds = %97
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @svn_pool_destroy(i32* %130)
  %132 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %132, i32** %3, align 8
  br label %133

133:                                              ; preds = %129, %48
  %134 = load i32*, i32** %3, align 8
  ret i32* %134
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_pack_status(i64*, %struct.TYPE_4__*, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @pack_shard(%struct.pack_baton*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
