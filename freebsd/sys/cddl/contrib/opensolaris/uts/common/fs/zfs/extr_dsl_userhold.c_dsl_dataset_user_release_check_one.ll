; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_userhold.c_dsl_dataset_user_release_check_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_userhold.c_dsl_dataset_user_release_check_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_15__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s#%s\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i8*)* @dsl_dataset_user_release_check_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_dataset_user_release_check_one(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = call i32 @SET_ERROR(i32 %24)
  store i32 %25, i32* %5, align 4
  br label %145

26:                                               ; preds = %4
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @nvlist_empty(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %145

31:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %12, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = call %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_14__* %39)
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  %43 = call i32* (...) @fnvlist_alloc()
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32* @nvlist_next_nvpair(i32* %44, i32* null)
  store i32* %45, i32** %14, align 8
  br label %46

46:                                               ; preds = %97, %31
  %47 = load i32*, i32** %14, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %101

49:                                               ; preds = %46
  %50 = load i32*, i32** %14, align 8
  %51 = call i8* @nvpair_name(i32* %50)
  store i8* %51, i8** %17, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32*, i32** %12, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = call i32 @zap_lookup(i32* %55, i64 %56, i8* %57, i32 8, i32 1, i64* %15)
  store i32 %58, i32* %16, align 4
  br label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @ENOENT, align 4
  %61 = call i32 @SET_ERROR(i32 %60)
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @ENOENT, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = call i8* @kmem_asprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %72, i8* %73)
  store i8* %74, i8** %18, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = load i32, i32* @ENOENT, align 4
  %80 = call i32 @fnvlist_add_int32(i32* %77, i8* %78, i32 %79)
  %81 = load i8*, i8** %18, align 8
  %82 = call i32 @strfree(i8* %81)
  br label %83

83:                                               ; preds = %71, %66
  br label %97

84:                                               ; preds = %62
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @fnvlist_free(i32* %88)
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %5, align 4
  br label %145

91:                                               ; preds = %84
  %92 = load i32*, i32** %11, align 8
  %93 = load i8*, i8** %17, align 8
  %94 = call i32 @fnvlist_add_boolean(i32* %92, i8* %93)
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %91, %83
  %98 = load i32*, i32** %8, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = call i32* @nvlist_next_nvpair(i32* %98, i32* %99)
  store i32* %100, i32** %14, align 8
  br label %46

101:                                              ; preds = %46
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %103 = call i64 @DS_IS_DEFER_DESTROY(%struct.TYPE_14__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %132

105:                                              ; preds = %101
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %107 = call %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_14__* %106)
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %132

111:                                              ; preds = %105
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %111
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %119 = call i64 @dsl_dataset_long_held(%struct.TYPE_14__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32*, i32** %11, align 8
  %123 = call i32 @fnvlist_free(i32* %122)
  %124 = load i32, i32* @EBUSY, align 4
  %125 = call i32 @SET_ERROR(i32 %124)
  store i32 %125, i32* %5, align 4
  br label %145

126:                                              ; preds = %117
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 @fnvlist_add_boolean(i32* %129, i8* %130)
  br label %132

132:                                              ; preds = %126, %111, %105, %101
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = call i32 @fnvlist_add_nvlist(i32 %138, i8* %139, i32* %140)
  br label %142

142:                                              ; preds = %135, %132
  %143 = load i32*, i32** %11, align 8
  %144 = call i32 @fnvlist_free(i32* %143)
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %142, %121, %87, %30, %23
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @nvlist_empty(i32*) #1

declare dso_local %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_14__*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @zap_lookup(i32*, i64, i8*, i32, i32, i64*) #1

declare dso_local i8* @kmem_asprintf(i8*, i8*, i8*) #1

declare dso_local i32 @fnvlist_add_int32(i32*, i8*, i32) #1

declare dso_local i32 @strfree(i8*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i64 @DS_IS_DEFER_DESTROY(%struct.TYPE_14__*) #1

declare dso_local i64 @dsl_dataset_long_held(%struct.TYPE_14__*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
