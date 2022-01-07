; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_indir_trunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_indir_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid level for lbn %jd\0A\00", align 1
@fs = common dso_local global %struct.TYPE_3__* null, align 8
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i32)* @indir_trunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @indir_trunc(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %151

21:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @lbn_level(i32 %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @err_suj(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %21
  store i32 1, i32* %11, align 4
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %17, align 4
  br label %31

31:                                               ; preds = %39, %29
  %32 = load i32, i32* %17, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %36 = call i32 @NINDIR(%struct.TYPE_3__* %35)
  %37 = load i32, i32* %11, align 4
  %38 = mul nsw i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %17, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %17, align 4
  br label %31

42:                                               ; preds = %31
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @dblk_read(i64 %43, i32 %46)
  %48 = inttoptr i64 %47 to i8*
  %49 = bitcast i8* %48 to i64*
  store i64* %49, i64** %10, align 8
  %50 = load i64*, i64** %10, align 8
  %51 = bitcast i64* %50 to i8*
  %52 = bitcast i8* %51 to i64*
  store i64* %52, i64** %9, align 8
  store i32 0, i32* %17, align 4
  br label %53

53:                                               ; preds = %142, %42
  %54 = load i32, i32* %17, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %56 = call i32 @NINDIR(%struct.TYPE_3__* %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %145

58:                                               ; preds = %53
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i64*, i64** %10, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** %10, align 8
  %67 = load i64, i64* %65, align 8
  store i64 %67, i64* %12, align 8
  br label %72

68:                                               ; preds = %58
  %69 = load i64*, i64** %9, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %9, align 8
  %71 = load i64, i64* %69, align 8
  store i64 %71, i64* %12, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i64, i64* %12, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %142

76:                                               ; preds = %72
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %112

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %11, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sub nsw i32 %81, %84
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %86, %87
  %89 = sub nsw i32 0, %88
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 %91, %92
  %94 = add nsw i32 %89, %93
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %79
  br label %142

99:                                               ; preds = %79
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i64, i64* %12, align 8
  %103 = load i32, i32* %8, align 4
  call void @indir_trunc(i32 %100, i32 %101, i64 %102, i32 %103)
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  br label %142

111:                                              ; preds = %99
  br label %124

112:                                              ; preds = %76
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 0, %113
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %11, align 4
  %117 = mul nsw i32 %115, %116
  %118 = add nsw i32 %114, %117
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %142

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123, %111
  store i32 1, i32* %15, align 4
  %125 = load i64, i64* %12, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @blk_free(i64 %125, i32 0, i32 %128)
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %124
  %136 = load i64*, i64** %10, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 -1
  store i64 0, i64* %137, align 8
  br label %141

138:                                              ; preds = %124
  %139 = load i64*, i64** %9, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 -1
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141, %122, %110, %98, %75
  %143 = load i32, i32* %17, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %17, align 4
  br label %53

145:                                              ; preds = %53
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i64, i64* %7, align 8
  %150 = call i32 @dblk_dirty(i64 %149)
  br label %151

151:                                              ; preds = %20, %148, %145
  ret void
}

declare dso_local i32 @lbn_level(i32) #1

declare dso_local i32 @err_suj(i8*, i32) #1

declare dso_local i32 @NINDIR(%struct.TYPE_3__*) #1

declare dso_local i64 @dblk_read(i64, i32) #1

declare dso_local i32 @blk_free(i64, i32, i32) #1

declare dso_local i32 @dblk_dirty(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
