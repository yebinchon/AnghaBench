; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_deleg.c_dsl_deleg_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_deleg.c_dsl_deleg_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i64, i8* }
%struct.TYPE_16__ = type { i64 }

@FTAG = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_deleg_get(i8* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__, align 8
  %20 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @FTAG, align 4
  %23 = call i32 @dsl_pool_hold(i8* %21, i32 %22, %struct.TYPE_14__** %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %153

28:                                               ; preds = %2
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @FTAG, align 4
  %32 = call i32 @dsl_dir_hold(%struct.TYPE_14__* %29, i8* %30, i32 %31, %struct.TYPE_15__** %7, i32* null)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = load i32, i32* @FTAG, align 4
  %38 = call i32 @dsl_pool_rele(%struct.TYPE_14__* %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %153

40:                                               ; preds = %28
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %8, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %10, align 8
  %47 = load i32**, i32*** %5, align 8
  %48 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %49 = load i32, i32* @KM_SLEEP, align 4
  %50 = call i64 @nvlist_alloc(i32** %47, i32 %48, i32 %49)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @VERIFY(i32 %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %6, align 8
  br label %55

55:                                               ; preds = %142, %40
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = icmp ne %struct.TYPE_15__* %56, null
  br i1 %57, label %58, label %146

58:                                               ; preds = %55
  %59 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %60 = zext i32 %59 to i64
  %61 = call i8* @llvm.stacksave()
  store i8* %61, i8** %15, align 8
  %62 = alloca i8, i64 %60, align 16
  store i64 %60, i64* %16, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = call %struct.TYPE_16__* @dsl_dir_phys(%struct.TYPE_15__* %63)
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %58
  %69 = load i32*, i32** %10, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = call %struct.TYPE_16__* @dsl_dir_phys(%struct.TYPE_15__* %70)
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @zap_count(i32* %69, i64 %73, i64* %14)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = load i64, i64* %14, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %68, %58
  store i32 4, i32* %17, align 4
  br label %138

80:                                               ; preds = %76
  %81 = call i32* (...) @fnvlist_alloc()
  store i32* %81, i32** %13, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = call %struct.TYPE_16__* @dsl_dir_phys(%struct.TYPE_15__* %83)
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @zap_cursor_init(i32* %11, i32* %82, i64 %86)
  br label %88

88:                                               ; preds = %126, %80
  %89 = call i64 @zap_cursor_retrieve(i32* %11, %struct.TYPE_13__* %12)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %128

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 8
  %95 = zext i1 %94 to i32
  %96 = call i32 @ASSERT(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 1
  %100 = zext i1 %99 to i32
  %101 = call i32 @ASSERT(i32 %100)
  %102 = call i32* (...) @fnvlist_alloc()
  store i32* %102, i32** %20, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @zap_cursor_init(i32* %18, i32* %103, i64 %105)
  br label %107

107:                                              ; preds = %115, %91
  %108 = call i64 @zap_cursor_retrieve(i32* %18, %struct.TYPE_13__* %19)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32*, i32** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @fnvlist_add_boolean(i32* %111, i8* %113)
  br label %115

115:                                              ; preds = %110
  %116 = call i32 @zap_cursor_advance(i32* %18)
  br label %107

117:                                              ; preds = %107
  %118 = call i32 @zap_cursor_fini(i32* %18)
  %119 = load i32*, i32** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  %122 = load i32*, i32** %20, align 8
  %123 = call i32 @fnvlist_add_nvlist(i32* %119, i8* %121, i32* %122)
  %124 = load i32*, i32** %20, align 8
  %125 = call i32 @fnvlist_free(i32* %124)
  br label %126

126:                                              ; preds = %117
  %127 = call i32 @zap_cursor_advance(i32* %11)
  br label %88

128:                                              ; preds = %88
  %129 = call i32 @zap_cursor_fini(i32* %11)
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %131 = call i32 @dsl_dir_name(%struct.TYPE_15__* %130, i8* %62)
  %132 = load i32**, i32*** %5, align 8
  %133 = load i32*, i32** %132, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = call i32 @fnvlist_add_nvlist(i32* %133, i8* %62, i32* %134)
  %136 = load i32*, i32** %13, align 8
  %137 = call i32 @nvlist_free(i32* %136)
  store i32 0, i32* %17, align 4
  br label %138

138:                                              ; preds = %128, %79
  %139 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i32, i32* %17, align 4
  switch i32 %140, label %155 [
    i32 0, label %141
    i32 4, label %142
  ]

141:                                              ; preds = %138
  br label %142

142:                                              ; preds = %141, %138
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  store %struct.TYPE_15__* %145, %struct.TYPE_15__** %6, align 8
  br label %55

146:                                              ; preds = %55
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %148 = load i32, i32* @FTAG, align 4
  %149 = call i32 @dsl_dir_rele(%struct.TYPE_15__* %147, i32 %148)
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %151 = load i32, i32* @FTAG, align 4
  %152 = call i32 @dsl_pool_rele(%struct.TYPE_14__* %150, i32 %151)
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %146, %35, %26
  %154 = load i32, i32* %3, align 4
  ret i32 %154

155:                                              ; preds = %138
  unreachable
}

declare dso_local i32 @dsl_pool_hold(i8*, i32, %struct.TYPE_14__**) #1

declare dso_local i32 @dsl_dir_hold(%struct.TYPE_14__*, i8*, i32, %struct.TYPE_15__**, i32*) #1

declare dso_local i32 @dsl_pool_rele(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_16__* @dsl_dir_phys(%struct.TYPE_15__*) #1

declare dso_local i64 @zap_count(i32*, i64, i64*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @zap_cursor_init(i32*, i32*, i64) #1

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @dsl_dir_name(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @nvlist_free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @dsl_dir_rele(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
