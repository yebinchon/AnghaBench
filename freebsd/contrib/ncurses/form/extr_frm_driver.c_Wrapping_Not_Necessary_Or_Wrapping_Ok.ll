; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_Wrapping_Not_Necessary_Or_Wrapping_Ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_Wrapping_Not_Necessary_Or_Wrapping_Ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i64 }

@E_REQUEST_DENIED = common dso_local global i32 0, align 4
@O_WRAP = common dso_local global i32 0, align 4
@E_SYSTEM_ERROR = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @Wrapping_Not_Necessary_Or_Wrapping_Ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Wrapping_Not_Necessary_Or_Wrapping_Ok(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %4, align 8
  %14 = load i32, i32* @E_REQUEST_DENIED, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @O_WRAP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %137

31:                                               ; preds = %1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = call i32 @Single_Line_Field(%struct.TYPE_14__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %137, label %35

35:                                               ; preds = %31
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = call i64 @There_Is_No_Room_For_A_Char_In_Line(%struct.TYPE_13__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %137

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = call i64 @Growable(%struct.TYPE_14__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %137

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = call i32 @Field_Grown(%struct.TYPE_14__* %50, i32 1)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @E_SYSTEM_ERROR, align 4
  store i32 %54, i32* %2, align 4
  br label %141

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %46
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = call i32* @Address_Of_Current_Row_In_Buffer(%struct.TYPE_13__* %57)
  store i32* %58, i32** %7, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = call i32 @Window_To_Buffer(%struct.TYPE_13__* %59, %struct.TYPE_14__* %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32* @After_Last_Whitespace_Character(i32* %62, i32 %65)
  store i32* %66, i32** %8, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = ptrtoint i32* %67 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %10, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %123

81:                                               ; preds = %56
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @Insert_String(%struct.TYPE_13__* %82, i32 %86, i32* %87, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* @E_OK, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %122

92:                                               ; preds = %81
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @wmove(i32 %95, i32 %98, i32 %99)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @wclrtoeol(i32 %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %92
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %110, %92
  %121 = load i32, i32* @E_OK, align 4
  store i32 %121, i32* %2, align 4
  br label %141

122:                                              ; preds = %81
  br label %125

123:                                              ; preds = %56
  %124 = load i32, i32* @E_OK, align 4
  store i32 %124, i32* %2, align 4
  br label %141

125:                                              ; preds = %122
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @E_OK, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %131 = call i32 @DeleteChar(%struct.TYPE_13__* %130)
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %134 = call i32 @Window_To_Buffer(%struct.TYPE_13__* %132, %struct.TYPE_14__* %133)
  %135 = load i32, i32* @E_REQUEST_DENIED, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %129, %125
  br label %139

137:                                              ; preds = %42, %35, %31, %1
  %138 = load i32, i32* @E_OK, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %137, %136
  %140 = load i32, i32* %5, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %123, %120, %53
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @Single_Line_Field(%struct.TYPE_14__*) #1

declare dso_local i64 @There_Is_No_Room_For_A_Char_In_Line(%struct.TYPE_13__*) #1

declare dso_local i64 @Growable(%struct.TYPE_14__*) #1

declare dso_local i32 @Field_Grown(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @Address_Of_Current_Row_In_Buffer(%struct.TYPE_13__*) #1

declare dso_local i32 @Window_To_Buffer(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32* @After_Last_Whitespace_Character(i32*, i32) #1

declare dso_local i32 @Insert_String(%struct.TYPE_13__*, i32, i32*, i32) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @wclrtoeol(i32) #1

declare dso_local i32 @DeleteChar(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
