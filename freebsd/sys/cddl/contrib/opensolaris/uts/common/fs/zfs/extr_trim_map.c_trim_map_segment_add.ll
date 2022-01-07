; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_trim_map.c_trim_map_segment_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_trim_map.c_trim_map_segment_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i8*, i64 }

@AVL_BEFORE = common dso_local global i32 0, align 4
@AVL_AFTER = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i64, i64, i64)* @trim_map_segment_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trim_map_segment_add(%struct.TYPE_16__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = call i32 @MUTEX_HELD(i32* %18)
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp slt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @VERIFY(i32 %24)
  %26 = call i8* (...) @gethrtime()
  store i8* %26, i8** %16, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = call %struct.TYPE_15__* @avl_find(i32* %32, %struct.TYPE_15__* %10, i32* %9)
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %13, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %35 = icmp ne %struct.TYPE_15__* %34, null
  br i1 %35, label %36, label %63

36:                                               ; preds = %4
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  call void @trim_map_segment_add(%struct.TYPE_16__* %43, i64 %44, i64 %47, i64 %48)
  br label %49

49:                                               ; preds = %42, %36
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  call void @trim_map_segment_add(%struct.TYPE_16__* %56, i64 %59, i64 %60, i64 %61)
  br label %62

62:                                               ; preds = %55, %49
  br label %191

63:                                               ; preds = %4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @AVL_BEFORE, align 4
  %68 = call %struct.TYPE_15__* @avl_nearest(i32* %65, i32 %66, i32 %67)
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %11, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @AVL_AFTER, align 4
  %73 = call %struct.TYPE_15__* @avl_nearest(i32* %70, i32 %71, i32 %72)
  store %struct.TYPE_15__* %73, %struct.TYPE_15__** %12, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %75 = icmp ne %struct.TYPE_15__* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %63
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp eq i64 %79, %80
  br label %82

82:                                               ; preds = %76, %63
  %83 = phi i1 [ false, %63 ], [ %81, %76 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %14, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %86 = icmp ne %struct.TYPE_15__* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = icmp eq i64 %90, %91
  br label %93

93:                                               ; preds = %87, %82
  %94 = phi i1 [ false, %82 ], [ %92, %87 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %128

98:                                               ; preds = %93
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %128

101:                                              ; preds = %98
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %105 = call i32 @avl_remove(i32* %103, %struct.TYPE_15__* %104)
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %108 = call i32 @TRIM_MAP_REM(%struct.TYPE_16__* %106, %struct.TYPE_15__* %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %111 = call i32 @TRIM_MAP_REM(%struct.TYPE_16__* %109, %struct.TYPE_15__* %110)
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  %120 = load i8*, i8** %16, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %125 = call i32 @TRIM_MAP_ADD(%struct.TYPE_16__* %123, %struct.TYPE_15__* %124)
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %127 = call i32 @kmem_free(%struct.TYPE_15__* %126, i32 32)
  br label %191

128:                                              ; preds = %98, %93
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %128
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %134 = call i32 @TRIM_MAP_REM(%struct.TYPE_16__* %132, %struct.TYPE_15__* %133)
  %135 = load i64, i64* %7, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 3
  store i64 %138, i64* %140, align 8
  %141 = load i8*, i8** %16, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %146 = call i32 @TRIM_MAP_ADD(%struct.TYPE_16__* %144, %struct.TYPE_15__* %145)
  br label %190

147:                                              ; preds = %128
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %147
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %153 = call i32 @TRIM_MAP_REM(%struct.TYPE_16__* %151, %struct.TYPE_15__* %152)
  %154 = load i64, i64* %6, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 3
  store i64 %157, i64* %159, align 8
  %160 = load i8*, i8** %16, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %165 = call i32 @TRIM_MAP_ADD(%struct.TYPE_16__* %163, %struct.TYPE_15__* %164)
  br label %189

166:                                              ; preds = %147
  %167 = load i32, i32* @KM_SLEEP, align 4
  %168 = call %struct.TYPE_15__* @kmem_alloc(i32 32, i32 %167)
  store %struct.TYPE_15__* %168, %struct.TYPE_15__** %13, align 8
  %169 = load i64, i64* %6, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  %172 = load i64, i64* %7, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  %175 = load i64, i64* %8, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 3
  store i64 %175, i64* %177, align 8
  %178 = load i8*, i8** %16, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 2
  store i8* %178, i8** %180, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @avl_insert(i32* %182, %struct.TYPE_15__* %183, i32 %184)
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %188 = call i32 @TRIM_MAP_ADD(%struct.TYPE_16__* %186, %struct.TYPE_15__* %187)
  br label %189

189:                                              ; preds = %166, %150
  br label %190

190:                                              ; preds = %189, %131
  br label %191

191:                                              ; preds = %62, %190, %101
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i8* @gethrtime(...) #1

declare dso_local %struct.TYPE_15__* @avl_find(i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local %struct.TYPE_15__* @avl_nearest(i32*, i32, i32) #1

declare dso_local i32 @avl_remove(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @TRIM_MAP_REM(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @TRIM_MAP_ADD(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_15__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @avl_insert(i32*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
