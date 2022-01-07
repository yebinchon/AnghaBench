; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat.c___fts_children_44bsd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat.c___fts_children_44bsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i8*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }

@FTS_NAMEONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@FTS_STOP = common dso_local global i32 0, align 4
@FTS_INIT = common dso_local global i64 0, align 8
@FTS_D = common dso_local global i64 0, align 8
@BNAMES = common dso_local global i32 0, align 4
@BCHILD = common dso_local global i32 0, align 4
@FTS_ROOTLEVEL = common dso_local global i64 0, align 8
@FTS_NOCHDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @__fts_children_44bsd(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @FTS_NAMEONLY, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i64, i64* @EINVAL, align 8
  store i64 %15, i64* @errno, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %112

16:                                               ; preds = %10, %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %6, align 8
  store i64 0, i64* @errno, align 8
  %20 = load i32, i32* @FTS_STOP, align 4
  %21 = call i64 @ISSET(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %112

24:                                               ; preds = %16
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FTS_INIT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %3, align 8
  br label %112

34:                                               ; preds = %24
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FTS_D, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %112

41:                                               ; preds = %34
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call i32 @fts_lfree(%struct.TYPE_7__* %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @FTS_NAMEONLY, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @FTS_NAMEONLY, align 4
  %57 = call i32 @SET(i32 %56)
  %58 = load i32, i32* @BNAMES, align 4
  store i32 %58, i32* %5, align 4
  br label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @BCHILD, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FTS_ROOTLEVEL, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %61
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 47
  br i1 %74, label %79, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @FTS_NOCHDIR, align 4
  %77 = call i64 @ISSET(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %75, %67, %61
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i8* @fts_build(%struct.TYPE_8__* %80, i32 %81)
  %83 = bitcast i8* %82 to %struct.TYPE_7__*
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %85, align 8
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %3, align 8
  br label %112

86:                                               ; preds = %75
  %87 = load i32, i32* @O_RDONLY, align 4
  %88 = load i32, i32* @O_CLOEXEC, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @_open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %89, i32 0)
  store i32 %90, i32* %7, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %112

93:                                               ; preds = %86
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i8* @fts_build(%struct.TYPE_8__* %94, i32 %95)
  %97 = bitcast i8* %96 to %struct.TYPE_7__*
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %99, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i64 @fchdir(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @_close(i32 %104)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %112

106:                                              ; preds = %93
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @_close(i32 %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %3, align 8
  br label %112

112:                                              ; preds = %106, %103, %92, %79, %40, %30, %23, %14
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %113
}

declare dso_local i64 @ISSET(i32) #1

declare dso_local i32 @fts_lfree(%struct.TYPE_7__*) #1

declare dso_local i32 @SET(i32) #1

declare dso_local i8* @fts_build(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @_open(i8*, i32, i32) #1

declare dso_local i64 @fchdir(i32) #1

declare dso_local i32 @_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
