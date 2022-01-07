; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_indir_visit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_indir_visit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid level for lbn %jd\0A\00", align 1
@VISIT_ROOT = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"blk %jd ino %ju lbn %jd(%d) is not indir.\0A\00", align 1
@fs = common dso_local global %struct.TYPE_3__* null, align 8
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@VISIT_INDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64, i32*, i32 (i64, i32, i64, i64)*, i32)* @indir_visit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @indir_visit(i64 %0, i32 %1, i64 %2, i32* %3, i32 (i64, i32, i64, i64)* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32 (i64, i32, i64, i64)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 (i64, i32, i64, i64)* %4, i32 (i64, i32, i64, i64)** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %167

23:                                               ; preds = %6
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @lbn_level(i32 %24)
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @err_suj(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @VISIT_ROOT, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @blk_isindir(i64 %37, i64 %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load i64, i64* @debug, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %7, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %46, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %42
  br label %145

53:                                               ; preds = %36, %31
  store i32 1, i32* %15, align 4
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %19, align 4
  br label %55

55:                                               ; preds = %63, %53
  %56 = load i32, i32* %19, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %60 = call i32 @NINDIR(%struct.TYPE_3__* %59)
  %61 = load i32, i32* %15, align 4
  %62 = mul nsw i32 %61, %60
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %19, align 4
  br label %55

66:                                               ; preds = %55
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @dblk_read(i64 %67, i32 %70)
  %72 = inttoptr i64 %71 to i8*
  %73 = bitcast i8* %72 to i32*
  store i32* %73, i32** %14, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = bitcast i8* %75 to i64*
  store i64* %76, i64** %13, align 8
  store i32 0, i32* %19, align 4
  br label %77

77:                                               ; preds = %141, %66
  %78 = load i32, i32* %19, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %80 = call i32 @NINDIR(%struct.TYPE_3__* %79)
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %144

82:                                               ; preds = %77
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i32*, i32** %14, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %14, align 8
  %91 = load i32, i32* %89, align 4
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %16, align 8
  br label %97

93:                                               ; preds = %82
  %94 = load i64*, i64** %13, align 8
  %95 = getelementptr inbounds i64, i64* %94, i32 1
  store i64* %95, i64** %13, align 8
  %96 = load i64, i64* %94, align 8
  store i64 %96, i64* %16, align 8
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i64, i64* %16, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %141

101:                                              ; preds = %97
  %102 = load i32, i32* %18, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %101
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 0, %105
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %15, align 4
  %109 = mul nsw i32 %107, %108
  %110 = add nsw i32 %106, %109
  store i32 %110, i32* %17, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %113
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  %119 = load i32 (i64, i32, i64, i64)*, i32 (i64, i32, i64, i64)** %11, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i32, i32* %17, align 4
  %122 = load i64, i64* %16, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 %119(i64 %120, i32 %121, i64 %122, i64 %125)
  br label %140

127:                                              ; preds = %101
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %15, align 4
  %132 = mul nsw i32 %130, %131
  %133 = sub nsw i32 %129, %132
  store i32 %133, i32* %17, align 4
  %134 = load i64, i64* %7, align 8
  %135 = load i32, i32* %17, align 4
  %136 = load i64, i64* %16, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load i32 (i64, i32, i64, i64)*, i32 (i64, i32, i64, i64)** %11, align 8
  %139 = load i32, i32* %12, align 4
  call void @indir_visit(i64 %134, i32 %135, i64 %136, i32* %137, i32 (i64, i32, i64, i64)* %138, i32 %139)
  br label %140

140:                                              ; preds = %127, %104
  br label %141

141:                                              ; preds = %140, %100
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %19, align 4
  br label %77

144:                                              ; preds = %77
  br label %145

145:                                              ; preds = %144, %52
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @VISIT_INDIR, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %167

150:                                              ; preds = %145
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %153
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 4
  %159 = load i32 (i64, i32, i64, i64)*, i32 (i64, i32, i64, i64)** %11, align 8
  %160 = load i64, i64* %7, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load i64, i64* %9, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i32 %159(i64 %160, i32 %161, i64 %162, i64 %165)
  br label %167

167:                                              ; preds = %22, %150, %145
  ret void
}

declare dso_local i32 @lbn_level(i32) #1

declare dso_local i32 @err_suj(i8*, i32) #1

declare dso_local i64 @blk_isindir(i64, i64, i32) #1

declare dso_local i32 @printf(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @NINDIR(%struct.TYPE_3__*) #1

declare dso_local i64 @dblk_read(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
