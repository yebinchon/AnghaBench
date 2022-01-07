; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_rlock.c_rangelock_enter_reader.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_rlock.c_rangelock_enter_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i32, i8*, i64 }

@AVL_BEFORE = common dso_local global i32 0, align 4
@RL_WRITER = common dso_local global i64 0, align 8
@CV_DEFAULT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@AVL_AFTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_12__*)* @rangelock_enter_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rangelock_enter_reader(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  br label %19

19:                                               ; preds = %138, %68, %2
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = call %struct.TYPE_12__* @avl_find(i32* %20, %struct.TYPE_12__* %21, i32* %8)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %6, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = icmp eq %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @AVL_BEFORE, align 4
  %29 = call i64 @avl_nearest(i32* %26, i32 %27, i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %6, align 8
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %34, label %88

34:                                               ; preds = %31
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = icmp slt i64 %35, %42
  br i1 %43, label %44, label %88

44:                                               ; preds = %34
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RL_WRITER, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %50, %44
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 4
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = load i32, i32* @CV_DEFAULT, align 4
  %64 = call i32 @cv_init(i32* %62, i32* null, i32 %63, i32* null)
  %65 = load i8*, i8** @B_TRUE, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %60, %55
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = call i32 @cv_wait(i32* %70, i32* %72)
  br label %19

74:                                               ; preds = %50
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add nsw i64 %75, %76
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = icmp slt i64 %77, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %163

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %34, %31
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = icmp ne %struct.TYPE_12__* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = call %struct.TYPE_12__* @AVL_NEXT(i32* %92, %struct.TYPE_12__* %93)
  store %struct.TYPE_12__* %94, %struct.TYPE_12__** %7, align 8
  br label %101

95:                                               ; preds = %88
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @AVL_AFTER, align 4
  %99 = call i64 @avl_nearest(i32* %96, i32 %97, i32 %98)
  %100 = inttoptr i64 %99 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %7, align 8
  br label %101

101:                                              ; preds = %95, %91
  br label %102

102:                                              ; preds = %158, %101
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %104 = icmp ne %struct.TYPE_12__* %103, null
  br i1 %104, label %105, label %162

105:                                              ; preds = %102
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = add nsw i64 %106, %107
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp sle i64 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %163

114:                                              ; preds = %105
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @RL_WRITER, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %125, label %120

120:                                              ; preds = %114
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %120, %114
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %138, label %130

130:                                              ; preds = %125
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = load i32, i32* @CV_DEFAULT, align 4
  %134 = call i32 @cv_init(i32* %132, i32* null, i32 %133, i32* null)
  %135 = load i8*, i8** @B_TRUE, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %130, %125
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = call i32 @cv_wait(i32* %140, i32* %142)
  br label %19

144:                                              ; preds = %120
  %145 = load i64, i64* %9, align 8
  %146 = load i64, i64* %10, align 8
  %147 = add nsw i64 %145, %146
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %150, %153
  %155 = icmp sle i64 %147, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %144
  br label %163

157:                                              ; preds = %144
  br label %158

158:                                              ; preds = %157
  %159 = load i32*, i32** %5, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %161 = call %struct.TYPE_12__* @AVL_NEXT(i32* %159, %struct.TYPE_12__* %160)
  store %struct.TYPE_12__* %161, %struct.TYPE_12__** %7, align 8
  br label %102

162:                                              ; preds = %102
  br label %163

163:                                              ; preds = %162, %156, %113, %86
  %164 = load i32*, i32** %5, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @rangelock_add_reader(i32* %164, %struct.TYPE_12__* %165, %struct.TYPE_12__* %166, i32 %167)
  ret void
}

declare dso_local %struct.TYPE_12__* @avl_find(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i64 @avl_nearest(i32*, i32, i32) #1

declare dso_local i32 @cv_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @AVL_NEXT(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @rangelock_add_reader(i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
