; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_inuse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_inuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CREATE_TXG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@POOL_STATE_SPARE = common dso_local global i64 0, align 8
@POOL_STATE_L2CACHE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_TXG = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i64 0, align 8
@POOL_STATE_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i32, i64*, i64*)* @vdev_inuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_inuse(%struct.TYPE_4__* %0, i64 %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %12, align 8
  store i64 0, i64* %18, align 8
  %23 = load i64*, i64** %10, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i64*, i64** %10, align 8
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %25, %5
  %28 = load i64*, i64** %11, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64*, i64** %11, align 8
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = call i32* @vdev_label_read_config(%struct.TYPE_4__* %33, i64 -1)
  store i32* %34, i32** %19, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @B_FALSE, align 4
  store i32 %37, i32* %6, align 4
  br label %185

38:                                               ; preds = %32
  %39 = load i32*, i32** %19, align 8
  %40 = load i32, i32* @ZPOOL_CONFIG_CREATE_TXG, align 4
  %41 = call i64 @nvlist_lookup_uint64(i32* %39, i32 %40, i64* %18)
  %42 = load i32*, i32** %19, align 8
  %43 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %44 = call i64 @nvlist_lookup_uint64(i32* %42, i32 %43, i64* %13)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load i32*, i32** %19, align 8
  %48 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %49 = call i64 @nvlist_lookup_uint64(i32* %47, i32 %48, i64* %15)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46, %38
  %52 = load i32*, i32** %19, align 8
  %53 = call i32 @nvlist_free(i32* %52)
  %54 = load i32, i32* @B_FALSE, align 4
  store i32 %54, i32* %6, align 4
  br label %185

55:                                               ; preds = %46
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* @POOL_STATE_SPARE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @POOL_STATE_L2CACHE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = load i32*, i32** %19, align 8
  %65 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %66 = call i64 @nvlist_lookup_uint64(i32* %64, i32 %65, i64* %14)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %19, align 8
  %70 = load i32, i32* @ZPOOL_CONFIG_POOL_TXG, align 4
  %71 = call i64 @nvlist_lookup_uint64(i32* %69, i32 %70, i64* %16)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68, %63
  %74 = load i32*, i32** %19, align 8
  %75 = call i32 @nvlist_free(i32* %74)
  %76 = load i32, i32* @B_FALSE, align 4
  store i32 %76, i32* %6, align 4
  br label %185

77:                                               ; preds = %68, %59, %55
  %78 = load i32*, i32** %19, align 8
  %79 = call i32 @nvlist_free(i32* %78)
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* @POOL_STATE_SPARE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %77
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* @POOL_STATE_L2CACHE, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %15, align 8
  %90 = call i32 @spa_guid_exists(i64 %88, i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %87
  %93 = load i64, i64* %15, align 8
  %94 = call i64 @spa_spare_exists(i64 %93, i64* null, i32* null)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %15, align 8
  %98 = call i64 @spa_l2cache_exists(i64 %97, i32* null)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @B_FALSE, align 4
  store i32 %101, i32* %6, align 4
  br label %185

102:                                              ; preds = %96, %92, %87, %83, %77
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* @POOL_STATE_SPARE, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* @POOL_STATE_L2CACHE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i64, i64* %16, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i64, i64* %18, align 8
  %115 = load i64, i64* %8, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* @B_TRUE, align 4
  store i32 %118, i32* %6, align 4
  br label %185

119:                                              ; preds = %113, %110, %106, %102
  %120 = load i64, i64* %15, align 8
  %121 = call i64 @spa_spare_exists(i64 %120, i64* %17, i32* null)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %119
  %124 = load i32*, i32** %12, align 8
  %125 = load i64, i64* %15, align 8
  %126 = call i32 @spa_has_spare(i32* %124, i64 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %154

128:                                              ; preds = %123, %119
  %129 = load i64*, i64** %10, align 8
  %130 = icmp ne i64* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i64, i64* %15, align 8
  %133 = load i64*, i64** %10, align 8
  store i64 %132, i64* %133, align 8
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %9, align 4
  switch i32 %135, label %153 [
    i32 131, label %136
    i32 130, label %136
    i32 129, label %138
    i32 128, label %149
  ]

136:                                              ; preds = %134, %134
  %137 = load i32, i32* @B_TRUE, align 4
  store i32 %137, i32* %6, align 4
  br label %185

138:                                              ; preds = %134
  %139 = load i32*, i32** %12, align 8
  %140 = load i64, i64* %15, align 8
  %141 = call i32 @spa_has_spare(i32* %139, i64 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i64, i64* %17, align 8
  %145 = icmp ne i64 %144, 0
  br label %146

146:                                              ; preds = %143, %138
  %147 = phi i1 [ true, %138 ], [ %145, %143 ]
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %6, align 4
  br label %185

149:                                              ; preds = %134
  %150 = load i32*, i32** %12, align 8
  %151 = load i64, i64* %15, align 8
  %152 = call i32 @spa_has_spare(i32* %150, i64 %151)
  store i32 %152, i32* %6, align 4
  br label %185

153:                                              ; preds = %134
  br label %154

154:                                              ; preds = %153, %123
  %155 = load i64, i64* %15, align 8
  %156 = call i64 @spa_l2cache_exists(i64 %155, i32* null)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* @B_TRUE, align 4
  store i32 %159, i32* %6, align 4
  br label %185

160:                                              ; preds = %154
  %161 = load i64, i64* %13, align 8
  %162 = load i64, i64* @POOL_STATE_SPARE, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %160
  %165 = load i64, i64* %13, align 8
  %166 = load i64, i64* @POOL_STATE_L2CACHE, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %164
  %169 = load i64, i64* %14, align 8
  %170 = load i64, i64* %15, align 8
  %171 = call i32* @spa_by_guid(i64 %169, i64 %170)
  store i32* %171, i32** %12, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %180

173:                                              ; preds = %168
  %174 = load i32*, i32** %12, align 8
  %175 = call i64 @spa_mode(i32* %174)
  %176 = load i64, i64* @FREAD, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = load i64, i64* @POOL_STATE_ACTIVE, align 8
  store i64 %179, i64* %13, align 8
  br label %180

180:                                              ; preds = %178, %173, %168, %164, %160
  %181 = load i64, i64* %13, align 8
  %182 = load i64, i64* @POOL_STATE_ACTIVE, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i32
  store i32 %184, i32* %6, align 4
  br label %185

185:                                              ; preds = %180, %158, %149, %146, %136, %117, %100, %73, %51, %36
  %186 = load i32, i32* %6, align 4
  ret i32 %186
}

declare dso_local i32* @vdev_label_read_config(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @spa_guid_exists(i64, i64) #1

declare dso_local i64 @spa_spare_exists(i64, i64*, i32*) #1

declare dso_local i64 @spa_l2cache_exists(i64, i32*) #1

declare dso_local i32 @spa_has_spare(i32*, i64) #1

declare dso_local i32* @spa_by_guid(i64, i64) #1

declare dso_local i64 @spa_mode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
