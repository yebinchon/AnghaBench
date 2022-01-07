; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dnode.c_dnode_next_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dnode.c_dnode_next_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@DNODE_FIND_HAVELOCK = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@DNODE_FIND_HOLE = common dso_local global i32 0, align 4
@DNODE_FIND_BACKWARDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnode_next_offset(%struct.TYPE_6__* %0, i32 %1, i64* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i64*, i64** %9, align 8
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %13, align 8
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @DNODE_FIND_HAVELOCK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %6
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* @RW_READER, align 4
  %27 = call i32 @rw_enter(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %6
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @ESRCH, align 4
  %37 = call i32 @SET_ERROR(i32 %36)
  store i32 %37, i32* %16, align 4
  br label %157

38:                                               ; preds = %28
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %38
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @DNODE_FIND_HOLE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %50
  br label %64

61:                                               ; preds = %43
  %62 = load i32, i32* @ESRCH, align 4
  %63 = call i32 @SET_ERROR(i32 %62)
  store i32 %63, i32* %16, align 4
  br label %64

64:                                               ; preds = %61, %60
  br label %157

65:                                               ; preds = %38
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %89, %65
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %72
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i64*, i64** %9, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @dnode_next_offset_level(%struct.TYPE_6__* %77, i32 %78, i64* %79, i32 %80, i64 %81, i64 %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @ESRCH, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %92

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %72

92:                                               ; preds = %87, %72
  br label %93

93:                                               ; preds = %103, %92
  %94 = load i32, i32* %16, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp sge i32 %98, %99
  br label %101

101:                                              ; preds = %96, %93
  %102 = phi i1 [ false, %93 ], [ %100, %96 ]
  br i1 %102, label %103, label %111

103:                                              ; preds = %101
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i64*, i64** %9, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @dnode_next_offset_level(%struct.TYPE_6__* %104, i32 %105, i64* %106, i32 %107, i64 %108, i64 %109)
  store i32 %110, i32* %16, align 4
  br label %93

111:                                              ; preds = %101
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @DNODE_FIND_HOLE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %111
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @ESRCH, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %116
  %121 = load i64, i64* %12, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %120
  %124 = load i32, i32* %10, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load i64, i64* %11, align 8
  %128 = icmp eq i64 %127, 1
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @DNODE_FIND_BACKWARDS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  store i32 0, i32* %16, align 4
  br label %135

135:                                              ; preds = %134, %129, %126, %123, %120, %116, %111
  %136 = load i32, i32* %16, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %135
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @DNODE_FIND_BACKWARDS, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i64, i64* %13, align 8
  %145 = load i64*, i64** %9, align 8
  %146 = load i64, i64* %145, align 8
  %147 = icmp slt i64 %144, %146
  br i1 %147, label %153, label %156

148:                                              ; preds = %138
  %149 = load i64, i64* %13, align 8
  %150 = load i64*, i64** %9, align 8
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %149, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %148, %143
  %154 = load i32, i32* @ESRCH, align 4
  %155 = call i32 @SET_ERROR(i32 %154)
  store i32 %155, i32* %16, align 4
  br label %156

156:                                              ; preds = %153, %148, %143, %135
  br label %157

157:                                              ; preds = %156, %64, %35
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @DNODE_FIND_HAVELOCK, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = call i32 @rw_exit(i32* %164)
  br label %166

166:                                              ; preds = %162, %157
  %167 = load i32, i32* %16, align 4
  ret i32 %167
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dnode_next_offset_level(%struct.TYPE_6__*, i32, i64*, i32, i64, i64) #1

declare dso_local i32 @rw_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
