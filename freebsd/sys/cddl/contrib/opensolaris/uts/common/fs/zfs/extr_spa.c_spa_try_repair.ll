; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_try_repair.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_try_repair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i8* }
%struct.TYPE_10__ = type { i64 }

@ZPOOL_CONFIG_SPLIT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPLIT_LIST = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@B_FALSE = common dso_local global i8* null, align 8
@VDEV_AUX_SPLIT_POOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*)* @spa_try_repair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_try_repair(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__**, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @ZPOOL_CONFIG_SPLIT, align 4
  %14 = call i64 @nvlist_lookup_nvlist(i32* %12, i32 %13, i32** %9)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %156

17:                                               ; preds = %2
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* @ZPOOL_CONFIG_SPLIT_LIST, align 4
  %20 = call i64 @nvlist_lookup_uint64_array(i32* %18, i32 %19, i64** %6, i32* %8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %156

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @KM_SLEEP, align 4
  %29 = call %struct.TYPE_11__** @kmem_zalloc(i32 %27, i32 %28)
  store %struct.TYPE_11__** %29, %struct.TYPE_11__*** %10, align 8
  %30 = load i8*, i8** @B_TRUE, align 8
  store i8* %30, i8** %11, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %73, %23
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %76

35:                                               ; preds = %31
  %36 = load i64*, i64** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %73

43:                                               ; preds = %35
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** @B_FALSE, align 8
  %51 = call %struct.TYPE_11__* @spa_lookup_by_guid(%struct.TYPE_12__* %44, i64 %49, i8* %50)
  %52 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %52, i64 %54
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %55, align 8
  %56 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %56, i64 %58
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = icmp eq %struct.TYPE_11__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %43
  %63 = load i8*, i8** @B_FALSE, align 8
  store i8* %63, i8** %11, align 8
  br label %72

64:                                               ; preds = %43
  %65 = load i8*, i8** @B_FALSE, align 8
  %66 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %66, i64 %68
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  store i8* %65, i8** %71, align 8
  br label %72

72:                                               ; preds = %64, %62
  br label %73

73:                                               ; preds = %72, %42
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %31

76:                                               ; preds = %31
  %77 = load i8*, i8** %11, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %114

79:                                               ; preds = %76
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @vdev_reopen(i32 %82)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %110, %79
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %84
  %89 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %89, i64 %91
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = icmp ne %struct.TYPE_11__* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %96, i64 %98
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @VDEV_AUX_SPLIT_POOL, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %113

107:                                              ; preds = %95, %88
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %84

113:                                              ; preds = %106, %84
  br label %114

114:                                              ; preds = %113, %76
  %115 = load i8*, i8** %11, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %149

121:                                              ; preds = %117, %114
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %141, %121
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %144

126:                                              ; preds = %122
  %127 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %127, i64 %129
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = icmp ne %struct.TYPE_11__* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %134, i64 %136
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = call i32 @vdev_split(%struct.TYPE_11__* %138)
  br label %140

140:                                              ; preds = %133, %126
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %122

144:                                              ; preds = %122
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @vdev_reopen(i32 %147)
  br label %149

149:                                              ; preds = %144, %117
  %150 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = mul i64 %152, 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 @kmem_free(%struct.TYPE_11__** %150, i32 %154)
  br label %156

156:                                              ; preds = %149, %22, %16
  ret void
}

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_uint64_array(i32*, i32, i64**, i32*) #1

declare dso_local %struct.TYPE_11__** @kmem_zalloc(i32, i32) #1

declare dso_local %struct.TYPE_11__* @spa_lookup_by_guid(%struct.TYPE_12__*, i64, i8*) #1

declare dso_local i32 @vdev_reopen(i32) #1

declare dso_local i32 @vdev_split(%struct.TYPE_11__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_11__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
