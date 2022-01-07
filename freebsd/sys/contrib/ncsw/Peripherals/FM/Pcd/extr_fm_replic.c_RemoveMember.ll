; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_replic.c_RemoveMember.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_replic.c_RemoveMember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_SELECTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"member position in remove member\00", align 1
@NO_MSG = common dso_local global i8* null, align 8
@E_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i32)* @RemoveMember to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @RemoveMember(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %8, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %5, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = call i32 @ASSERT_COND(%struct.TYPE_17__* %14)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = call i32 @UNUSED(%struct.TYPE_17__* %16)
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.TYPE_17__* @GetMemberByIndex(%struct.TYPE_18__* %18, i32 %19)
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %6, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = call i32 @ASSERT_COND(%struct.TYPE_17__* %21)
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @GetMemberPosition(%struct.TYPE_18__* %23, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %71 [
    i32 130, label %28
    i32 128, label %40
    i32 129, label %59
  ]

28:                                               ; preds = %2
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  %32 = call %struct.TYPE_17__* @GetMemberByIndex(%struct.TYPE_18__* %29, i32 %31)
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %8, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %34 = call i32 @ASSERT_COND(%struct.TYPE_17__* %33)
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i64 @BuildShadowAndModifyDescriptor(%struct.TYPE_18__* %35, %struct.TYPE_17__* %36, %struct.TYPE_17__* null, i32 %37, i32 %38)
  store i64 %39, i64* %9, align 8
  br label %75

40:                                               ; preds = %2
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %42, 1
  %44 = call %struct.TYPE_17__* @GetMemberByIndex(%struct.TYPE_18__* %41, i32 %43)
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %7, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %46 = call i32 @ASSERT_COND(%struct.TYPE_17__* %45)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  %50 = call %struct.TYPE_17__* @GetMemberByIndex(%struct.TYPE_18__* %47, i32 %49)
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %8, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = call i32 @ASSERT_COND(%struct.TYPE_17__* %51)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i64 @BuildShadowAndModifyDescriptor(%struct.TYPE_18__* %53, %struct.TYPE_17__* %54, %struct.TYPE_17__* %55, i32 %56, i32 %57)
  store i64 %58, i64* %9, align 8
  br label %75

59:                                               ; preds = %2
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call %struct.TYPE_17__* @GetMemberByIndex(%struct.TYPE_18__* %60, i32 %62)
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %7, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %65 = call i32 @ASSERT_COND(%struct.TYPE_17__* %64)
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %68 = load i32, i32* @FALSE, align 4
  %69 = load i32, i32* @TRUE, align 4
  %70 = call i64 @BuildShadowAndModifyDescriptor(%struct.TYPE_18__* %66, %struct.TYPE_17__* null, %struct.TYPE_17__* %67, i32 %68, i32 %69)
  store i64 %70, i64* %9, align 8
  br label %75

71:                                               ; preds = %2
  %72 = load i32, i32* @MAJOR, align 4
  %73 = load i64, i64* @E_INVALID_SELECTION, align 8
  %74 = call i32 @RETURN_ERROR(i32 %72, i64 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %59, %40, %28
  %76 = load i64, i64* %9, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32, i32* @MAJOR, align 4
  %80 = load i64, i64* %9, align 8
  %81 = load i8*, i8** @NO_MSG, align 8
  %82 = call i32 @RETURN_ERROR(i32 %79, i64 %80, i8* %81)
  br label %83

83:                                               ; preds = %78, %75
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @FALSE, align 4
  %93 = call i32 @FmPcdManipUpdateOwner(i32* %91, i32 %92)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %88, %83
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %99 = call i32 @RemoveMemberFromList(%struct.TYPE_18__* %97, %struct.TYPE_17__* %98)
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %102 = call i32 @FreeMember(%struct.TYPE_18__* %100, %struct.TYPE_17__* %101)
  %103 = load i64, i64* @E_OK, align 8
  ret i64 %103
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_17__*) #1

declare dso_local i32 @UNUSED(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @GetMemberByIndex(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @GetMemberPosition(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @BuildShadowAndModifyDescriptor(%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @FmPcdManipUpdateOwner(i32*, i32) #1

declare dso_local i32 @RemoveMemberFromList(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @FreeMember(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
