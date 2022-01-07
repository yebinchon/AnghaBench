; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_IFN_Beginning_Of_Field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_IFN_Beginning_Of_Field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"IFN_Beginning_Of_Field(%p)\00", align 1
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @IFN_Beginning_Of_Field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IFN_Beginning_Of_Field(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %4, align 8
  %8 = call i32 @T_CALLED(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = bitcast %struct.TYPE_7__* %9 to i8*
  %11 = ptrtoint i8* %10 to i32
  %12 = call i32 @T(i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = call i32 @Synchronize_Buffer(%struct.TYPE_7__* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = call i32 @Buffer_Length(%struct.TYPE_8__* %19)
  %21 = call i32 @Get_Start_Of_Data(i32 %18, i32 %20)
  %22 = call i32 @Adjust_Cursor_Position(%struct.TYPE_7__* %15, i32 %21)
  %23 = load i32, i32* @E_OK, align 4
  %24 = call i32 @returnCode(i32 %23)
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @T(i32) #1

declare dso_local i32 @T_CALLED(i8*) #1

declare dso_local i32 @Synchronize_Buffer(%struct.TYPE_7__*) #1

declare dso_local i32 @Adjust_Cursor_Position(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @Get_Start_Of_Data(i32, i32) #1

declare dso_local i32 @Buffer_Length(%struct.TYPE_8__*) #1

declare dso_local i32 @returnCode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
