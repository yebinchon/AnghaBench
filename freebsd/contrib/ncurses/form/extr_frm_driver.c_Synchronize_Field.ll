; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_Synchronize_Field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_Synchronize_Field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, i64, i64, i64, %struct.TYPE_12__* }

@E_OK = common dso_local global i32 0, align 4
@E_BAD_ARGUMENT = common dso_local global i32 0, align 4
@O_PUBLIC = common dso_local global i32 0, align 4
@_NEWTOP = common dso_local global i32 0, align 4
@_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @Synchronize_Field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Synchronize_Field(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load i32, i32* @E_OK, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = icmp ne %struct.TYPE_12__* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @E_BAD_ARGUMENT, align 4
  store i32 %10, i32* %2, align 4
  br label %77

11:                                               ; preds = %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %4, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %72

16:                                               ; preds = %11
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = call i64 @Field_Really_Appears(%struct.TYPE_12__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %16
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = icmp eq %struct.TYPE_12__* %21, %24
  br i1 %25, label %26, label %68

26:                                               ; preds = %20
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @werase(i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @O_PUBLIC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %26
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = call i64 @Justification_Allowed(%struct.TYPE_12__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @Undo_Justification(%struct.TYPE_12__* %51, i32 %54)
  br label %62

56:                                               ; preds = %46, %26
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @Buffer_To_Window(%struct.TYPE_12__* %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %50
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = load i32, i32* @_NEWTOP, align 4
  %65 = call i32 @SetStatus(%struct.TYPE_12__* %63, i32 %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = call i32 @_nc_Refresh_Current_Field(%struct.TYPE_11__* %66)
  store i32 %67, i32* %5, align 4
  br label %71

68:                                               ; preds = %20
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = call i32 @Display_Field(%struct.TYPE_12__* %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %62
  br label %72

72:                                               ; preds = %71, %16, %11
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = load i32, i32* @_CHANGED, align 4
  %75 = call i32 @SetStatus(%struct.TYPE_12__* %73, i32 %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %72, %9
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @Field_Really_Appears(%struct.TYPE_12__*) #1

declare dso_local i32 @werase(i32) #1

declare dso_local i64 @Justification_Allowed(%struct.TYPE_12__*) #1

declare dso_local i32 @Undo_Justification(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @Buffer_To_Window(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @SetStatus(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @_nc_Refresh_Current_Field(%struct.TYPE_11__*) #1

declare dso_local i32 @Display_Field(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
