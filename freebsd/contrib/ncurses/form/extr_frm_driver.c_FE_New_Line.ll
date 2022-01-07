; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_FE_New_Line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_FE_New_Line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"FE_New_Line(%p)\00", align 1
@_OVLMODE = common dso_local global i32 0, align 4
@O_NL_OVERLOAD = common dso_local global i32 0, align 4
@E_REQUEST_DENIED = common dso_local global i32 0, align 4
@_WINDOW_MODIFIED = common dso_local global i32 0, align 4
@FN_Next_Field = common dso_local global i32 0, align 4
@E_SYSTEM_ERROR = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @FE_New_Line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FE_New_Line(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 5
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %15, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = call i32 @T_CALLED(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = bitcast %struct.TYPE_11__* %22 to i8*
  %24 = ptrtoint i8* %23 to i32
  %25 = call i32 @T(i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @_OVLMODE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %113

32:                                               ; preds = %1
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %32
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = call i64 @Growable(%struct.TYPE_12__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = call i32 @Single_Line_Field(%struct.TYPE_12__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %39, %35
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @O_NL_OVERLOAD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @E_REQUEST_DENIED, align 4
  %53 = call i32 @returnCode(i32 %52)
  br label %54

54:                                               ; preds = %51, %43
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @wmove(i32 %57, i32 %60, i64 %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @wclrtoeol(i32 %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = load i32, i32* @_WINDOW_MODIFIED, align 4
  %71 = call i32 @SetStatus(%struct.TYPE_11__* %69, i32 %70)
  %72 = load i32, i32* @FN_Next_Field, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = call i32 @Inter_Field_Navigation(i32 %72, %struct.TYPE_11__* %73)
  %75 = call i32 @returnCode(i32 %74)
  br label %112

76:                                               ; preds = %39, %32
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = call i32 @Field_Grown(%struct.TYPE_12__* %80, i32 1)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @E_SYSTEM_ERROR, align 4
  %85 = call i32 @returnCode(i32 %84)
  br label %86

86:                                               ; preds = %83, %79, %76
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @wmove(i32 %89, i32 %92, i64 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @wclrtoeol(i32 %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = load i32, i32* @_WINDOW_MODIFIED, align 4
  %109 = call i32 @SetStatus(%struct.TYPE_11__* %107, i32 %108)
  %110 = load i32, i32* @E_OK, align 4
  %111 = call i32 @returnCode(i32 %110)
  br label %112

112:                                              ; preds = %86, %54
  br label %233

113:                                              ; preds = %1
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %113
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %118 = call i64 @Growable(%struct.TYPE_12__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %122 = call i32 @Single_Line_Field(%struct.TYPE_12__* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %120, %116
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = load i32, i32* @O_NL_OVERLOAD, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %124
  %133 = load i32, i32* @E_REQUEST_DENIED, align 4
  %134 = call i32 @returnCode(i32 %133)
  br label %135

135:                                              ; preds = %132, %124
  %136 = load i32, i32* @FN_Next_Field, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %138 = call i32 @Inter_Field_Navigation(i32 %136, %struct.TYPE_11__* %137)
  %139 = call i32 @returnCode(i32 %138)
  br label %232

140:                                              ; preds = %120, %113
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = call i64 @Is_There_Room_For_A_Line(%struct.TYPE_11__* %144)
  %146 = icmp ne i64 %145, 0
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi i1 [ false, %140 ], [ %146, %143 ]
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %154 = call i64 @Growable(%struct.TYPE_12__* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = load i32, i32* @E_REQUEST_DENIED, align 4
  %158 = call i32 @returnCode(i32 %157)
  br label %159

159:                                              ; preds = %156, %152, %147
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %159
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %164 = call i32 @Field_Grown(%struct.TYPE_12__* %163, i32 1)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* @E_SYSTEM_ERROR, align 4
  %168 = call i32 @returnCode(i32 %167)
  br label %169

169:                                              ; preds = %166, %162, %159
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %171 = call i32* @Address_Of_Current_Position_In_Buffer(%struct.TYPE_11__* %170)
  store i32* %171, i32** %5, align 8
  %172 = load i32*, i32** %5, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = sub nsw i64 %175, %178
  %180 = call i32* @After_End_Of_Data(i32* %172, i64 %179)
  store i32* %180, i32** %6, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @wmove(i32 %183, i32 %186, i64 %189)
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @wclrtoeol(i32 %193)
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 3
  store i64 0, i64* %200, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @wmove(i32 %203, i32 %206, i64 %209)
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @winsertln(i32 %213)
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32*, i32** %5, align 8
  %219 = load i32*, i32** %6, align 8
  %220 = load i32*, i32** %5, align 8
  %221 = ptrtoint i32* %219 to i64
  %222 = ptrtoint i32* %220 to i64
  %223 = sub i64 %221, %222
  %224 = sdiv exact i64 %223, 4
  %225 = trunc i64 %224 to i32
  %226 = call i32 @myADDNSTR(i32 %217, i32* %218, i32 %225)
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %228 = load i32, i32* @_WINDOW_MODIFIED, align 4
  %229 = call i32 @SetStatus(%struct.TYPE_11__* %227, i32 %228)
  %230 = load i32, i32* @E_OK, align 4
  %231 = call i32 @returnCode(i32 %230)
  br label %232

232:                                              ; preds = %169, %135
  br label %233

233:                                              ; preds = %232, %112
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i32 @T(i32) #1

declare dso_local i32 @T_CALLED(i8*) #1

declare dso_local i64 @Growable(%struct.TYPE_12__*) #1

declare dso_local i32 @Single_Line_Field(%struct.TYPE_12__*) #1

declare dso_local i32 @returnCode(i32) #1

declare dso_local i32 @wmove(i32, i32, i64) #1

declare dso_local i32 @wclrtoeol(i32) #1

declare dso_local i32 @SetStatus(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @Inter_Field_Navigation(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @Field_Grown(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @Is_There_Room_For_A_Line(%struct.TYPE_11__*) #1

declare dso_local i32* @Address_Of_Current_Position_In_Buffer(%struct.TYPE_11__*) #1

declare dso_local i32* @After_End_Of_Data(i32*, i64) #1

declare dso_local i32 @winsertln(i32) #1

declare dso_local i32 @myADDNSTR(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
