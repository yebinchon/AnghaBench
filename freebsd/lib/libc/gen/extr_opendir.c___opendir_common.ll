; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_opendir.c___opendir_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_opendir.c___opendir_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, %struct.TYPE_6__*, i64, i32*, %struct._telldir*, i32*, i64 }
%struct._telldir = type { i64, i32 }
%struct.statfs = type { i32, i32 }

@DIRBLKSIZ = common dso_local global i32 0, align 4
@DTF_NODUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unionfs\00", align 1
@MNT_UNION = common dso_local global i32 0, align 4
@__DTF_READALL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@__DTF_SKIPREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32, i32, i32)* @__opendir_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @__opendir_common(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.statfs, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = call i8* @malloc(i32 88)
  %14 = bitcast i8* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %162

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 9
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 8
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = bitcast %struct.TYPE_6__* %30 to i8*
  %32 = getelementptr inbounds i8, i8* %31, i64 72
  %33 = bitcast i8* %32 to %struct._telldir*
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 7
  store %struct._telldir* %33, %struct._telldir** %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 7
  %38 = load %struct._telldir*, %struct._telldir** %37, align 8
  %39 = getelementptr inbounds %struct._telldir, %struct._telldir* %38, i32 0, i32 1
  %40 = call i32 @LIST_INIT(i32* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 7
  %43 = load %struct._telldir*, %struct._telldir** %42, align 8
  %44 = getelementptr inbounds %struct._telldir, %struct._telldir* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 6
  store i32* null, i32** %46, align 8
  %47 = call i32 (...) @getpagesize()
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @DIRBLKSIZ, align 4
  %50 = srem i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %17
  %53 = load i32, i32* @DIRBLKSIZ, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %17
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @DTF_NODUP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @_fstatfs(i32 %60, %struct.statfs* %12)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %153

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.statfs, %struct.statfs* %12, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strcmp(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.statfs, %struct.statfs* %12, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MNT_UNION, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %69, %64
  %76 = phi i1 [ true, %64 ], [ %74, %69 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %11, align 4
  br label %79

78:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @_filldir(%struct.TYPE_6__* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %153

88:                                               ; preds = %82
  %89 = load i32, i32* @__DTF_READALL, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %151

94:                                               ; preds = %79
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @malloc(i32 %100)
  %102 = bitcast i8* %101 to %struct.TYPE_6__*
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 4
  store %struct.TYPE_6__* %102, %struct.TYPE_6__** %104, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = icmp eq %struct.TYPE_6__* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %153

110:                                              ; preds = %94
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %145

113:                                              ; preds = %110
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  %125 = call i64 @_getdirentries(i32 %116, %struct.TYPE_6__* %119, i32 %122, i64* %124)
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %113
  %133 = load i32, i32* @errno, align 4
  %134 = load i32, i32* @EINVAL, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* @ENOTDIR, align 4
  store i32 %137, i32* @errno, align 4
  br label %138

138:                                              ; preds = %136, %132
  br label %153

139:                                              ; preds = %113
  %140 = load i32, i32* @__DTF_SKIPREAD, align 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %150

145:                                              ; preds = %110
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  store i64 0, i64* %147, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 5
  store i64 0, i64* %149, align 8
  br label %150

150:                                              ; preds = %145, %139
  br label %151

151:                                              ; preds = %150, %88
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %152, %struct.TYPE_6__** %4, align 8
  br label %162

153:                                              ; preds = %138, %109, %87, %63
  %154 = load i32, i32* @errno, align 4
  store i32 %154, i32* %10, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = call i32 @free(%struct.TYPE_6__* %157)
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %160 = call i32 @free(%struct.TYPE_6__* %159)
  %161 = load i32, i32* %10, align 4
  store i32 %161, i32* @errno, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %162

162:                                              ; preds = %153, %151, %16
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %163
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i64 @_fstatfs(i32, %struct.statfs*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @_filldir(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @_getdirentries(i32, %struct.TYPE_6__*, i32, i64*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
