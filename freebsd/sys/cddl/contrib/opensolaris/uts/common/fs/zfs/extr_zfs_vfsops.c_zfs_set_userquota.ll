; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfs_set_userquota.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfs_set_userquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i64 }

@ZFS_PROP_USERQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPQUOTA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ZPL_VERSION_USERSPACE = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@DMU_NEW_OBJECT = common dso_local global i64 0, align 8
@MASTER_NODE_OBJ = common dso_local global i64 0, align 8
@zfs_userquota_prop_prefixes = common dso_local global i32** null, align 8
@TXG_WAIT = common dso_local global i32 0, align 4
@DMU_OT_USERGROUP_QUOTA = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_set_userquota(%struct.TYPE_6__* %0, i64 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [32 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @ZFS_PROP_USERQUOTA, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @ZFS_PROP_GROUPQUOTA, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @SET_ERROR(i32 %25)
  store i32 %26, i32* %6, align 4
  br label %182

27:                                               ; preds = %20, %5
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ZPL_VERSION_USERSPACE, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOTSUP, align 4
  %35 = call i32 @SET_ERROR(i32 %34)
  store i32 %35, i32* %6, align 4
  br label %182

36:                                               ; preds = %27
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @ZFS_PROP_USERQUOTA, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  br label %46

43:                                               ; preds = %36
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i64* [ %42, %40 ], [ %45, %43 ]
  store i64* %47, i64** %15, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %52 = load i32, i32* @B_TRUE, align 4
  %53 = call i32 @id_to_fuidstr(%struct.TYPE_6__* %48, i8* %49, i64 %50, i8* %51, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %6, align 4
  br label %182

58:                                               ; preds = %46
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %16, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32* @dmu_tx_create(i32 %64)
  store i32* %65, i32** %14, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = load i64*, i64** %15, align 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load i64*, i64** %15, align 8
  %72 = load i64, i64* %71, align 8
  br label %75

73:                                               ; preds = %58
  %74 = load i64, i64* @DMU_NEW_OBJECT, align 8
  br label %75

75:                                               ; preds = %73, %70
  %76 = phi i64 [ %72, %70 ], [ %74, %73 ]
  %77 = load i32, i32* @B_TRUE, align 4
  %78 = call i32 @dmu_tx_hold_zap(i32* %66, i64 %76, i32 %77, i32* null)
  %79 = load i64*, i64** %15, align 8
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load i32*, i32** %14, align 8
  %84 = load i64, i64* @MASTER_NODE_OBJ, align 8
  %85 = load i32, i32* @B_TRUE, align 4
  %86 = load i32**, i32*** @zfs_userquota_prop_prefixes, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds i32*, i32** %86, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @dmu_tx_hold_zap(i32* %83, i64 %84, i32 %85, i32* %89)
  br label %91

91:                                               ; preds = %82, %75
  %92 = load i64, i64* %16, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = call i32 @zfs_fuid_txhold(%struct.TYPE_6__* %95, i32* %96)
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32*, i32** %14, align 8
  %100 = load i32, i32* @TXG_WAIT, align 4
  %101 = call i32 @dmu_tx_assign(i32* %99, i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i32*, i32** %14, align 8
  %106 = call i32 @dmu_tx_abort(i32* %105)
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %6, align 4
  br label %182

108:                                              ; preds = %98
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  %111 = call i32 @mutex_enter(i32* %110)
  %112 = load i64*, i64** %15, align 8
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %108
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @DMU_OT_USERGROUP_QUOTA, align 4
  %120 = load i32, i32* @DMU_OT_NONE, align 4
  %121 = load i32*, i32** %14, align 8
  %122 = call i64 @zap_create(i32 %118, i32 %119, i32 %120, i32 0, i32* %121)
  %123 = load i64*, i64** %15, align 8
  store i64 %122, i64* %123, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* @MASTER_NODE_OBJ, align 8
  %128 = load i32**, i32*** @zfs_userquota_prop_prefixes, align 8
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds i32*, i32** %128, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = load i64*, i64** %15, align 8
  %133 = load i32*, i32** %14, align 8
  %134 = call i64 @zap_add(i32 %126, i64 %127, i32* %131, i32 8, i32 1, i64* %132, i32* %133)
  %135 = icmp eq i64 0, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @VERIFY(i32 %136)
  br label %138

138:                                              ; preds = %115, %108
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 4
  %141 = call i32 @mutex_exit(i32* %140)
  %142 = load i64, i64* %11, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %138
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i64*, i64** %15, align 8
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %151 = load i32*, i32** %14, align 8
  %152 = call i32 @zap_remove(i32 %147, i64 %149, i8* %150, i32* %151)
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* @ENOENT, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %144
  store i32 0, i32* %13, align 4
  br label %157

157:                                              ; preds = %156, %144
  br label %167

158:                                              ; preds = %138
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load i64*, i64** %15, align 8
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %165 = load i32*, i32** %14, align 8
  %166 = call i32 @zap_update(i32 %161, i64 %163, i8* %164, i32 8, i32 1, i64* %11, i32* %165)
  store i32 %166, i32* %13, align 4
  br label %167

167:                                              ; preds = %158, %157
  %168 = load i32, i32* %13, align 4
  %169 = icmp eq i32 %168, 0
  %170 = zext i1 %169 to i32
  %171 = call i32 @ASSERT(i32 %170)
  %172 = load i64, i64* %16, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %176 = load i32*, i32** %14, align 8
  %177 = call i32 @zfs_fuid_sync(%struct.TYPE_6__* %175, i32* %176)
  br label %178

178:                                              ; preds = %174, %167
  %179 = load i32*, i32** %14, align 8
  %180 = call i32 @dmu_tx_commit(i32* %179)
  %181 = load i32, i32* %13, align 4
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %178, %104, %56, %33, %24
  %183 = load i32, i32* %6, align 4
  ret i32 %183
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @id_to_fuidstr(%struct.TYPE_6__*, i8*, i64, i8*, i32) #1

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i64, i32, i32*) #1

declare dso_local i32 @zfs_fuid_txhold(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @zap_create(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zap_add(i32, i64, i32*, i32, i32, i64*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zap_remove(i32, i64, i8*, i32*) #1

declare dso_local i32 @zap_update(i32, i64, i8*, i32, i32, i64*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zfs_fuid_sync(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
