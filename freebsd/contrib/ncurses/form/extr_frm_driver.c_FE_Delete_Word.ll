; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_FE_Delete_Word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_FE_Delete_Word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"FE_Delete_Word(%p)\00", align 1
@E_REQUEST_DENIED = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @FE_Delete_Word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FE_Delete_Word(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = call i32* @Address_Of_Current_Row_In_Buffer(%struct.TYPE_7__* %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32* %25, i32** %7, align 8
  %26 = call i32 @T_CALLED(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = bitcast %struct.TYPE_7__* %27 to i8*
  %29 = ptrtoint i8* %28 to i32
  %30 = call i32 @T(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = call i32 @Synchronize_Buffer(%struct.TYPE_7__* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ISBLANK(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load i32, i32* @E_REQUEST_DENIED, align 4
  %39 = call i32 @returnCode(i32 %38)
  br label %40

40:                                               ; preds = %37, %1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @After_Last_Whitespace_Character(i32* %42, i32 %45)
  %47 = call i32 @Adjust_Cursor_Position(%struct.TYPE_7__* %41, i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @wmove(i32 %50, i32 %53, i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wclrtoeol(i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = ptrtoint i32* %63 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32* @Get_First_Whitespace_Character(i32* %62, i32 %69)
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = ptrtoint i32* %72 to i64
  %75 = ptrtoint i32* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call i32* @Get_Start_Of_Data(i32* %71, i32 %78)
  store i32* %79, i32** %8, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = icmp ne i32* %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %40
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @ISBLANK(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %109, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = ptrtoint i32* %95 to i64
  %98 = ptrtoint i32* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 4
  %101 = trunc i64 %100 to i32
  %102 = call i32* @After_End_Of_Data(i32* %94, i32 %101)
  %103 = ptrtoint i32* %93 to i64
  %104 = ptrtoint i32* %102 to i64
  %105 = sub i64 %103, %104
  %106 = sdiv exact i64 %105, 4
  %107 = trunc i64 %106 to i32
  %108 = call i32 @myADDNSTR(i32 %91, i32* %92, i32 %107)
  br label %109

109:                                              ; preds = %88, %83, %40
  %110 = load i32, i32* @E_OK, align 4
  %111 = call i32 @returnCode(i32 %110)
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32* @Address_Of_Current_Row_In_Buffer(%struct.TYPE_7__*) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @T_CALLED(i8*) #1

declare dso_local i32 @Synchronize_Buffer(%struct.TYPE_7__*) #1

declare dso_local i64 @ISBLANK(i32) #1

declare dso_local i32 @returnCode(i32) #1

declare dso_local i32 @Adjust_Cursor_Position(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @After_Last_Whitespace_Character(i32*, i32) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @wclrtoeol(i32) #1

declare dso_local i32* @Get_First_Whitespace_Character(i32*, i32) #1

declare dso_local i32* @Get_Start_Of_Data(i32*, i32) #1

declare dso_local i32 @myADDNSTR(i32, i32*, i32) #1

declare dso_local i32* @After_End_Of_Data(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
