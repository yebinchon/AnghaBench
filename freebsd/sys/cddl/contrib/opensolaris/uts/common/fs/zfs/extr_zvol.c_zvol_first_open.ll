; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_first_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_first_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }

@DMU_OST_ZVOL = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@zvol_tag = common dso_local global i32 0, align 4
@ZVOL_ZAP_OBJ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@ZVOL_OBJ = common dso_local global i32 0, align 4
@zvol_get_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@ZVOL_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zvol_first_open(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DMU_OST_ZVOL, align 4
  %13 = load i32, i32* @B_TRUE, align 4
  %14 = load i32, i32* @zvol_tag, align 4
  %15 = call i32 @dmu_objset_own(i32 %11, i32 %12, i32 %13, i32 %14, i32** %5)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %113

20:                                               ; preds = %1
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  store i32* %21, i32** %23, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @ZVOL_ZAP_OBJ, align 4
  %26 = call i32 @zap_lookup(i32* %24, i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 8, i32 1, i64* %6)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @zvol_tag, align 4
  %36 = call i32 @dmu_objset_disown(i32* %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %113

38:                                               ; preds = %20
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @ZVOL_OBJ, align 4
  %41 = call i32 @dmu_object_info(i32* %39, i32 %40, %struct.TYPE_7__* %4)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @zvol_tag, align 4
  %51 = call i32 @dmu_objset_disown(i32* %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %113

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @ZVOL_OBJ, align 4
  %60 = load i32, i32* @zvol_tag, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = call i32 @dnode_hold(i32* %58, i32 %59, i32 %60, i32* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %53
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @zvol_tag, align 4
  %69 = call i32 @dmu_objset_disown(i32* %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %113

71:                                               ; preds = %53
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @zvol_size_changed(%struct.TYPE_6__* %72, i64 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* @zvol_get_data, align 4
  %77 = call i32 @zil_open(i32* %75, i32 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @dsl_prop_get_integer(i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64* %8, i32* null)
  %84 = icmp eq i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @VERIFY(i32 %85)
  %87 = load i64, i64* %8, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %71
  %90 = load i32*, i32** %5, align 8
  %91 = call i64 @dmu_objset_is_snapshot(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @dmu_objset_spa(i32* %94)
  %96 = call i32 @spa_writeable(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93, %89, %71
  %99 = load i32, i32* @ZVOL_RDONLY, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %111

104:                                              ; preds = %93
  %105 = load i32, i32* @ZVOL_RDONLY, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %104, %98
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %66, %44, %29, %18
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @dmu_objset_own(i32, i32, i32, i32, i32**) #1

declare dso_local i32 @zap_lookup(i32*, i32, i8*, i32, i32, i64*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_objset_disown(i32*, i32) #1

declare dso_local i32 @dmu_object_info(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @dnode_hold(i32*, i32, i32, i32*) #1

declare dso_local i32 @zvol_size_changed(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @zil_open(i32*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @dsl_prop_get_integer(i32, i8*, i64*, i32*) #1

declare dso_local i64 @dmu_objset_is_snapshot(i32*) #1

declare dso_local i32 @spa_writeable(i32) #1

declare dso_local i32 @dmu_objset_spa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
