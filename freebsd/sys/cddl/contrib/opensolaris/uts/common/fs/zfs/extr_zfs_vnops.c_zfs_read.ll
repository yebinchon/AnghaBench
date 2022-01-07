; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i64, i64, i32 }
%struct.TYPE_19__ = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { i64 }

@ZFS_AV_QUARANTINED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FRSYNC = common dso_local global i32 0, align 4
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8
@RL_READER = common dso_local global i32 0, align 4
@zfs_read_chunk_size = common dso_local global i64 0, align 8
@ECKSUM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UIOTYPE_ZEROCOPY = common dso_local global i64 0, align 8
@UIO_NOCOPY = common dso_local global i64 0, align 8
@UIO_XUIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_22__*, i32, i32*, i32*)* @zfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_read(i32* %0, %struct.TYPE_22__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call %struct.TYPE_19__* @VTOZ(i32* %19)
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %12, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 7
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %13, align 8
  store i32 0, i32* %16, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %17, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %25 = call i32 @ZFS_ENTER(%struct.TYPE_20__* %24)
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %27 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_19__* %26)
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ZFS_AV_QUARANTINED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %5
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %36 = call i32 @ZFS_EXIT(%struct.TYPE_20__* %35)
  %37 = load i32, i32* @EACCES, align 4
  %38 = call i32 @SET_ERROR(i32 %37)
  store i32 %38, i32* %6, align 4
  br label %204

39:                                               ; preds = %5
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %46 = call i32 @ZFS_EXIT(%struct.TYPE_20__* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = call i32 @SET_ERROR(i32 %47)
  store i32 %48, i32* %6, align 4
  br label %204

49:                                               ; preds = %39
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %56 = call i32 @ZFS_EXIT(%struct.TYPE_20__* %55)
  store i32 0, i32* %6, align 4
  br label %204

57:                                               ; preds = %49
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @MANDMODE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %57
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @FREAD, align 4
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @chklock(i32* %64, i32 %65, i64 %68, i32 %71, i32 %74, i32* %75)
  store i32 %76, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %63
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %80 = call i32 @ZFS_EXIT(%struct.TYPE_20__* %79)
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %6, align 4
  br label %204

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %57
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @FRSYNC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %93, %88
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @zil_commit(i64 %104, i32 %107)
  br label %109

109:                                              ; preds = %101, %93, %83
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @RL_READER, align 4
  %119 = call i32* @rangelock_enter(i32* %111, i64 %114, i32 %117, i32 %118)
  store i32* %119, i32** %18, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp sge i64 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %109
  store i32 0, i32* %16, align 4
  br label %195

128:                                              ; preds = %109
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %131, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @ASSERT(i32 %136)
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %143, %146
  %148 = call i32 @MIN(i32 %140, i64 %147)
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %190, %128
  %150 = load i32, i32* %14, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %194

152:                                              ; preds = %149
  %153 = load i32, i32* %14, align 4
  %154 = load i64, i64* @zfs_read_chunk_size, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = load i64, i64* @zfs_read_chunk_size, align 8
  %160 = call i64 @P2PHASE(i32 %158, i64 %159)
  %161 = sub nsw i64 %154, %160
  %162 = call i32 @MIN(i32 %153, i64 %161)
  store i32 %162, i32* %15, align 4
  %163 = load i32*, i32** %7, align 8
  %164 = call i64 @vn_has_cached_data(i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %152
  %167 = load i32*, i32** %7, align 8
  %168 = load i32, i32* %15, align 4
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %170 = call i32 @mappedread(i32* %167, i32 %168, %struct.TYPE_22__* %169)
  store i32 %170, i32* %16, align 4
  br label %179

171:                                              ; preds = %152
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @sa_get_db(i32 %174)
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %177 = load i32, i32* %15, align 4
  %178 = call i32 @dmu_read_uio_dbuf(i32 %175, %struct.TYPE_22__* %176, i32 %177)
  store i32 %178, i32* %16, align 4
  br label %179

179:                                              ; preds = %171, %166
  %180 = load i32, i32* %16, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* @ECKSUM, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i32, i32* @EIO, align 4
  %188 = call i32 @SET_ERROR(i32 %187)
  store i32 %188, i32* %16, align 4
  br label %189

189:                                              ; preds = %186, %182
  br label %194

190:                                              ; preds = %179
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %14, align 4
  %193 = sub nsw i32 %192, %191
  store i32 %193, i32* %14, align 4
  br label %149

194:                                              ; preds = %189, %149
  br label %195

195:                                              ; preds = %194, %127
  %196 = load i32*, i32** %18, align 8
  %197 = call i32 @rangelock_exit(i32* %196)
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %200 = call i32 @ZFS_ACCESSTIME_STAMP(%struct.TYPE_20__* %198, %struct.TYPE_19__* %199)
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %202 = call i32 @ZFS_EXIT(%struct.TYPE_20__* %201)
  %203 = load i32, i32* %16, align 4
  store i32 %203, i32* %6, align 4
  br label %204

204:                                              ; preds = %195, %78, %54, %44, %34
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local %struct.TYPE_19__* @VTOZ(i32*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_20__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_19__*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_20__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @MANDMODE(i32) #1

declare dso_local i32 @chklock(i32*, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @zil_commit(i64, i32) #1

declare dso_local i32* @rangelock_enter(i32*, i64, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i64 @P2PHASE(i32, i64) #1

declare dso_local i64 @vn_has_cached_data(i32*) #1

declare dso_local i32 @mappedread(i32*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @dmu_read_uio_dbuf(i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @sa_get_db(i32) #1

declare dso_local i32 @rangelock_exit(i32*) #1

declare dso_local i32 @ZFS_ACCESSTIME_STAMP(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
