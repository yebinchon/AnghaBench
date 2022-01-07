; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dsl_props_set_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dsl_props_set_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@ZAP_MAXNAMELEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@DATA_TYPE_STRING = common dso_local global i64 0, align 8
@SPA_VERSION_STMF_PROP = common dso_local global i64 0, align 8
@ZAP_OLDMAXVALUELEN = common dso_local global i64 0, align 8
@ZAP_MAXVALUELEN = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@SPA_VERSION_SNAP_PROPS = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dsl_props_set_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_props_set_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @dmu_tx_pool(i32* %15)
  store i32* %16, i32** %7, align 8
  store i32* null, i32** %10, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FTAG, align 4
  %22 = call i32 @dsl_dataset_hold(i32* %17, i32 %20, i32 %21, %struct.TYPE_10__** %8)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %3, align 4
  br label %101

27:                                               ; preds = %2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @spa_version(i32 %34)
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %81, %27
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = call i32* @nvlist_next_nvpair(i32 %39, i32* %40)
  store i32* %41, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %82

43:                                               ; preds = %36
  %44 = load i32*, i32** %10, align 8
  %45 = call i8* @nvpair_name(i32* %44)
  %46 = call i64 @strlen(i8* %45)
  %47 = load i64, i64* @ZAP_MAXNAMELEN, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = load i32, i32* @FTAG, align 4
  %52 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %50, i32 %51)
  %53 = load i32, i32* @ENAMETOOLONG, align 4
  %54 = call i32 @SET_ERROR(i32 %53)
  store i32 %54, i32* %3, align 4
  br label %101

55:                                               ; preds = %43
  %56 = load i32*, i32** %10, align 8
  %57 = call i64 @nvpair_type(i32* %56)
  %58 = load i64, i64* @DATA_TYPE_STRING, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %55
  %61 = load i32*, i32** %10, align 8
  %62 = call i8* @fnvpair_value_string(i32* %61)
  store i8* %62, i8** %12, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @SPA_VERSION_STMF_PROP, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i64, i64* @ZAP_OLDMAXVALUELEN, align 8
  br label %72

70:                                               ; preds = %60
  %71 = load i64, i64* @ZAP_MAXVALUELEN, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i64 [ %69, %68 ], [ %71, %70 ]
  %74 = icmp sge i64 %64, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = load i32, i32* @FTAG, align 4
  %78 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %76, i32 %77)
  %79 = load i32, i32* @E2BIG, align 4
  store i32 %79, i32* %3, align 4
  br label %101

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %55
  br label %36

82:                                               ; preds = %36
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @SPA_VERSION_SNAP_PROPS, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = load i32, i32* @FTAG, align 4
  %94 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %92, i32 %93)
  %95 = load i32, i32* @ENOTSUP, align 4
  %96 = call i32 @SET_ERROR(i32 %95)
  store i32 %96, i32* %3, align 4
  br label %101

97:                                               ; preds = %87, %82
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %99 = load i32, i32* @FTAG, align 4
  %100 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %98, i32 %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %91, %75, %49, %25
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i32, i32, %struct.TYPE_10__**) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i32* @nvlist_next_nvpair(i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local i8* @fnvpair_value_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
