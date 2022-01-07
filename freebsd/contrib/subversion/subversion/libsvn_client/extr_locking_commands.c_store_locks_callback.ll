; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_locking_commands.c_store_locks_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_locking_commands.c_store_locks_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.lock_baton = type { %struct.TYPE_9__*, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32 (i32, %struct.TYPE_10__*, i32*)*, i32 }
%struct.TYPE_10__ = type { i32, i8*, i32, %struct.TYPE_11__*, i32* }

@svn_wc_notify_failed_lock = common dso_local global i32 0, align 4
@svn_wc_notify_locked = common dso_local global i32 0, align 4
@svn_wc_notify_failed_unlock = common dso_local global i32 0, align 4
@svn_wc_notify_unlocked = common dso_local global i32 0, align 4
@svn_wc_notify_lock_state_locked = common dso_local global i8* null, align 8
@svn_wc_notify_lock_state_unchanged = common dso_local global i8* null, align 8
@SVN_ERR_FS_LOCK_OWNER_MISMATCH = common dso_local global i64 0, align 8
@SVN_ERR_REPOS_HOOK_FAILURE = common dso_local global i64 0, align 8
@svn_wc_notify_lock_state_unlocked = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i8*, i8*, i64, i32*, %struct.TYPE_11__*, i32*)* @store_locks_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @store_locks_callback(i8* %0, i8* %1, i64 %2, i32* %3, %struct.TYPE_11__* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.lock_baton*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.lock_baton*
  store %struct.lock_baton* %17, %struct.lock_baton** %13, align 8
  %18 = load %struct.lock_baton*, %struct.lock_baton** %13, align 8
  %19 = getelementptr inbounds %struct.lock_baton, %struct.lock_baton* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load %struct.lock_baton*, %struct.lock_baton** %13, align 8
  %24 = getelementptr inbounds %struct.lock_baton, %struct.lock_baton* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i8* @svn_hash_gets(i64 %25, i8* %26)
  br label %29

28:                                               ; preds = %6
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i8* [ %27, %22 ], [ null, %28 ]
  store i8* %30, i8** %15, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i8*, i8** %15, align 8
  br label %37

35:                                               ; preds = %29
  %36 = load i8*, i8** %8, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i8* [ %34, %33 ], [ %36, %35 ]
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @svn_wc_notify_failed_lock, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @svn_wc_notify_locked, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  br label %59

50:                                               ; preds = %37
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %52 = icmp ne %struct.TYPE_11__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @svn_wc_notify_failed_unlock, align 4
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @svn_wc_notify_unlocked, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  br label %59

59:                                               ; preds = %57, %48
  %60 = phi i32 [ %49, %48 ], [ %58, %57 ]
  %61 = load i32*, i32** %12, align 8
  %62 = call %struct.TYPE_10__* @svn_wc_create_notify(i8* %38, i32 %60, i32* %61)
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %14, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 4
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %68, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %145

71:                                               ; preds = %59
  %72 = load %struct.lock_baton*, %struct.lock_baton** %13, align 8
  %73 = getelementptr inbounds %struct.lock_baton, %struct.lock_baton* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %71
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %81 = icmp ne %struct.TYPE_11__* %80, null
  br i1 %81, label %101, label %82

82:                                               ; preds = %79
  %83 = load i32*, i32** %10, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load %struct.lock_baton*, %struct.lock_baton** %13, align 8
  %87 = getelementptr inbounds %struct.lock_baton, %struct.lock_baton* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load %struct.lock_baton*, %struct.lock_baton** %13, align 8
  %94 = getelementptr inbounds %struct.lock_baton, %struct.lock_baton* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @svn_wc_add_lock2(i32 %90, i8* %91, i32* %92, i32 %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i8*, i8** @svn_wc_notify_lock_state_locked, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  br label %105

101:                                              ; preds = %82, %79
  %102 = load i8*, i8** @svn_wc_notify_lock_state_unchanged, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %101, %85
  br label %144

106:                                              ; preds = %71
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %108 = icmp ne %struct.TYPE_11__* %107, null
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %111 = icmp ne %struct.TYPE_11__* %110, null
  br i1 %111, label %112, label %139

112:                                              ; preds = %109
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SVN_ERR_FS_LOCK_OWNER_MISMATCH, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %112
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SVN_ERR_REPOS_HOOK_FAILURE, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %118, %106
  %125 = load %struct.lock_baton*, %struct.lock_baton** %13, align 8
  %126 = getelementptr inbounds %struct.lock_baton, %struct.lock_baton* %125, i32 0, i32 0
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i8*, i8** %15, align 8
  %131 = load %struct.lock_baton*, %struct.lock_baton** %13, align 8
  %132 = getelementptr inbounds %struct.lock_baton, %struct.lock_baton* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @svn_wc_remove_lock2(i32 %129, i8* %130, i32 %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  %136 = load i8*, i8** @svn_wc_notify_lock_state_unlocked, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  br label %143

139:                                              ; preds = %118, %112, %109
  %140 = load i8*, i8** @svn_wc_notify_lock_state_unchanged, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %139, %124
  br label %144

144:                                              ; preds = %143, %105
  br label %154

145:                                              ; preds = %59
  %146 = load %struct.lock_baton*, %struct.lock_baton** %13, align 8
  %147 = getelementptr inbounds %struct.lock_baton, %struct.lock_baton* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = load i32*, i32** %12, align 8
  %151 = call i32 @svn_path_url_add_component2(i32 %148, i8* %149, i32* %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %145, %144
  %155 = load %struct.lock_baton*, %struct.lock_baton** %13, align 8
  %156 = getelementptr inbounds %struct.lock_baton, %struct.lock_baton* %155, i32 0, i32 0
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32 (i32, %struct.TYPE_10__*, i32*)*, i32 (i32, %struct.TYPE_10__*, i32*)** %158, align 8
  %160 = icmp ne i32 (i32, %struct.TYPE_10__*, i32*)* %159, null
  br i1 %160, label %161, label %175

161:                                              ; preds = %154
  %162 = load %struct.lock_baton*, %struct.lock_baton** %13, align 8
  %163 = getelementptr inbounds %struct.lock_baton, %struct.lock_baton* %162, i32 0, i32 0
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = load i32 (i32, %struct.TYPE_10__*, i32*)*, i32 (i32, %struct.TYPE_10__*, i32*)** %165, align 8
  %167 = load %struct.lock_baton*, %struct.lock_baton** %13, align 8
  %168 = getelementptr inbounds %struct.lock_baton, %struct.lock_baton* %167, i32 0, i32 0
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %173 = load i32*, i32** %12, align 8
  %174 = call i32 %166(i32 %171, %struct.TYPE_10__* %172, i32* %173)
  br label %175

175:                                              ; preds = %161, %154
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_11__* %176
}

declare dso_local i8* @svn_hash_gets(i64, i8*) #1

declare dso_local %struct.TYPE_10__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_add_lock2(i32, i8*, i32*, i32) #1

declare dso_local i32 @svn_wc_remove_lock2(i32, i8*, i32) #1

declare dso_local i32 @svn_path_url_add_component2(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
