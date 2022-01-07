; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_IFN_Next_Word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_IFN_Next_Word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c"IFN_Next_Word(%p)\00", align 1
@E_REQUEST_DENIED = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @IFN_Next_Word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IFN_Next_Word(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = call i32* @Address_Of_Current_Position_In_Buffer(%struct.TYPE_8__* %11)
  store i32* %12, i32** %5, align 8
  %13 = call i32 @T_CALLED(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = bitcast %struct.TYPE_8__* %14 to i8*
  %16 = ptrtoint i8* %15 to i32
  %17 = call i32 @T(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = call i32 @Synchronize_Buffer(%struct.TYPE_8__* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = call i64 @Buffer_Length(%struct.TYPE_9__* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = ptrtoint i32* %23 to i64
  %28 = ptrtoint i32* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %22, %32
  %34 = call i32* @Get_First_Whitespace_Character(i32* %20, i64 %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = call i64 @Buffer_Length(%struct.TYPE_9__* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = ptrtoint i32* %38 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %37, %47
  %49 = call i32* @Get_Start_Of_Data(i32* %35, i64 %48)
  store i32* %49, i32** %7, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = icmp eq i32* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %1
  %54 = load i32, i32* @E_REQUEST_DENIED, align 4
  %55 = call i32 @returnCode(i32 %54)
  br label %62

56:                                               ; preds = %1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @Adjust_Cursor_Position(%struct.TYPE_8__* %57, i32* %58)
  %60 = load i32, i32* @E_OK, align 4
  %61 = call i32 @returnCode(i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32* @Address_Of_Current_Position_In_Buffer(%struct.TYPE_8__*) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @T_CALLED(i8*) #1

declare dso_local i32 @Synchronize_Buffer(%struct.TYPE_8__*) #1

declare dso_local i32* @Get_First_Whitespace_Character(i32*, i64) #1

declare dso_local i64 @Buffer_Length(%struct.TYPE_9__*) #1

declare dso_local i32* @Get_Start_Of_Data(i32*, i64) #1

declare dso_local i32 @returnCode(i32) #1

declare dso_local i32 @Adjust_Cursor_Position(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
