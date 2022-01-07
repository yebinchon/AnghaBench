; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_dir_list_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_dir_list_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_dir_list_next(%struct.TYPE_13__* %0, i32 %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %12, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %26 = call %struct.TYPE_15__* @dsl_dir_phys(%struct.TYPE_14__* %25)
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @ENOENT, align 4
  %32 = call i32 @SET_ERROR(i32 %31)
  store i32 %32, i32* %6, align 4
  br label %79

33:                                               ; preds = %5
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %40 = call %struct.TYPE_15__* @dsl_dir_phys(%struct.TYPE_14__* %39)
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @zap_cursor_init_serialized(i32* %13, i32 %38, i32 %42, i32 %44)
  %46 = call i64 @zap_cursor_retrieve(i32* %13, %struct.TYPE_12__* %14)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = call i32 @zap_cursor_fini(i32* %13)
  %50 = load i32, i32* @ENOENT, align 4
  %51 = call i32 @SET_ERROR(i32 %50)
  store i32 %51, i32* %6, align 4
  br label %79

52:                                               ; preds = %33
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strlen(i32 %54)
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %8, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = call i32 @zap_cursor_fini(i32* %13)
  %61 = load i32, i32* @ENAMETOOLONG, align 4
  %62 = call i32 @SET_ERROR(i32 %61)
  store i32 %62, i32* %6, align 4
  br label %79

63:                                               ; preds = %52
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strcpy(i8* %64, i32 %66)
  %68 = load i32*, i32** %10, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %63
  %75 = call i32 @zap_cursor_advance(i32* %13)
  %76 = call i32 @zap_cursor_serialize(i32* %13)
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  %78 = call i32 @zap_cursor_fini(i32* %13)
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %74, %59, %48, %30
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_15__* @dsl_dir_phys(%struct.TYPE_14__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zap_cursor_init_serialized(i32*, i32, i32, i32) #1

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_serialize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
