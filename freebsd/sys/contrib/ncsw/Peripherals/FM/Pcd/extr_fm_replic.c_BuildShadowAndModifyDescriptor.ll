; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_replic.c_BuildShadowAndModifyDescriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_replic.c_BuildShadowAndModifyDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_22__*, i32, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }

@E_BUSY = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Modify source Descriptor in BuildShadowAndModifyDescriptor\00", align 1
@FM_PCD_CC_AD_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Modify Descriptor in BuildShadowAndModifyDescriptor\00", align 1
@E_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32)* @BuildShadowAndModifyDescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @BuildShadowAndModifyDescriptor(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, %struct.TYPE_21__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_21__, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %16 = call i32 @ASSERT_COND(%struct.TYPE_22__* %15)
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %20 = call i32 @ASSERT_COND(%struct.TYPE_22__* %19)
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %12, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = call i32 @ASSERT_COND(%struct.TYPE_22__* %26)
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = call i32 @TRY_LOCK(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* @E_BUSY, align 4
  %37 = call i64 @ERROR_CODE(i32 %36)
  store i64 %37, i64* %6, align 8
  br label %113

38:                                               ; preds = %5
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %38
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %45 = call i32 @BuildSourceTd(%struct.TYPE_22__* %44)
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %48, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %51 = call i32 @LinkSourceToMember(%struct.TYPE_22__* %46, %struct.TYPE_22__* %49, %struct.TYPE_21__* %50)
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %54, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = call i64 @ModifyDescriptor(%struct.TYPE_22__* %52, %struct.TYPE_22__* %55, %struct.TYPE_22__* %58)
  store i64 %59, i64* %14, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @RELEASE_LOCK(i32 %62)
  %64 = load i64, i64* %14, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %41
  %67 = load i32, i32* @MAJOR, align 4
  %68 = load i64, i64* %14, align 8
  %69 = call i32 @RETURN_ERROR(i32 %67, i64 %68, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %41
  br label %111

71:                                               ; preds = %38
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %73, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %76, align 8
  %78 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %79 = call i32 @IO2IOCpy32(%struct.TYPE_22__* %74, %struct.TYPE_22__* %77, i32 %78)
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @FillReplicAdOfTypeResult(%struct.TYPE_22__* %82, i32 %83)
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  store %struct.TYPE_22__* %87, %struct.TYPE_22__** %88, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %91 = call i32 @LinkMemberToMember(%struct.TYPE_22__* %89, %struct.TYPE_21__* %13, %struct.TYPE_21__* %90)
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %94, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  %99 = call i64 @ModifyDescriptor(%struct.TYPE_22__* %92, %struct.TYPE_22__* %95, %struct.TYPE_22__* %98)
  store i64 %99, i64* %14, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @RELEASE_LOCK(i32 %102)
  %104 = load i64, i64* %14, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %71
  %107 = load i32, i32* @MAJOR, align 4
  %108 = load i64, i64* %14, align 8
  %109 = call i32 @RETURN_ERROR(i32 %107, i64 %108, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %106, %71
  br label %111

111:                                              ; preds = %110, %70
  %112 = load i64, i64* @E_OK, align 8
  store i64 %112, i64* %6, align 8
  br label %113

113:                                              ; preds = %111, %35
  %114 = load i64, i64* %6, align 8
  ret i64 %114
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_22__*) #1

declare dso_local i32 @TRY_LOCK(i32, i32*) #1

declare dso_local i64 @ERROR_CODE(i32) #1

declare dso_local i32 @BuildSourceTd(%struct.TYPE_22__*) #1

declare dso_local i32 @LinkSourceToMember(%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i64 @ModifyDescriptor(%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @RELEASE_LOCK(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @IO2IOCpy32(%struct.TYPE_22__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @FillReplicAdOfTypeResult(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @LinkMemberToMember(%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
