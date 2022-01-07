; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_FE_Insert_Character.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_FE_Insert_Character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }

@E_REQUEST_DENIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"FE_Insert_Character(%p)\00", align 1
@C_BLANK = common dso_local global i64 0, align 8
@E_SYSTEM_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @FE_Insert_Character to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FE_Insert_Character(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %4, align 8
  %10 = load i32, i32* @E_REQUEST_DENIED, align 4
  store i32 %10, i32* %5, align 4
  %11 = call i32 @T_CALLED(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = bitcast %struct.TYPE_11__* %12 to i8*
  %14 = ptrtoint i8* %13 to i32
  %15 = call i32 @T(i32 %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* @C_BLANK, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = call i64 @Check_Char(%struct.TYPE_11__* %16, %struct.TYPE_12__* %17, i32 %20, i32 %22, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = call i32 @Is_There_Room_For_A_Char_In_Line(%struct.TYPE_11__* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = call i64 @Single_Line_Field(%struct.TYPE_12__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = call i64 @Growable(%struct.TYPE_12__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %38, %29
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = call i32 @Field_Grown(%struct.TYPE_12__* %46, i32 1)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @E_SYSTEM_ERROR, align 4
  store i32 %50, i32* %5, align 4
  br label %60

51:                                               ; preds = %45, %42
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* @C_BLANK, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @winsch(i32 %54, i32 %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = call i32 @Wrapping_Not_Necessary_Or_Wrapping_Ok(%struct.TYPE_11__* %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %51, %49
  br label %61

61:                                               ; preds = %60, %38, %34
  br label %62

62:                                               ; preds = %61, %1
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @returnCode(i32 %63)
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @T(i32) #1

declare dso_local i32 @T_CALLED(i8*) #1

declare dso_local i64 @Check_Char(%struct.TYPE_11__*, %struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @Is_There_Room_For_A_Char_In_Line(%struct.TYPE_11__*) #1

declare dso_local i64 @Single_Line_Field(%struct.TYPE_12__*) #1

declare dso_local i64 @Growable(%struct.TYPE_12__*) #1

declare dso_local i32 @Field_Grown(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @winsch(i32, i32) #1

declare dso_local i32 @Wrapping_Not_Necessary_Or_Wrapping_Ok(%struct.TYPE_11__*) #1

declare dso_local i32 @returnCode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
