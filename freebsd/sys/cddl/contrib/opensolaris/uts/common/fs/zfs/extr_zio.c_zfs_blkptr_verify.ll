; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zfs_blkptr_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zfs_blkptr_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_21__ = type { i32* }

@.str = private unnamed_addr constant [35 x i8] c"blkptr at %p has invalid TYPE %llu\00", align 1
@ZIO_CHECKSUM_FUNCTIONS = common dso_local global i64 0, align 8
@ZIO_CHECKSUM_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"blkptr at %p has invalid CHECKSUM %llu\00", align 1
@ZIO_COMPRESS_FUNCTIONS = common dso_local global i64 0, align 8
@ZIO_COMPRESS_ON = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"blkptr at %p has invalid COMPRESS %llu\00", align 1
@SPA_MAXBLOCKSIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"blkptr at %p has invalid LSIZE %llu\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"blkptr at %p has invalid PSIZE %llu\00", align 1
@NUM_BP_EMBEDDED_TYPES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"blkptr at %p has invalid ETYPE %llu\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"blkptr at %p DVA %u has invalid VDEV %llu\00", align 1
@vdev_hole_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"blkptr at %p DVA %u has hole VDEV %llu\00", align 1
@vdev_missing_ops = common dso_local global i32 0, align 4
@SPA_GANGBLOCKSIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"blkptr at %p DVA %u has invalid OFFSET %llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_blkptr_verify(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %11 = call i64 @BP_GET_TYPE(%struct.TYPE_21__* %10)
  %12 = call i32 @DMU_OT_IS_VALID(i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = call i64 @BP_GET_TYPE(%struct.TYPE_21__* %16)
  %18 = trunc i64 %17 to i32
  %19 = call i32 (i8*, %struct.TYPE_21__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %15, i32 %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %22 = call i64 @BP_GET_CHECKSUM(%struct.TYPE_21__* %21)
  %23 = load i64, i64* @ZIO_CHECKSUM_FUNCTIONS, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = call i64 @BP_GET_CHECKSUM(%struct.TYPE_21__* %26)
  %28 = load i64, i64* @ZIO_CHECKSUM_ON, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25, %20
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = call i64 @BP_GET_CHECKSUM(%struct.TYPE_21__* %32)
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i8*, %struct.TYPE_21__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_21__* %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = call i64 @BP_GET_COMPRESS(%struct.TYPE_21__* %37)
  %39 = load i64, i64* @ZIO_COMPRESS_FUNCTIONS, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = call i64 @BP_GET_COMPRESS(%struct.TYPE_21__* %42)
  %44 = load i64, i64* @ZIO_COMPRESS_ON, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41, %36
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = call i64 @BP_GET_COMPRESS(%struct.TYPE_21__* %48)
  %50 = trunc i64 %49 to i32
  %51 = call i32 (i8*, %struct.TYPE_21__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_21__* %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %54 = call i64 @BP_GET_LSIZE(%struct.TYPE_21__* %53)
  %55 = load i64, i64* @SPA_MAXBLOCKSIZE, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %60 = call i64 @BP_GET_LSIZE(%struct.TYPE_21__* %59)
  %61 = trunc i64 %60 to i32
  %62 = call i32 (i8*, %struct.TYPE_21__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_21__* %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %52
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = call i64 @BP_GET_PSIZE(%struct.TYPE_21__* %64)
  %66 = load i64, i64* @SPA_MAXBLOCKSIZE, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = call i64 @BP_GET_PSIZE(%struct.TYPE_21__* %70)
  %72 = trunc i64 %71 to i32
  %73 = call i32 (i8*, %struct.TYPE_21__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_21__* %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %76 = call i64 @BP_IS_EMBEDDED(%struct.TYPE_21__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %80 = call i64 @BPE_GET_ETYPE(%struct.TYPE_21__* %79)
  %81 = load i64, i64* @NUM_BP_EMBEDDED_TYPES, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %86 = call i64 @BPE_GET_ETYPE(%struct.TYPE_21__* %85)
  %87 = trunc i64 %86 to i32
  %88 = call i32 (i8*, %struct.TYPE_21__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_21__* %84, i32 %87)
  br label %89

89:                                               ; preds = %83, %78
  br label %90

90:                                               ; preds = %89, %74
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  br label %197

96:                                               ; preds = %90
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %194, %96
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %100 = call i32 @BP_GET_NDVAS(%struct.TYPE_21__* %99)
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %197

102:                                              ; preds = %97
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = call i64 @DVA_GET_VDEV(i32* %108)
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp uge i64 %110, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %102
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i64, i64* %6, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 (i8*, %struct.TYPE_21__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_21__* %118, i32 %119, i32 %121)
  br label %194

123:                                              ; preds = %102
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %127, align 8
  %129 = load i64, i64* %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %128, i64 %129
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %130, align 8
  store %struct.TYPE_19__* %131, %struct.TYPE_19__** %7, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %133 = icmp eq %struct.TYPE_19__* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %123
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load i64, i64* %6, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 (i8*, %struct.TYPE_21__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_21__* %135, i32 %136, i32 %138)
  br label %194

140:                                              ; preds = %123
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = icmp eq i32* %143, @vdev_hole_ops
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i64, i64* %6, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 (i8*, %struct.TYPE_21__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_21__* %146, i32 %147, i32 %149)
  br label %194

151:                                              ; preds = %140
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, @vdev_missing_ops
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %194

157:                                              ; preds = %151
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = call i64 @DVA_GET_OFFSET(i32* %163)
  store i64 %164, i64* %8, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = call i64 @DVA_GET_ASIZE(i32* %170)
  store i64 %171, i64* %9, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %173 = call i64 @BP_IS_GANG(%struct.TYPE_21__* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %157
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %177 = load i32, i32* @SPA_GANGBLOCKSIZE, align 4
  %178 = call i64 @vdev_psize_to_asize(%struct.TYPE_19__* %176, i32 %177)
  store i64 %178, i64* %9, align 8
  br label %179

179:                                              ; preds = %175, %157
  %180 = load i64, i64* %8, align 8
  %181 = load i64, i64* %9, align 8
  %182 = add i64 %180, %181
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ugt i64 %182, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %179
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %189 = load i32, i32* %5, align 4
  %190 = load i64, i64* %8, align 8
  %191 = trunc i64 %190 to i32
  %192 = call i32 (i8*, %struct.TYPE_21__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_21__* %188, i32 %189, i32 %191)
  br label %193

193:                                              ; preds = %187, %179
  br label %194

194:                                              ; preds = %193, %156, %145, %134, %117
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %5, align 4
  br label %97

197:                                              ; preds = %95, %97
  ret void
}

declare dso_local i32 @DMU_OT_IS_VALID(i64) #1

declare dso_local i64 @BP_GET_TYPE(%struct.TYPE_21__*) #1

declare dso_local i32 @zfs_panic_recover(i8*, %struct.TYPE_21__*, i32, ...) #1

declare dso_local i64 @BP_GET_CHECKSUM(%struct.TYPE_21__*) #1

declare dso_local i64 @BP_GET_COMPRESS(%struct.TYPE_21__*) #1

declare dso_local i64 @BP_GET_LSIZE(%struct.TYPE_21__*) #1

declare dso_local i64 @BP_GET_PSIZE(%struct.TYPE_21__*) #1

declare dso_local i64 @BP_IS_EMBEDDED(%struct.TYPE_21__*) #1

declare dso_local i64 @BPE_GET_ETYPE(%struct.TYPE_21__*) #1

declare dso_local i32 @BP_GET_NDVAS(%struct.TYPE_21__*) #1

declare dso_local i64 @DVA_GET_VDEV(i32*) #1

declare dso_local i64 @DVA_GET_OFFSET(i32*) #1

declare dso_local i64 @DVA_GET_ASIZE(i32*) #1

declare dso_local i64 @BP_IS_GANG(%struct.TYPE_21__*) #1

declare dso_local i64 @vdev_psize_to_asize(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
