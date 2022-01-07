; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_zfs_callback_dataset.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_zfs_callback_dataset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"ZFS: can't find dataset %ju\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ZFS: can't find dirobj %ju\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"ZFS: can't find child zap %ju\0A\00", align 1
@zap_scratch = common dso_local global i64 0, align 8
@ZBT_MICRO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_callback_dataset(%struct.TYPE_13__* %0, i64 %1, i32 (i8*, i64)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (i8*, i64)*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__, align 4
  %12 = alloca %struct.TYPE_16__, align 4
  %13 = alloca %struct.TYPE_16__, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 (i8*, i64)* %2, i32 (i8*, i64)** %7, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @objset_get_dnode(%struct.TYPE_13__* %17, i32* %19, i64 %20, %struct.TYPE_16__* %13)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %16, align 4
  store i32 %28, i32* %4, align 4
  br label %90

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %31 = bitcast i32* %30 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %14, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @objset_get_dnode(%struct.TYPE_13__* %35, i32* %37, i64 %38, %struct.TYPE_16__* %12)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %29
  %43 = load i64, i64* %8, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %4, align 4
  br label %90

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %49 = bitcast i32* %48 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %15, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %9, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @objset_get_dnode(%struct.TYPE_13__* %53, i32* %55, i64 %56, %struct.TYPE_16__* %11)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load i64, i64* %8, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %4, align 4
  br label %90

65:                                               ; preds = %47
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = load i64, i64* @zap_scratch, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 512
  %71 = call i32 @dnode_read(%struct.TYPE_13__* %66, %struct.TYPE_16__* %11, i32 0, i64 %67, i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %4, align 4
  br label %90

76:                                               ; preds = %65
  %77 = load i64, i64* @zap_scratch, align 8
  %78 = inttoptr i64 %77 to i64*
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* @ZBT_MICRO, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32 (i8*, i64)*, i32 (i8*, i64)** %7, align 8
  %85 = call i32 @mzap_list(%struct.TYPE_16__* %11, i32 (i8*, i64)* %84)
  store i32 %85, i32* %4, align 4
  br label %90

86:                                               ; preds = %76
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = load i32 (i8*, i64)*, i32 (i8*, i64)** %7, align 8
  %89 = call i32 @fzap_list(%struct.TYPE_13__* %87, %struct.TYPE_16__* %11, i32 (i8*, i64)* %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %83, %74, %60, %42, %24
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @objset_get_dnode(%struct.TYPE_13__*, i32*, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @dnode_read(%struct.TYPE_13__*, %struct.TYPE_16__*, i32, i64, i32) #1

declare dso_local i32 @mzap_list(%struct.TYPE_16__*, i32 (i8*, i64)*) #1

declare dso_local i32 @fzap_list(%struct.TYPE_13__*, %struct.TYPE_16__*, i32 (i8*, i64)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
