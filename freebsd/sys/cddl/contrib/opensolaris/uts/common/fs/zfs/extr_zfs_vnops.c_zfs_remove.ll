; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i32 }
%struct.TYPE_26__ = type { i32, i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_25__*, i64, i32* }
%struct.TYPE_25__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@ct = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@ZEXISTS = common dso_local global i32 0, align 4
@VV_NOSYNC = common dso_local global i32 0, align 4
@TX_REMOVE = common dso_local global i64 0, align 8
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_28__*, i8*, i32*)* @zfs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_remove(%struct.TYPE_28__* %0, %struct.TYPE_28__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %24 = call %struct.TYPE_26__* @VTOZ(%struct.TYPE_28__* %23)
  store %struct.TYPE_26__* %24, %struct.TYPE_26__** %10, align 8
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %26 = call %struct.TYPE_26__* @VTOZ(%struct.TYPE_28__* %25)
  store %struct.TYPE_26__* %26, %struct.TYPE_26__** %11, align 8
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %28, align 8
  store %struct.TYPE_27__* %29, %struct.TYPE_27__** %13, align 8
  store i64 0, i64* %17, align 8
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %20, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %32 = call i32 @ZFS_ENTER(%struct.TYPE_27__* %31)
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %34 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_26__* %33)
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %36 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_26__* %35)
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %14, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %41 = call %struct.TYPE_26__* @VTOZ(%struct.TYPE_28__* %40)
  store %struct.TYPE_26__* %41, %struct.TYPE_26__** %11, align 8
  store i64 0, i64* %16, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %12, align 8
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @zfs_zaccess_delete(%struct.TYPE_26__* %42, %struct.TYPE_26__* %43, i32* %44)
  store i32 %45, i32* %22, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %4
  br label %177

48:                                               ; preds = %4
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VDIR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EPERM, align 4
  %56 = call i32 @SET_ERROR(i32 %55)
  store i32 %56, i32* %22, align 4
  br label %177

57:                                               ; preds = %48
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* @ct, align 4
  %62 = call i32 @vnevent_remove(%struct.TYPE_28__* %58, %struct.TYPE_28__* %59, i8* %60, i32 %61)
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %17, align 8
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %70 = call i32 @SA_ZPL_XATTR(%struct.TYPE_27__* %69)
  %71 = call i32 @sa_lookup(i32 %68, i32 %70, i64* %16, i32 8)
  store i32 %71, i32* %22, align 4
  %72 = load i32, i32* %22, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %57
  %75 = load i64, i64* %16, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %79 = load i64, i64* %16, align 8
  %80 = call i32 @zfs_zget(%struct.TYPE_27__* %78, i64 %79, %struct.TYPE_26__** %12)
  store i32 %80, i32* %22, align 4
  %81 = load i32, i32* %22, align 4
  %82 = call i32 @ASSERT0(i32 %81)
  br label %83

83:                                               ; preds = %77, %74, %57
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %85, align 8
  %87 = call i32* @dmu_tx_create(%struct.TYPE_25__* %86)
  store i32* %87, i32** %18, align 8
  %88 = load i32*, i32** %18, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @FALSE, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @dmu_tx_hold_zap(i32* %88, i64 %91, i64 %92, i8* %93)
  %95 = load i32*, i32** %18, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @B_FALSE, align 4
  %100 = call i32 @dmu_tx_hold_sa(i32* %95, i32 %98, i32 %99)
  %101 = load i32*, i32** %18, align 8
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %103 = call i32 @zfs_sa_upgrade_txholds(i32* %101, %struct.TYPE_26__* %102)
  %104 = load i32*, i32** %18, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %106 = call i32 @zfs_sa_upgrade_txholds(i32* %104, %struct.TYPE_26__* %105)
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %108 = icmp ne %struct.TYPE_26__* %107, null
  br i1 %108, label %109, label %122

