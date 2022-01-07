; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_FE_Delete_Previous.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_FE_Delete_Previous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"FE_Delete_Previous(%p)\00", align 1
@E_REQUEST_DENIED = common dso_local global i32 0, align 4
@_OVLMODE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @FE_Delete_Previous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FE_Delete_Previous(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %4, align 8
  %13 = call i32 @T_CALLED(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = bitcast %struct.TYPE_9__* %14 to i8*
  %16 = ptrtoint i8* %15 to i32
  %17 = call i32 @T(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i64 @First_Position_In_Current_Field(%struct.TYPE_9__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @E_REQUEST_DENIED, align 4
  %23 = call i32 @returnCode(i32 %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %157

30:                                               ; preds = %24
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @_OVLMODE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load i32, i32* @E_REQUEST_DENIED, align 4
  %46 = call i32 @returnCode(i32 %45)
  br label %47

47:                                               ; preds = %44, %30
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = call i32* @Address_Of_Row_In_Buffer(%struct.TYPE_10__* %48, i32 %52)
  store i32* %53, i32** %6, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32* @Address_Of_Row_In_Buffer(%struct.TYPE_10__* %54, i32 %57)
  store i32* %58, i32** %5, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = call i32 @Synchronize_Buffer(%struct.TYPE_9__* %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @After_End_Of_Data(i32* %61, i32 %64)
  store i32* %65, i32** %7, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @After_End_Of_Data(i32* %66, i32 %69)
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = ptrtoint i32* %71 to i64
  %74 = ptrtoint i32* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = ptrtoint i32* %81 to i64
  %84 = ptrtoint i32* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = sub nsw i32 %80, %87
  %89 = icmp sgt i32 %77, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %47
  %91 = load i32, i32* @E_REQUEST_DENIED, align 4
  %92 = call i32 @returnCode(i32 %91)
  br label %93

93:                                               ; preds = %90, %47
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @wmove(i32 %96, i32 %99, i64 %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @wdeleteln(i32 %106)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @Adjust_Cursor_Position(%struct.TYPE_9__* %108, i32* %109)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %93
  %117 = load i32, i32* %9, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %116
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %132 = call i32 @DeleteChar(%struct.TYPE_9__* %131)
  br label %156

133:                                              ; preds = %116, %93
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @wmove(i32 %136, i32 %139, i64 %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = load i32*, i32** %5, align 8
  %150 = ptrtoint i32* %148 to i64
  %151 = ptrtoint i32* %149 to i64
  %152 = sub i64 %150, %151
  %153 = sdiv exact i64 %152, 4
  %154 = trunc i64 %153 to i32
  %155 = call i32 @myADDNSTR(i32 %146, i32* %147, i32 %154)
  br label %156

156:                                              ; preds = %133, %119
  br label %160

157:                                              ; preds = %24
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %159 = call i32 @DeleteChar(%struct.TYPE_9__* %158)
  br label %160

160:                                              ; preds = %157, %156
  %161 = load i32, i32* @E_OK, align 4
  %162 = call i32 @returnCode(i32 %161)
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @T(i32) #1

declare dso_local i32 @T_CALLED(i8*) #1

declare dso_local i64 @First_Position_In_Current_Field(%struct.TYPE_9__*) #1

declare dso_local i32 @returnCode(i32) #1

declare dso_local i32* @Address_Of_Row_In_Buffer(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @Synchronize_Buffer(%struct.TYPE_9__*) #1

declare dso_local i32* @After_End_Of_Data(i32*, i32) #1

declare dso_local i32 @wmove(i32, i32, i64) #1

declare dso_local i32 @wdeleteln(i32) #1

declare dso_local i32 @Adjust_Cursor_Position(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @DeleteChar(%struct.TYPE_9__*) #1

declare dso_local i32 @myADDNSTR(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
