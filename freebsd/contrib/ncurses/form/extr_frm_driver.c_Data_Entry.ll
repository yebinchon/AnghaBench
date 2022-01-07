; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_Data_Entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_Data_Entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i64 }

@E_REQUEST_DENIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Data_Entry(%p,%s)\00", align 1
@O_EDIT = common dso_local global i32 0, align 4
@O_BLANK = common dso_local global i32 0, align 4
@_FCHECK_REQUIRED = common dso_local global i32 0, align 4
@_WINDOW_MODIFIED = common dso_local global i32 0, align 4
@_OVLMODE = common dso_local global i32 0, align 4
@E_SYSTEM_ERROR = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@O_AUTOSKIP = common dso_local global i32 0, align 4
@FN_Next_Field = common dso_local global i32 0, align 4
@O_ACTIVE = common dso_local global i32 0, align 4
@addch_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @Data_Entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Data_Entry(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %6, align 8
  %13 = load i32, i32* @E_REQUEST_DENIED, align 4
  store i32 %13, i32* %7, align 4
  %14 = call i32 @T_CALLED(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = bitcast %struct.TYPE_13__* %15 to i8*
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @_tracechtype(i32 %17)
  %19 = call i32 @T(i32 %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @O_EDIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %170

27:                                               ; preds = %2
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @O_BLANK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %27
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = call i64 @First_Position_In_Current_Field(%struct.TYPE_13__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @_FCHECK_REQUIRED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @_WINDOW_MODIFIED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @werase(i32 %56)
  br label %58

58:                                               ; preds = %53, %46, %39, %35, %27
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @_OVLMODE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @waddch(i32 %68, i32 %69)
  br label %103

71:                                               ; preds = %58
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = call i32 @Is_There_Room_For_A_Char_In_Line(%struct.TYPE_13__* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = call i64 @Single_Line_Field(%struct.TYPE_14__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = call i64 @Growable(%struct.TYPE_14__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80, %76
  %85 = load i32, i32* @E_REQUEST_DENIED, align 4
  %86 = call i32 @RETURN(i32 %85)
  br label %87

87:                                               ; preds = %84, %80, %71
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = call i32 @Field_Grown(%struct.TYPE_14__* %91, i32 1)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @E_SYSTEM_ERROR, align 4
  %96 = call i32 @RETURN(i32 %95)
  br label %97

97:                                               ; preds = %94, %90, %87
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @winsch(i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %97, %65
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = call i32 @Wrapping_Not_Necessary_Or_Wrapping_Ok(%struct.TYPE_13__* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* @E_OK, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %169

108:                                              ; preds = %103
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, 1
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %108
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %121, %124
  br label %126

126:                                              ; preds = %117, %108
  %127 = phi i1 [ false, %108 ], [ %125, %117 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %9, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = load i32, i32* @_WINDOW_MODIFIED, align 4
  %131 = call i32 @SetStatus(%struct.TYPE_13__* %129, i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %126
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %136 = call i64 @Growable(%struct.TYPE_14__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %134
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = load i32, i32* @O_AUTOSKIP, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load i32, i32* @FN_Next_Field, align 4
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %149 = call i32 @Inter_Field_Navigation(i32 %147, %struct.TYPE_13__* %148)
  store i32 %149, i32* %7, align 4
  br label %168

150:                                              ; preds = %138, %134, %126
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %155 = call i64 @Growable(%struct.TYPE_14__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %159 = call i32 @Field_Grown(%struct.TYPE_14__* %158, i32 1)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* @E_SYSTEM_ERROR, align 4
  store i32 %162, i32* %7, align 4
  br label %167

163:                                              ; preds = %157, %153, %150
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %165 = call i32 @IFN_Next_Character(%struct.TYPE_13__* %164)
  %166 = load i32, i32* @E_OK, align 4
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %163, %161
  br label %168

168:                                              ; preds = %167, %146
  br label %169

169:                                              ; preds = %168, %103
  br label %170

170:                                              ; preds = %169, %2
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @RETURN(i32 %171)
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @T(i32) #1

declare dso_local i32 @T_CALLED(i8*) #1

declare dso_local i32 @_tracechtype(i32) #1

declare dso_local i64 @First_Position_In_Current_Field(%struct.TYPE_13__*) #1

declare dso_local i32 @werase(i32) #1

declare dso_local i32 @waddch(i32, i32) #1

declare dso_local i32 @Is_There_Room_For_A_Char_In_Line(%struct.TYPE_13__*) #1

declare dso_local i64 @Single_Line_Field(%struct.TYPE_14__*) #1

declare dso_local i64 @Growable(%struct.TYPE_14__*) #1

declare dso_local i32 @RETURN(i32) #1

declare dso_local i32 @Field_Grown(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @winsch(i32, i32) #1

declare dso_local i32 @Wrapping_Not_Necessary_Or_Wrapping_Ok(%struct.TYPE_13__*) #1

declare dso_local i32 @SetStatus(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @Inter_Field_Navigation(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @IFN_Next_Character(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
