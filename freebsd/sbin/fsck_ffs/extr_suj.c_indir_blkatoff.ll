; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_indir_blkatoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_indir_blkatoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid indir lbn %jd\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid lbn %jd\0A\00", align 1
@fs = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"Invalid indirect index %d produced by lbn %jd\0A\00", align 1
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Invalid lbn %jd at level 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @indir_blkatoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @indir_blkatoff(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %146

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @lbn_level(i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i8*, i32, ...) @err_suj(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %14, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i8*, i32, ...) @err_suj(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %30, %27
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @dblk_read(i32 %37, i32 %40)
  %42 = inttoptr i64 %41 to i8*
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** %11, align 8
  store i32 1, i32* %12, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %47, %48
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %60, %36
  %53 = load i32, i32* %15, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %57 = call i32 @NINDIR(%struct.TYPE_3__* %56)
  %58 = load i32, i32* %12, align 4
  %59 = mul nsw i32 %58, %57
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %15, align 4
  br label %52

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i32, i32* %12, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* %15, align 4
  br label %79

72:                                               ; preds = %63
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 0, %73
  %75 = load i32, i32* %13, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load i32, i32* %12, align 4
  %78 = sdiv i32 %76, %77
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %72, %66
  %80 = load i32, i32* %15, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %15, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %85 = call i32 @NINDIR(%struct.TYPE_3__* %84)
  %86 = icmp sge i32 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82, %79
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 (i8*, i32, ...) @err_suj(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %82
  %92 = load i32, i32* %14, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %12, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %95, %98
  store i32 %99, i32* %8, align 4
  br label %110

100:                                              ; preds = %91
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %12, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %101, %104
  %106 = sub nsw i32 0, %105
  %107 = load i32, i32* %14, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sub nsw i32 %106, %108
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %100, %94
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %6, align 4
  br label %128

122:                                              ; preds = %110
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %122, %116
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %5, align 4
  br label %146

134:                                              ; preds = %128
  %135 = load i32, i32* %14, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %9, align 4
  %139 = call i32 (i8*, i32, ...) @err_suj(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @indir_blkatoff(i32 %141, i32 %142, i32 %143, i32 %144)
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %140, %132, %18
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @lbn_level(i32) #1

declare dso_local i32 @err_suj(i8*, i32, ...) #1

declare dso_local i64 @dblk_read(i32, i32) #1

declare dso_local i32 @NINDIR(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
