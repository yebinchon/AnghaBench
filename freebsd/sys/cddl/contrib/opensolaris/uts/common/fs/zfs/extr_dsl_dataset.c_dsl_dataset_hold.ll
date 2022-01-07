; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i32 }
%struct.TYPE_8__ = type { i64 }

@FTAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"looking for snapshot '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_hold(i32* %0, i8* %1, i8* %2, %struct.TYPE_7__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_7__** %3, %struct.TYPE_7__*** %9, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @FTAG, align 4
  %19 = call i32 @dsl_dir_hold(i32* %16, i8* %17, i32 %18, i32** %10, i8** %11)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %115

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @dsl_pool_config_held(i32* %25)
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32*, i32** %10, align 8
  %29 = call %struct.TYPE_8__* @dsl_dir_phys(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @dsl_dataset_hold_obj(i32* %35, i64 %36, i8* %37, %struct.TYPE_7__** %14)
  store i32 %38, i32* %13, align 4
  br label %42

39:                                               ; preds = %24
  %40 = load i32, i32* @ENOENT, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %104

45:                                               ; preds = %42
  %46 = load i8*, i8** %11, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %104

48:                                               ; preds = %45
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %11, align 8
  %51 = load i8, i8* %49, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 64
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @dsl_dataset_rele(%struct.TYPE_7__* %55, i8* %56)
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* @FTAG, align 4
  %60 = call i32 @dsl_dir_rele(i32* %58, i32 %59)
  %61 = load i32, i32* @ENOENT, align 4
  %62 = call i32 @SET_ERROR(i32 %61)
  store i32 %62, i32* %5, align 4
  br label %115

63:                                               ; preds = %48
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @dsl_dataset_snap_lookup(%struct.TYPE_7__* %66, i8* %67, i64* %12)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load i32*, i32** %6, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @dsl_dataset_hold_obj(i32* %72, i64 %73, i8* %74, %struct.TYPE_7__** %15)
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %71, %63
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @dsl_dataset_rele(%struct.TYPE_7__* %77, i8* %78)
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %76
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = call i32 @mutex_enter(i32* %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @strlcpy(i64* %95, i8* %96, i32 8)
  br label %98

98:                                               ; preds = %92, %82
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = call i32 @mutex_exit(i32* %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %102, %struct.TYPE_7__** %14, align 8
  br label %103

103:                                              ; preds = %98, %76
  br label %104

104:                                              ; preds = %103, %45, %42
  %105 = load i32, i32* %13, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %109 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** %109, align 8
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* @FTAG, align 4
  %113 = call i32 @dsl_dir_rele(i32* %111, i32 %112)
  %114 = load i32, i32* %13, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %110, %54, %22
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @dsl_dir_hold(i32*, i8*, i32, i32**, i8**) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(i32*) #1

declare dso_local %struct.TYPE_8__* @dsl_dir_phys(i32*) #1

declare dso_local i32 @dsl_dataset_hold_obj(i32*, i64, i8*, %struct.TYPE_7__**) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @dsl_dir_rele(i32*, i32) #1

declare dso_local i32 @dprintf(i8*, i8*) #1

declare dso_local i32 @dsl_dataset_snap_lookup(%struct.TYPE_7__*, i8*, i64*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @strlcpy(i64*, i8*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