109:                                              ; preds = %83
  %110 = load i32*, i32** %18, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @B_TRUE, align 4
  %115 = call i32 @dmu_tx_hold_sa(i32* %110, i32 %113, i32 %114)
  %116 = load i32*, i32** %18, align 8
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @B_FALSE, align 4
  %121 = call i32 @dmu_tx_hold_sa(i32* %116, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %109, %83
  %123 = load i32*, i32** %18, align 8
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @FALSE, align 8
  %128 = call i32 @dmu_tx_hold_zap(i32* %123, i64 %126, i64 %127, i8* null)
  %129 = load i32*, i32** %18, align 8
  %130 = call i32 @dmu_tx_mark_netfree(i32* %129)
  %131 = load i32*, i32** %18, align 8
  %132 = load i32, i32* @TXG_WAIT, align 4
  %133 = call i32 @dmu_tx_assign(i32* %131, i32 %132)
  store i32 %133, i32* %22, align 4
  %134 = load i32, i32* %22, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %122
  %137 = load i32*, i32** %18, align 8
  %138 = call i32 @dmu_tx_abort(i32* %137)
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %140 = call i32 @ZFS_EXIT(%struct.TYPE_27__* %139)
  %141 = load i32, i32* %22, align 4
  store i32 %141, i32* %5, align 4
  br label %199

142:                                              ; preds = %122
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %146 = load i32*, i32** %18, align 8
  %147 = load i32, i32* @ZEXISTS, align 4
  %148 = call i32 @zfs_link_destroy(%struct.TYPE_26__* %143, i8* %144, %struct.TYPE_26__* %145, i32* %146, i32 %147, i64* %19)
  store i32 %148, i32* %22, align 4
  %149 = load i32, i32* %22, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load i32*, i32** %18, align 8
  %153 = call i32 @dmu_tx_commit(i32* %152)
  br label %177

154:                                              ; preds = %142
  %155 = load i64, i64* %19, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %154
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %159 = load i32*, i32** %18, align 8
  %160 = call i32 @zfs_unlinked_add(%struct.TYPE_26__* %158, i32* %159)
  %161 = load i32, i32* @VV_NOSYNC, align 4
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %157, %154
  %167 = load i64, i64* @TX_REMOVE, align 8
  store i64 %167, i64* %21, align 8
  %168 = load i32*, i32** %14, align 8
  %169 = load i32*, i32** %18, align 8
  %170 = load i64, i64* %21, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %172 = load i8*, i8** %8, align 8
  %173 = load i64, i64* %17, align 8
  %174 = call i32 @zfs_log_remove(i32* %168, i32* %169, i64 %170, %struct.TYPE_26__* %171, i8* %172, i64 %173)
  %175 = load i32*, i32** %18, align 8
  %176 = call i32 @dmu_tx_commit(i32* %175)
  br label %177

177:                                              ; preds = %166, %151, %54, %47
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %179 = icmp ne %struct.TYPE_26__* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %182 = call i32 @ZTOV(%struct.TYPE_26__* %181)
  %183 = call i32 @vrele(i32 %182)
  br label %184

184:                                              ; preds = %180, %177
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %184
  %193 = load i32*, i32** %14, align 8
  %194 = call i32 @zil_commit(i32* %193, i32 0)
  br label %195

195:                                              ; preds = %192, %184
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %197 = call i32 @ZFS_EXIT(%struct.TYPE_27__* %196)
  %198 = load i32, i32* %22, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %195, %136
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local %struct.TYPE_26__* @VTOZ(%struct.TYPE_28__*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_27__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_26__*) #1

declare dso_local i32 @zfs_zaccess_delete(%struct.TYPE_26__*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @vnevent_remove(%struct.TYPE_28__*, %struct.TYPE_28__*, i8*, i32) #1

declare dso_local i32 @sa_lookup(i32, i32, i64*, i32) #1

declare dso_local i32 @SA_ZPL_XATTR(%struct.TYPE_27__*) #1

declare dso_local i32 @zfs_zget(%struct.TYPE_27__*, i64, %struct.TYPE_26__**) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32* @dmu_tx_create(%struct.TYPE_25__*) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i64, i64, i8*) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i32) #1

declare dso_local i32 @zfs_sa_upgrade_txholds(i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @dmu_tx_mark_netfree(i32*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_27__*) #1

declare dso_local i32 @zfs_link_destroy(%struct.TYPE_26__*, i8*, %struct.TYPE_26__*, i32*, i32, i64*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @zfs_unlinked_add(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @zfs_log_remove(i32*, i32*, i64, %struct.TYPE_26__*, i8*, i64) #1

declare dso_local i32 @vrele(i32) #1

declare dso_local i32 @ZTOV(%struct.TYPE_26__*) #1

declare dso_local i32 @zil_commit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
