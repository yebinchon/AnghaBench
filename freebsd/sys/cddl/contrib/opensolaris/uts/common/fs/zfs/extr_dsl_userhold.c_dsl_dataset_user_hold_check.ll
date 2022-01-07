; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_userhold.c_dsl_dataset_user_hold_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_userhold.c_dsl_dataset_user_hold_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@SPA_VERSION_USERREFS = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dsl_dataset_user_hold_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_dataset_user_hold_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.TYPE_5__* @dmu_tx_pool(i32* %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %7, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @spa_version(i32 %19)
  %21 = load i64, i64* @SPA_VERSION_USERREFS, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOTSUP, align 4
  %25 = call i32 @SET_ERROR(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %109

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @dmu_tx_is_syncing(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %109

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @nvlist_next_nvpair(i32 %34, i32* null)
  store i32* %35, i32** %8, align 8
  br label %36

36:                                               ; preds = %102, %31
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %108

39:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i8* @nvpair_name(i32* %40)
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = call i32* @strchr(i8* %42, i8 signext 64)
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @SET_ERROR(i32 %46)
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @nvpair_value_string(i32* %52, i8** %11)
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* @FTAG, align 4
  %61 = call i32 @dsl_dataset_hold(%struct.TYPE_5__* %58, i8* %59, i32 %60, i32** %9)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i32*, i32** %9, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @dsl_dataset_user_hold_check_one(i32* %66, i8* %67, i32 %72, i32* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* @FTAG, align 4
  %77 = call i32 @dsl_dataset_rele(i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %65, %62
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @fnvlist_add_string(i32 %84, i8* %85, i8* %86)
  br label %101

88:                                               ; preds = %78
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @fnvlist_add_int32(i32 %91, i8* %92, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @ENOENT, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %3, align 4
  br label %109

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %81
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = call i32* @nvlist_next_nvpair(i32 %105, i32* %106)
  store i32* %107, i32** %8, align 8
  br label %36

108:                                              ; preds = %36
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %98, %30, %23
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_5__* @dmu_tx_pool(i32*) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(i32*) #1

declare dso_local i32* @nvlist_next_nvpair(i32, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @nvpair_value_string(i32*, i8**) #1

declare dso_local i32 @dsl_dataset_hold(%struct.TYPE_5__*, i8*, i32, i32**) #1

declare dso_local i32 @dsl_dataset_user_hold_check_one(i32*, i8*, i32, i32*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @fnvlist_add_string(i32, i8*, i8*) #1

declare dso_local i32 @fnvlist_add_int32(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
