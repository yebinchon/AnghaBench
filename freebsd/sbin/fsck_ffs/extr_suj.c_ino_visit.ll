; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_visit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_visit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%union.dinode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64* }

@di_size = common dso_local global i32 0, align 4
@di_mode = common dso_local global i32 0, align 4
@IFMT = common dso_local global i64 0, align 8
@VISIT_EXT = common dso_local global i32 0, align 4
@fs = common dso_local global %struct.TYPE_7__* null, align 8
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@UFS_NXADDR = common dso_local global i32 0, align 4
@IFBLK = common dso_local global i32 0, align 4
@IFCHR = common dso_local global i32 0, align 4
@IFLNK = common dso_local global i32 0, align 4
@UFS_NDADDR = common dso_local global i32 0, align 4
@di_db = common dso_local global i32* null, align 8
@VISIT_ROOT = common dso_local global i32 0, align 4
@UFS_NIADDR = common dso_local global i32 0, align 4
@di_ib = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%union.dinode*, i32, i32 (i32, i32, i64, i32)*, i32)* @ino_visit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ino_visit(%union.dinode* %0, i32 %1, i32 (i32, i32, i64, i32)* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %union.dinode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32, i32, i64, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %union.dinode* %0, %union.dinode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i32, i32, i64, i32)* %2, i32 (i32, i32, i64, i32)** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %union.dinode*, %union.dinode** %6, align 8
  %19 = load i32, i32* @di_size, align 4
  %20 = call i64 @DIP(%union.dinode* %18, i32 %19)
  store i64 %20, i64* %13, align 8
  %21 = load %union.dinode*, %union.dinode** %6, align 8
  %22 = load i32, i32* @di_mode, align 4
  %23 = call i64 @DIP(%union.dinode* %21, i32 %22)
  %24 = load i64, i64* @IFMT, align 8
  %25 = and i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %15, align 4
  store i64 0, i64* %14, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @VISIT_EXT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %92

31:                                               ; preds = %4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %92

37:                                               ; preds = %31
  %38 = load %union.dinode*, %union.dinode** %6, align 8
  %39 = bitcast %union.dinode* %38 to %struct.TYPE_6__*
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %92

43:                                               ; preds = %37
  store i32 0, i32* %17, align 4
  br label %44

44:                                               ; preds = %88, %43
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* @UFS_NXADDR, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %91

48:                                               ; preds = %44
  %49 = load %union.dinode*, %union.dinode** %6, align 8
  %50 = bitcast %union.dinode* %49 to %struct.TYPE_6__*
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %88

59:                                               ; preds = %48
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs, align 8
  %61 = load %union.dinode*, %union.dinode** %6, align 8
  %62 = bitcast %union.dinode* %61 to %struct.TYPE_6__*
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @sblksize(%struct.TYPE_7__* %60, i64 %64, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @numfrags(%struct.TYPE_7__* %67, i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %14, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %14, align 8
  %74 = load i32 (i32, i32, i64, i32)*, i32 (i32, i32, i64, i32)** %8, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %17, align 4
  %77 = sub nsw i32 -1, %76
  %78 = load %union.dinode*, %union.dinode** %6, align 8
  %79 = bitcast %union.dinode* %78 to %struct.TYPE_6__*
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %16, align 4
  %87 = call i32 %74(i32 %75, i32 %77, i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %59, %58
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %44

91:                                               ; preds = %44
  br label %92

92:                                               ; preds = %91, %37, %31, %4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @IFBLK, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %110, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @IFCHR, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* @IFLNK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i64, i64* %13, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104, %96, %92
  %111 = load i64, i64* %14, align 8
  store i64 %111, i64* %5, align 8
  br label %204

112:                                              ; preds = %104, %100
  store i32 0, i32* %17, align 4
  br label %113

113:                                              ; preds = %151, %112
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* @UFS_NDADDR, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %154

117:                                              ; preds = %113
  %118 = load %union.dinode*, %union.dinode** %6, align 8
  %119 = load i32*, i32** @di_db, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @DIP(%union.dinode* %118, i32 %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %151

127:                                              ; preds = %117
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs, align 8
  %129 = load i64, i64* %13, align 8
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @sblksize(%struct.TYPE_7__* %128, i64 %129, i32 %130)
  store i32 %131, i32* %16, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs, align 8
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @numfrags(%struct.TYPE_7__* %132, i32 %133)
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %14, align 8
  %138 = add nsw i64 %137, %136
  store i64 %138, i64* %14, align 8
  %139 = load i32 (i32, i32, i64, i32)*, i32 (i32, i32, i64, i32)** %8, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %17, align 4
  %142 = load %union.dinode*, %union.dinode** %6, align 8
  %143 = load i32*, i32** @di_db, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @DIP(%union.dinode* %142, i32 %147)
  %149 = load i32, i32* %16, align 4
  %150 = call i32 %139(i32 %140, i32 %141, i64 %148, i32 %149)
  br label %151

151:                                              ; preds = %127, %126
  %152 = load i32, i32* %17, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %17, align 4
  br label %113

154:                                              ; preds = %113
  %155 = load i32, i32* @VISIT_ROOT, align 4
  %156 = load i32, i32* %9, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %9, align 4
  store i32 0, i32* %17, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs, align 8
  %159 = call i32 @NINDIR(%struct.TYPE_7__* %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* @UFS_NDADDR, align 4
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %198, %154
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* @UFS_NIADDR, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %202

165:                                              ; preds = %161
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %166, %167
  store i32 %168, i32* %10, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs, align 8
  %170 = call i32 @NINDIR(%struct.TYPE_7__* %169)
  %171 = load i32, i32* %11, align 4
  %172 = mul nsw i32 %171, %170
  store i32 %172, i32* %11, align 4
  %173 = load %union.dinode*, %union.dinode** %6, align 8
  %174 = load i32*, i32** @di_ib, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @DIP(%union.dinode* %173, i32 %178)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %165
  br label %198

182:                                              ; preds = %165
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %12, align 4
  %185 = sub nsw i32 0, %184
  %186 = load i32, i32* %17, align 4
  %187 = sub nsw i32 %185, %186
  %188 = load %union.dinode*, %union.dinode** %6, align 8
  %189 = load i32*, i32** @di_ib, align 8
  %190 = load i32, i32* %17, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @DIP(%union.dinode* %188, i32 %193)
  %195 = load i32 (i32, i32, i64, i32)*, i32 (i32, i32, i64, i32)** %8, align 8
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @indir_visit(i32 %183, i32 %187, i64 %194, i64* %14, i32 (i32, i32, i64, i32)* %195, i32 %196)
  br label %198

198:                                              ; preds = %182, %181
  %199 = load i32, i32* %17, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %17, align 4
  %201 = load i32, i32* %10, align 4
  store i32 %201, i32* %12, align 4
  br label %161

202:                                              ; preds = %161
  %203 = load i64, i64* %14, align 8
  store i64 %203, i64* %5, align 8
  br label %204

204:                                              ; preds = %202, %110
  %205 = load i64, i64* %5, align 8
  ret i64 %205
}

declare dso_local i64 @DIP(%union.dinode*, i32) #1

declare dso_local i32 @sblksize(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @numfrags(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @NINDIR(%struct.TYPE_7__*) #1

declare dso_local i32 @indir_visit(i32, i32, i64, i64*, i32 (i32, i32, i64, i32)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
