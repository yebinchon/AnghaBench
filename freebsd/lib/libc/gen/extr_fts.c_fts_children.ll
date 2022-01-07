; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts.c_fts_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts.c_fts_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i8*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }

@FTS_NAMEONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
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
define dso_local %struct.TYPE_7__* @fts_children(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @FTS_NAMEONLY, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* @errno, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %131

18:                                               ; preds = %12, %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* @errno, align 4
  %22 = load i32, i32* @FTS_STOP, align 4
  %23 = call i64 @ISSET(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %131

26:                                               ; preds = %18
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FTS_INIT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %3, align 8
  br label %131

36:                                               ; preds = %26
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FTS_D, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %131

43:                                               ; preds = %36
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = icmp ne %struct.TYPE_7__* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = call i32 @fts_lfree(%struct.TYPE_7__* %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @FTS_NAMEONLY, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @FTS_NAMEONLY, align 4
  %59 = call i32 @SET(i32 %58)
  %60 = load i32, i32* @BNAMES, align 4
  store i32 %60, i32* %5, align 4
  br label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @BCHILD, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @FTS_ROOTLEVEL, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 47
  br i1 %76, label %81, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* @FTS_NOCHDIR, align 4
  %79 = call i64 @ISSET(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77, %69, %63
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i8* @fts_build(%struct.TYPE_8__* %82, i32 %83)
  %85 = bitcast i8* %84 to %struct.TYPE_7__*
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %87, align 8
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %3, align 8
  br label %131

88:                                               ; preds = %77
  %89 = load i32, i32* @O_RDONLY, align 4
  %90 = load i32, i32* @O_CLOEXEC, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @_open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %91, i32 0)
  store i32 %92, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %131

95:                                               ; preds = %88
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i8* @fts_build(%struct.TYPE_8__* %96, i32 %97)
  %99 = bitcast i8* %98 to %struct.TYPE_7__*
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store %struct.TYPE_7__* %99, %struct.TYPE_7__** %101, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = icmp eq %struct.TYPE_7__* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i32, i32* @errno, align 4
  br label %109

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i32 [ %107, %106 ], [ 0, %108 ]
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @fchdir(i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load i32, i32* %9, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* @errno, align 4
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %118, %115, %109
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @_close(i32 %121)
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* @errno, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %131

127:                                              ; preds = %120
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  store %struct.TYPE_7__* %130, %struct.TYPE_7__** %3, align 8
  br label %131

131:                                              ; preds = %127, %126, %94, %81, %42, %32, %25, %16
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %132
}

declare dso_local i64 @ISSET(i32) #1

declare dso_local i32 @fts_lfree(%struct.TYPE_7__*) #1

declare dso_local i32 @SET(i32) #1

declare dso_local i8* @fts_build(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @_open(i8*, i32, i32) #1

declare dso_local i32 @fchdir(i32) #1

declare dso_local i32 @_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
