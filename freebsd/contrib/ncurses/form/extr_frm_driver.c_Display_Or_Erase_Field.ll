; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_Display_Or_Erase_Field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_Display_Or_Erase_Field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32 }

@E_SYSTEM_ERROR = common dso_local global i32 0, align 4
@O_VISIBLE = common dso_local global i32 0, align 4
@O_PUBLIC = common dso_local global i32 0, align 4
@_NEWTOP = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @Display_Or_Erase_Field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Display_Or_Erase_Field(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @E_SYSTEM_ERROR, align 4
  store i32 %11, i32* %3, align 4
  br label %90

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32* @Get_Form_Window(i32 %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @derwin(i32* %17, i32 %20, i32 %23, i32 %26, i32 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %12
  %34 = load i32, i32* @E_SYSTEM_ERROR, align 4
  store i32 %34, i32* %3, align 4
  br label %90

35:                                               ; preds = %12
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @O_VISIBLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @Set_Field_Window_Attributes(%struct.TYPE_8__* %44, i32* %45)
  br label %53

47:                                               ; preds = %35
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i64 @WINDOW_ATTRS(i32* %49)
  %51 = trunc i64 %50 to i32
  %52 = call i32 @wattrset(i32* %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %43
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @werase(i32* %54)
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %84, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* @O_PUBLIC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %59
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = call i64 @Justification_Allowed(%struct.TYPE_8__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @Perform_Justification(%struct.TYPE_8__* %72, i32* %73)
  br label %79

75:                                               ; preds = %67
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @Buffer_To_Window(%struct.TYPE_8__* %76, i32* %77)
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %59
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = load i32, i32* @_NEWTOP, align 4
  %83 = call i32 @ClrStatus(%struct.TYPE_8__* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %56
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @wsyncup(i32* %85)
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @delwin(i32* %87)
  %89 = load i32, i32* @E_OK, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %84, %33, %10
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32* @Get_Form_Window(i32) #1

declare dso_local i32* @derwin(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Set_Field_Window_Attributes(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i64 @WINDOW_ATTRS(i32*) #1

declare dso_local i32 @werase(i32*) #1

declare dso_local i64 @Justification_Allowed(%struct.TYPE_8__*) #1

declare dso_local i32 @Perform_Justification(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @Buffer_To_Window(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ClrStatus(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @wsyncup(i32*) #1

declare dso_local i32 @delwin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
