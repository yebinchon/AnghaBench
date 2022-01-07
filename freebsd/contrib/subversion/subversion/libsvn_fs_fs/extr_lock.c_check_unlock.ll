; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_lock.c_check_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_lock.c_check_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unlock_baton = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i8*, %struct.unlock_baton*, i32*, i32*)* @check_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_unlock(i32** %0, i8* %1, i8* %2, %struct.unlock_baton* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.unlock_baton*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.unlock_baton* %3, %struct.unlock_baton** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.unlock_baton*, %struct.unlock_baton** %10, align 8
  %15 = getelementptr inbounds %struct.unlock_baton, %struct.unlock_baton* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* @TRUE, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = call i32* @get_lock(%struct.TYPE_8__** %13, %struct.TYPE_9__* %16, i8* %17, i32 %18, i32 %19, i32* %20)
  %22 = load i32**, i32*** %7, align 8
  store i32* %21, i32** %22, align 8
  %23 = load i32**, i32*** %7, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %76, label %26

26:                                               ; preds = %6
  %27 = load %struct.unlock_baton*, %struct.unlock_baton** %10, align 8
  %28 = getelementptr inbounds %struct.unlock_baton, %struct.unlock_baton* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %76, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strcmp(i8* %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.unlock_baton*, %struct.unlock_baton** %10, align 8
  %40 = getelementptr inbounds %struct.unlock_baton, %struct.unlock_baton* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32* @SVN_FS__ERR_NO_SUCH_LOCK(%struct.TYPE_9__* %41, i8* %42)
  %44 = load i32**, i32*** %7, align 8
  store i32* %43, i32** %44, align 8
  br label %75

45:                                               ; preds = %31
  %46 = load %struct.unlock_baton*, %struct.unlock_baton** %10, align 8
  %47 = getelementptr inbounds %struct.unlock_baton, %struct.unlock_baton* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @strcmp(i8* %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %45
  %59 = load %struct.unlock_baton*, %struct.unlock_baton** %10, align 8
  %60 = getelementptr inbounds %struct.unlock_baton, %struct.unlock_baton* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load %struct.unlock_baton*, %struct.unlock_baton** %10, align 8
  %63 = getelementptr inbounds %struct.unlock_baton, %struct.unlock_baton* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32* @SVN_FS__ERR_LOCK_OWNER_MISMATCH(%struct.TYPE_9__* %61, i8* %68, i32 %71)
  %73 = load i32**, i32*** %7, align 8
  store i32* %72, i32** %73, align 8
  br label %74

74:                                               ; preds = %58, %45
  br label %75

75:                                               ; preds = %74, %38
  br label %76

76:                                               ; preds = %75, %26, %6
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %77
}

declare dso_local i32* @get_lock(%struct.TYPE_8__**, %struct.TYPE_9__*, i8*, i32, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @SVN_FS__ERR_NO_SUCH_LOCK(%struct.TYPE_9__*, i8*) #1

declare dso_local i32* @SVN_FS__ERR_LOCK_OWNER_MISMATCH(%struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
