; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_geom_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_geom_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@ZVOL_OBJ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"GEOM::candelete\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"blocksavail\00", align 1
@DEV_BSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"blocksused\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"poolblocksavail\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"poolblocksused\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @zvol_geom_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zvol_geom_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %3, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %134 [
    i32 131, label %23
    i32 129, label %35
    i32 128, label %35
    i32 132, label %35
    i32 130, label %42
  ]

23:                                               ; preds = %1
  %24 = call i32 (...) @THREAD_CAN_SLEEP()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %139

27:                                               ; preds = %23
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ZVOL_OBJ, align 4
  %32 = call i32 @zil_commit(i32 %30, i32 %31)
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = call i32 @g_io_deliver(%struct.bio* %33, i32 0)
  br label %138

35:                                               ; preds = %1, %1, %1
  %36 = call i32 (...) @THREAD_CAN_SLEEP()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %139

39:                                               ; preds = %35
  %40 = load %struct.bio*, %struct.bio** %2, align 8
  %41 = call i32 @zvol_strategy(%struct.bio* %40)
  br label %138

42:                                               ; preds = %1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @dmu_objset_spa(i32 %45)
  store i32* %46, i32** %5, align 8
  %47 = load %struct.bio*, %struct.bio** %2, align 8
  %48 = call i32 @g_handleattr_int(%struct.bio* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 1)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %161

51:                                               ; preds = %42
  %52 = load %struct.bio*, %struct.bio** %2, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcmp(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dmu_objset_space(i32 %60, i32* %6, i32* %7, i32* %8, i32* %9)
  %62 = load %struct.bio*, %struct.bio** %2, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @DEV_BSIZE, align 4
  %65 = sdiv i32 %63, %64
  %66 = call i32 @g_handleattr_off_t(%struct.bio* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %161

69:                                               ; preds = %57
  br label %133

70:                                               ; preds = %51
  %71 = load %struct.bio*, %struct.bio** %2, align 8
  %72 = getelementptr inbounds %struct.bio, %struct.bio* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @strcmp(i32 %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dmu_objset_space(i32 %79, i32* %6, i32* %7, i32* %8, i32* %9)
  %81 = load %struct.bio*, %struct.bio** %2, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @DEV_BSIZE, align 4
  %84 = sdiv i32 %82, %83
  %85 = call i32 @g_handleattr_off_t(%struct.bio* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %161

88:                                               ; preds = %76
  br label %132

89:                                               ; preds = %70
  %90 = load %struct.bio*, %struct.bio** %2, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @strcmp(i32 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @spa_normal_class(i32* %96)
  %98 = call i32 @metaslab_class_get_space(i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @spa_normal_class(i32* %99)
  %101 = call i32 @metaslab_class_get_alloc(i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load %struct.bio*, %struct.bio** %2, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @DEV_BSIZE, align 4
  %107 = sdiv i32 %105, %106
  %108 = call i32 @g_handleattr_off_t(%struct.bio* %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %95
  br label %161

111:                                              ; preds = %95
  br label %131

112:                                              ; preds = %89
  %113 = load %struct.bio*, %struct.bio** %2, align 8
  %114 = getelementptr inbounds %struct.bio, %struct.bio* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @strcmp(i32 %115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @spa_normal_class(i32* %119)
  %121 = call i32 @metaslab_class_get_alloc(i32 %120)
  store i32 %121, i32* %6, align 4
  %122 = load %struct.bio*, %struct.bio** %2, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @DEV_BSIZE, align 4
  %125 = sdiv i32 %123, %124
  %126 = call i32 @g_handleattr_off_t(%struct.bio* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %161

129:                                              ; preds = %118
  br label %130

130:                                              ; preds = %129, %112
  br label %131

131:                                              ; preds = %130, %111
  br label %132

132:                                              ; preds = %131, %88
  br label %133

133:                                              ; preds = %132, %69
  br label %134

134:                                              ; preds = %1, %133
  %135 = load %struct.bio*, %struct.bio** %2, align 8
  %136 = load i32, i32* @EOPNOTSUPP, align 4
  %137 = call i32 @g_io_deliver(%struct.bio* %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %39, %27
  br label %161

139:                                              ; preds = %38, %26
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = call i32 @mtx_lock(i32* %141)
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = call i32* @bioq_first(i32* %144)
  %146 = icmp eq i32* %145, null
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %4, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load %struct.bio*, %struct.bio** %2, align 8
  %151 = call i32 @bioq_insert_tail(i32* %149, %struct.bio* %150)
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = call i32 @mtx_unlock(i32* %153)
  %155 = load i32, i32* %4, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %139
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = call i32 @wakeup_one(i32* %159)
  br label %161

161:                                              ; preds = %50, %68, %87, %110, %128, %138, %157, %139
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @THREAD_CAN_SLEEP(...) #1

declare dso_local i32 @zil_commit(i32, i32) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @zvol_strategy(%struct.bio*) #1

declare dso_local i32* @dmu_objset_spa(i32) #1

declare dso_local i32 @g_handleattr_int(%struct.bio*, i8*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @dmu_objset_space(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @g_handleattr_off_t(%struct.bio*, i8*, i32) #1

declare dso_local i32 @metaslab_class_get_space(i32) #1

declare dso_local i32 @spa_normal_class(i32*) #1

declare dso_local i32 @metaslab_class_get_alloc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32* @bioq_first(i32*) #1

declare dso_local i32 @bioq_insert_tail(i32*, %struct.bio*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup_one(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
