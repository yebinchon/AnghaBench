; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc.c_mdoc_pmacro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc.c_mdoc_pmacro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { %struct.roff_node*, i64, i32, i32 }
%struct.roff_node = type { i64, i64, i64, i64, %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_12__ = type { i32 (%struct.roff_man*, i32, i32, i32, i32*, i8*)* }

@TOKEN_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" \09\\\00", align 1
@MANDOCERR_MACRO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MANDOCERR_SPACE_EOL = common dso_local global i32 0, align 4
@MDOC_It = common dso_local global i32 0, align 4
@MDOC_El = common dso_local global i32 0, align 4
@MDOC_Bl = common dso_local global i64 0, align 8
@ROFFT_BODY = common dso_local global i64 0, align 8
@ENDBODY_NOT = common dso_local global i64 0, align 8
@LIST_column = common dso_local global i64 0, align 8
@MDOC_FREECOL = common dso_local global i32 0, align 4
@MDOC_Sh = common dso_local global i32 0, align 4
@SEC_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_man*, i32, i8*, i32)* @mdoc_pmacro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdoc_pmacro(%struct.roff_man* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.roff_man*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.roff_node*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.roff_man* %0, %struct.roff_man** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* @TOKEN_NONE, align 4
  store i32 %16, i32* %13, align 4
  store i64 0, i64* %12, align 8
  br label %17

17:                                               ; preds = %33, %4
  %18 = load i64, i64* %12, align 8
  %19 = icmp ult i64 %18, 4
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = call i32* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext %25)
  %27 = icmp eq i32* %26, null
  br label %28

28:                                               ; preds = %20, %17
  %29 = phi i1 [ false, %17 ], [ %27, %20 ]
  br i1 %29, label %30, label %36

30:                                               ; preds = %28
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %12, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %12, align 8
  br label %17

36:                                               ; preds = %28
  %37 = load i64, i64* %12, align 8
  %38 = icmp eq i64 %37, 2
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %12, align 8
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %42, label %52

42:                                               ; preds = %39, %36
  %43 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %44 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @roffhash_find(i32 %45, i8* %49, i64 %50)
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %42, %39
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @TOKEN_NONE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i32, i32* @MANDOCERR_MACRO, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = getelementptr inbounds i8, i8* %63, i64 -1
  %65 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %57, i32 %58, i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  store i32 1, i32* %5, align 4
  br label %246

66:                                               ; preds = %52
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  switch i32 %72, label %89 [
    i32 92, label %73
    i32 9, label %86
  ]

73:                                               ; preds = %66
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8* %78, i8** %11, align 8
  %79 = call i32 @mandoc_escape(i8** %11, i32* null, i32* null)
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %9, align 4
  br label %90

86:                                               ; preds = %66
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %90

89:                                               ; preds = %66
  br label %90

90:                                               ; preds = %89, %86, %73
  br label %91

91:                                               ; preds = %99, %90
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %91

102:                                              ; preds = %91
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 0, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %102
  %111 = load i8*, i8** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 32, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %110
  %120 = load i32, i32* @MANDOCERR_SPACE_EOL, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %9, align 4
  %123 = sub nsw i32 %122, 1
  %124 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %120, i32 %121, i32 %123, i8* null)
  br label %125

125:                                              ; preds = %119, %110, %102
  %126 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %127 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %126, i32 0, i32 0
  %128 = load %struct.roff_node*, %struct.roff_node** %127, align 8
  store %struct.roff_node* %128, %struct.roff_node** %10, align 8
  %129 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %130 = icmp eq %struct.roff_node* %129, null
  br i1 %130, label %139, label %131

131:                                              ; preds = %125
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @MDOC_It, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @MDOC_El, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %135, %131, %125
  %140 = load i32, i32* %13, align 4
  %141 = call %struct.TYPE_12__* @mdoc_macro(i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32 (%struct.roff_man*, i32, i32, i32, i32*, i8*)*, i32 (%struct.roff_man*, i32, i32, i32, i32*, i8*)** %142, align 8
  %144 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i8*, i8** %8, align 8
  %149 = call i32 %143(%struct.roff_man* %144, i32 %145, i32 %146, i32 %147, i32* %9, i8* %148)
  store i32 1, i32* %5, align 4
  br label %246

150:                                              ; preds = %135
  %151 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %152 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @MDOC_Bl, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %177

156:                                              ; preds = %150
  %157 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %158 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @ROFFT_BODY, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %156
  %163 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %164 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @ENDBODY_NOT, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %162
  %169 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %170 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %169, i32 0, i32 5
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @LIST_column, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %201, label %177

177:                                              ; preds = %168, %162, %156, %150
  %178 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %179 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %178, i32 0, i32 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = icmp ne %struct.TYPE_11__* %180, null
  br i1 %181, label %182, label %217

182:                                              ; preds = %177
  %183 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %184 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %183, i32 0, i32 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @MDOC_Bl, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %217

190:                                              ; preds = %182
  %191 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %192 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %191, i32 0, i32 4
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @LIST_column, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %217

201:                                              ; preds = %190, %168
  %202 = load i32, i32* @MDOC_FREECOL, align 4
  %203 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %204 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  %207 = load i32, i32* @MDOC_It, align 4
  %208 = call %struct.TYPE_12__* @mdoc_macro(i32 %207)
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i32 (%struct.roff_man*, i32, i32, i32, i32*, i8*)*, i32 (%struct.roff_man*, i32, i32, i32, i32*, i8*)** %209, align 8
  %211 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %212 = load i32, i32* @MDOC_It, align 4
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* %14, align 4
  %215 = load i8*, i8** %8, align 8
  %216 = call i32 %210(%struct.roff_man* %211, i32 %212, i32 %213, i32 %214, i32* %14, i8* %215)
  store i32 1, i32* %5, align 4
  br label %246

217:                                              ; preds = %190, %182, %177
  %218 = load i32, i32* %13, align 4
  %219 = call %struct.TYPE_12__* @mdoc_macro(i32 %218)
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  %221 = load i32 (%struct.roff_man*, i32, i32, i32, i32*, i8*)*, i32 (%struct.roff_man*, i32, i32, i32, i32*, i8*)** %220, align 8
  %222 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %223 = load i32, i32* %13, align 4
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %14, align 4
  %226 = load i8*, i8** %8, align 8
  %227 = call i32 %221(%struct.roff_man* %222, i32 %223, i32 %224, i32 %225, i32* %9, i8* %226)
  %228 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %229 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %245

232:                                              ; preds = %217
  %233 = load i32, i32* @MDOC_Sh, align 4
  %234 = load i32, i32* %13, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %245

236:                                              ; preds = %232
  %237 = load i64, i64* @SEC_NAME, align 8
  %238 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %239 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %238, i32 0, i32 0
  %240 = load %struct.roff_node*, %struct.roff_node** %239, align 8
  %241 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %237, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %236
  store i32 2, i32* %5, align 4
  br label %246

245:                                              ; preds = %236, %232, %217
  store i32 1, i32* %5, align 4
  br label %246

246:                                              ; preds = %245, %244, %201, %139, %56
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @roffhash_find(i32, i8*, i64) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @mandoc_escape(i8**, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @mdoc_macro(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
