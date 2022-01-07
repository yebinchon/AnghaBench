; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_blkatoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_blkatoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%union.dinode = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64*, i64 }

@UFS_NXADDR = common dso_local global i32 0, align 4
@fs = common dso_local global %struct.TYPE_8__* null, align 8
@di_mode = common dso_local global i32 0, align 4
@IFLNK = common dso_local global i64 0, align 8
@di_size = common dso_local global i32 0, align 4
@UFS_NDADDR = common dso_local global i32 0, align 4
@di_db = common dso_local global i32* null, align 8
@UFS_NIADDR = common dso_local global i32 0, align 4
@di_ib = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"lbn %jd not in ino\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%union.dinode*, i32, i32, i32*)* @ino_blkatoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ino_blkatoff(%union.dinode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %union.dinode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %union.dinode* %0, %union.dinode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @UFS_NXADDR, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp sge i32 %17, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 -1, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs, align 8
  %26 = load %union.dinode*, %union.dinode** %6, align 8
  %27 = bitcast %union.dinode* %26 to %struct.TYPE_7__*
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, 1
  %31 = call i32 @lblkno(%struct.TYPE_8__* %25, i64 %30)
  %32 = icmp sgt i32 %24, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i64 0, i64* %5, align 8
  br label %165

34:                                               ; preds = %21
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs, align 8
  %37 = load %union.dinode*, %union.dinode** %6, align 8
  %38 = bitcast %union.dinode* %37 to %struct.TYPE_7__*
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @sblksize(%struct.TYPE_8__* %36, i64 %40, i32 %41)
  %43 = call i32 @numfrags(%struct.TYPE_8__* %35, i32 %42)
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %union.dinode*, %union.dinode** %6, align 8
  %46 = bitcast %union.dinode* %45 to %struct.TYPE_7__*
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %5, align 8
  br label %165

53:                                               ; preds = %16, %4
  %54 = load %union.dinode*, %union.dinode** %6, align 8
  %55 = load i32, i32* @di_mode, align 4
  %56 = call i64 @DIP(%union.dinode* %54, i32 %55)
  %57 = load i64, i64* @IFLNK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %union.dinode*, %union.dinode** %6, align 8
  %61 = load i32, i32* @di_size, align 4
  %62 = call i64 @DIP(%union.dinode* %60, i32 %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i64 0, i64* %5, align 8
  br label %165

68:                                               ; preds = %59, %53
  %69 = load i32, i32* %8, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @UFS_NDADDR, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs, align 8
  %78 = load %union.dinode*, %union.dinode** %6, align 8
  %79 = load i32, i32* @di_size, align 4
  %80 = call i64 @DIP(%union.dinode* %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @sblksize(%struct.TYPE_8__* %77, i64 %80, i32 %81)
  %83 = call i32 @numfrags(%struct.TYPE_8__* %76, i32 %82)
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %union.dinode*, %union.dinode** %6, align 8
  %86 = load i32*, i32** @di_db, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @DIP(%union.dinode* %85, i32 %90)
  store i64 %91, i64* %5, align 8
  br label %165

92:                                               ; preds = %71, %68
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %9, align 8
  store i32 %95, i32* %96, align 4
  store i32 0, i32* %13, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs, align 8
  %98 = call i32 @NINDIR(%struct.TYPE_8__* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* @UFS_NDADDR, align 4
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %154, %92
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @UFS_NIADDR, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %162

104:                                              ; preds = %100
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %105, %106
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %11, align 4
  %110 = sub nsw i32 0, %109
  %111 = load i32, i32* %13, align 4
  %112 = sub nsw i32 %110, %111
  %113 = icmp eq i32 %108, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %104
  %115 = load %union.dinode*, %union.dinode** %6, align 8
  %116 = load i32*, i32** @di_ib, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @DIP(%union.dinode* %115, i32 %120)
  store i64 %121, i64* %5, align 8
  br label %165

122:                                              ; preds = %104
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* %8, align 4
  %127 = sub nsw i32 0, %126
  %128 = load i32, i32* %12, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %154

131:                                              ; preds = %125, %122
  %132 = load i32, i32* %8, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %154

139:                                              ; preds = %134, %131
  %140 = load %union.dinode*, %union.dinode** %6, align 8
  %141 = load i32*, i32** @di_ib, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @DIP(%union.dinode* %140, i32 %145)
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %11, align 4
  %149 = sub nsw i32 0, %148
  %150 = load i32, i32* %13, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load i32, i32* %8, align 4
  %153 = call i64 @indir_blkatoff(i64 %146, i32 %147, i32 %151, i32 %152)
  store i64 %153, i64* %5, align 8
  br label %165

154:                                              ; preds = %138, %130
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs, align 8
  %158 = call i32 @NINDIR(%struct.TYPE_8__* %157)
  %159 = load i32, i32* %10, align 4
  %160 = mul nsw i32 %159, %158
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %11, align 4
  br label %100

162:                                              ; preds = %100
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @err_suj(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %162, %139, %114, %75, %67, %34, %33
  %166 = load i64, i64* %5, align 8
  ret i64 %166
}

declare dso_local i32 @lblkno(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @numfrags(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sblksize(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i64 @DIP(%union.dinode*, i32) #1

declare dso_local i32 @NINDIR(%struct.TYPE_8__*) #1

declare dso_local i64 @indir_blkatoff(i64, i32, i32, i32) #1

declare dso_local i32 @err_suj(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
