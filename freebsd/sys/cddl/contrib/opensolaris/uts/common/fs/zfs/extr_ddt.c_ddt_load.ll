; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_ddt.c_ddt_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_ddt.c_ddt_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__**, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_DDT_STATS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_FUNCTIONS = common dso_local global i32 0, align 4
@DDT_TYPES = common dso_local global i32 0, align 4
@DDT_CLASSES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddt_load(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = call i32 @ddt_create(%struct.TYPE_6__* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %15 = load i32, i32* @DMU_POOL_DDT_STATS, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = call i32 @zap_lookup(i32 %13, i32 %14, i32 %15, i32 4, i32 1, i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ENOENT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 0, %25 ], [ %27, %26 ]
  store i32 %29, i32* %2, align 4
  br label %84

30:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %80, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @ZIO_CHECKSUM_FUNCTIONS, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %83

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %38, i64 %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %70, %35
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @DDT_TYPES, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @DDT_CLASSES, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ddt_object_load(%struct.TYPE_7__* %53, i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @ENOENT, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %84

65:                                               ; preds = %59, %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %48

69:                                               ; preds = %48
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %43

73:                                               ; preds = %43
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = call i32 @bcopy(i32 %76, i32* %78, i32 4)
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %5, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %31

83:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %63, %28
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @ddt_create(%struct.TYPE_6__*) #1

declare dso_local i32 @zap_lookup(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ddt_object_load(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
