; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_layout.c_cell.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_layout.c_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.tbl_node = type { %struct.tbl_row* }
%struct.tbl_row = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@MANDOCERR_TBLLAYOUT_VERT = common dso_local global i32 0, align 4
@KEYS_MAX = common dso_local global i32 0, align 4
@keys = common dso_local global %struct.TYPE_4__* null, align 8
@MANDOCERR_TBLLAYOUT_CHAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@TBL_CELL_SPAN = common dso_local global i32 0, align 4
@MANDOCERR_TBLLAYOUT_SPAN = common dso_local global i32 0, align 4
@TBL_CELL_HORIZ = common dso_local global i64 0, align 8
@TBL_CELL_DHORIZ = common dso_local global i64 0, align 8
@TBL_CELL_DOWN = common dso_local global i32 0, align 4
@MANDOCERR_TBLLAYOUT_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tbl_node*, %struct.tbl_row*, i32, i8*, i32*)* @cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cell(%struct.tbl_node* %0, %struct.tbl_row* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.tbl_node*, align 8
  %7 = alloca %struct.tbl_row*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tbl_node* %0, %struct.tbl_node** %6, align 8
  store %struct.tbl_row* %1, %struct.tbl_row** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  br label %13

13:                                               ; preds = %68, %5
  %14 = load i8*, i8** %9, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %40, label %22

22:                                               ; preds = %13
  %23 = load i8*, i8** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %40, label %31

31:                                               ; preds = %22
  %32 = load i8*, i8** %9, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 124
  br label %40

40:                                               ; preds = %31, %22, %13
  %41 = phi i1 [ true, %22 ], [ true, %13 ], [ %39, %31 ]
  br i1 %41, label %42, label %72

42:                                               ; preds = %40
  %43 = load i8*, i8** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 124
  br i1 %50, label %51, label %68

51:                                               ; preds = %42
  %52 = load %struct.tbl_row*, %struct.tbl_row** %7, align 8
  %53 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.tbl_row*, %struct.tbl_row** %7, align 8
  %58 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  br label %67

61:                                               ; preds = %51
  %62 = load i32, i32* @MANDOCERR_TBLLAYOUT_VERT, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %62, i32 %63, i32 %65, i8* null)
  br label %67

67:                                               ; preds = %61, %56
  br label %68

68:                                               ; preds = %67, %42
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %13

72:                                               ; preds = %40
  br label %73

73:                                               ; preds = %146, %72
  br label %74

74:                                               ; preds = %94, %73
  %75 = load i8*, i8** %9, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 32
  br i1 %82, label %92, label %83

83:                                               ; preds = %74
  %84 = load i8*, i8** %9, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 9
  br label %92

92:                                               ; preds = %83, %74
  %93 = phi i1 [ true, %74 ], [ %91, %83 ]
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %74

98:                                               ; preds = %92
  %99 = load i8*, i8** %9, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 46
  br i1 %106, label %116, label %107

107:                                              ; preds = %98
  %108 = load i8*, i8** %9, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107, %98
  br label %238

117:                                              ; preds = %107
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %139, %117
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @KEYS_MAX, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %118
  %123 = load i8*, i8** %9, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = call i64 @tolower(i8 zeroext %128)
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %129, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %122
  br label %142

138:                                              ; preds = %122
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %118

142:                                              ; preds = %137, %118
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @KEYS_MAX, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %142
  %147 = load i32, i32* @MANDOCERR_TBLLAYOUT_CHAR, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i8*, i8** %9, align 8
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %147, i32 %148, i32 %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %157)
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  br label %73

162:                                              ; preds = %142
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @TBL_CELL_SPAN, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %208

172:                                              ; preds = %162
  %173 = load %struct.tbl_row*, %struct.tbl_row** %7, align 8
  %174 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %173, i32 0, i32 1
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = icmp eq %struct.TYPE_3__* %175, null
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load i32, i32* @MANDOCERR_TBLLAYOUT_SPAN, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load i32*, i32** %10, align 8
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %178, i32 %179, i32 %181, i8* null)
  br label %207

183:                                              ; preds = %172
  %184 = load %struct.tbl_row*, %struct.tbl_row** %7, align 8
  %185 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %184, i32 0, i32 1
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @TBL_CELL_HORIZ, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %199, label %191

191:                                              ; preds = %183
  %192 = load %struct.tbl_row*, %struct.tbl_row** %7, align 8
  %193 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %192, i32 0, i32 1
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @TBL_CELL_DHORIZ, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %191, %183
  %200 = load %struct.tbl_row*, %struct.tbl_row** %7, align 8
  %201 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %200, i32 0, i32 1
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %12, align 4
  br label %206

206:                                              ; preds = %199, %191
  br label %207

207:                                              ; preds = %206, %177
  br label %225

208:                                              ; preds = %162
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* @TBL_CELL_DOWN, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %224

212:                                              ; preds = %208
  %213 = load %struct.tbl_row*, %struct.tbl_row** %7, align 8
  %214 = load %struct.tbl_node*, %struct.tbl_node** %6, align 8
  %215 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %214, i32 0, i32 0
  %216 = load %struct.tbl_row*, %struct.tbl_row** %215, align 8
  %217 = icmp eq %struct.tbl_row* %213, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %212
  %219 = load i32, i32* @MANDOCERR_TBLLAYOUT_DOWN, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32*, i32** %10, align 8
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %219, i32 %220, i32 %222, i8* null)
  br label %224

224:                                              ; preds = %218, %212, %208
  br label %225

225:                                              ; preds = %224, %207
  %226 = load i32*, i32** %10, align 8
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  %229 = load %struct.tbl_node*, %struct.tbl_node** %6, align 8
  %230 = load %struct.tbl_node*, %struct.tbl_node** %6, align 8
  %231 = load %struct.tbl_row*, %struct.tbl_row** %7, align 8
  %232 = load i32, i32* %12, align 4
  %233 = call i32 @cell_alloc(%struct.tbl_node* %230, %struct.tbl_row* %231, i32 %232)
  %234 = load i32, i32* %8, align 4
  %235 = load i8*, i8** %9, align 8
  %236 = load i32*, i32** %10, align 8
  %237 = call i32 @mods(%struct.tbl_node* %229, i32 %233, i32 %234, i8* %235, i32* %236)
  br label %238

238:                                              ; preds = %225, %116
  ret void
}

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @tolower(i8 zeroext) #1

declare dso_local i32 @mods(%struct.tbl_node*, i32, i32, i8*, i32*) #1

declare dso_local i32 @cell_alloc(%struct.tbl_node*, %struct.tbl_row*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
