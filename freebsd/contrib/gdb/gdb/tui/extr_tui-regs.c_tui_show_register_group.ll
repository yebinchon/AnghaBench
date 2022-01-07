; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_show_register_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_show_register_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i64, i8*, i32 }
%struct.TYPE_9__ = type { %struct.tui_data_info }
%struct.tui_data_info = type { i32, i64, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.tui_gen_win_info }
%struct.tui_gen_win_info = type { i64* }
%struct.gdbarch = type { i32 }
%struct.reggroup = type { i32 }
%struct.frame_info = type { i32 }
%struct.tui_data_element = type { i32, i8*, i8*, i8* }
%struct.tui_win_element = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.tui_data_element }

@TUI_FAILURE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TUI_DATA_WIN = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"Register group: %s\00", align 1
@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@DATA_WIN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@TUI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, %struct.reggroup*, %struct.frame_info*, i32)* @tui_show_register_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tui_show_register_group(%struct.gdbarch* %0, %struct.reggroup* %1, %struct.frame_info* %2, i32 %3) #0 {
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca %struct.reggroup*, align 8
  %7 = alloca %struct.frame_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [80 x i8], align 16
  %15 = alloca %struct.tui_data_info*, align 8
  %16 = alloca %struct.tui_gen_win_info*, align 8
  %17 = alloca %struct.tui_data_element*, align 8
  %18 = alloca i8*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store %struct.reggroup* %1, %struct.reggroup** %6, align 8
  store %struct.frame_info* %2, %struct.frame_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* @TUI_FAILURE, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i8*, i8** @FALSE, align 8
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DATA_WIN, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store %struct.tui_data_info* %24, %struct.tui_data_info** %15, align 8
  %25 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %26 = load %struct.reggroup*, %struct.reggroup** %6, align 8
  %27 = call i8* @reggroup_name(%struct.reggroup* %26)
  %28 = call i32 @snprintf(i8* %25, i32 79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DATA_WIN, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @xfree(i32 %32)
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %35 = call i32 @xstrdup(i8* %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DATA_WIN, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %60, %4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @NUM_REGS, align 4
  %42 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %43 = add nsw i32 %41, %42
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.reggroup*, %struct.reggroup** %6, align 8
  %49 = call i64 @gdbarch_register_reggroup_p(%struct.gdbarch* %46, i32 %47, %struct.reggroup* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i8* @gdbarch_register_name(%struct.gdbarch* %52, i32 %53)
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %56, %51, %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %39

63:                                               ; preds = %39
  %64 = load %struct.tui_data_info*, %struct.tui_data_info** %15, align 8
  %65 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %68
  %72 = load %struct.tui_data_info*, %struct.tui_data_info** %15, align 8
  %73 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %72, i32 0, i32 2
  %74 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %73, align 8
  %75 = load %struct.tui_data_info*, %struct.tui_data_info** %15, align 8
  %76 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @tui_free_data_content(%struct.TYPE_12__** %74, i32 %77)
  %79 = load %struct.tui_data_info*, %struct.tui_data_info** %15, align 8
  %80 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  br label %81

81:                                               ; preds = %71, %68, %63
  %82 = load %struct.tui_data_info*, %struct.tui_data_info** %15, align 8
  %83 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @DATA_WIN, align 4
  %89 = call %struct.TYPE_12__** @tui_alloc_content(i32 %87, i32 %88)
  %90 = load %struct.tui_data_info*, %struct.tui_data_info** %15, align 8
  %91 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %90, i32 0, i32 2
  store %struct.TYPE_12__** %89, %struct.TYPE_12__*** %91, align 8
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %11, align 4
  %93 = load i8*, i8** @FALSE, align 8
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %86, %81
  %96 = load %struct.tui_data_info*, %struct.tui_data_info** %15, align 8
  %97 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %96, i32 0, i32 2
  %98 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %97, align 8
  %99 = icmp ne %struct.TYPE_12__** %98, null
  br i1 %99, label %100, label %217

100:                                              ; preds = %95
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %103, %100
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DATA_WIN, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  store i8* null, i8** %109, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DATA_WIN, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DATA_WIN, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @tui_add_content_elements(%struct.TYPE_13__* %114, i32 %115)
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DATA_WIN, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = bitcast i8* %120 to %struct.TYPE_12__**
  %122 = load %struct.tui_data_info*, %struct.tui_data_info** %15, align 8
  %123 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %122, i32 0, i32 2
  store %struct.TYPE_12__** %121, %struct.TYPE_12__*** %123, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.tui_data_info*, %struct.tui_data_info** %15, align 8
  %126 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %106, %103
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %128

128:                                              ; preds = %201, %127
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @NUM_REGS, align 4
  %131 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %132 = add nsw i32 %130, %131
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %204

134:                                              ; preds = %128
  %135 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.reggroup*, %struct.reggroup** %6, align 8
  %138 = call i64 @gdbarch_register_reggroup_p(%struct.gdbarch* %135, i32 %136, %struct.reggroup* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %134
  br label %201

141:                                              ; preds = %134
  %142 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %143 = load i32, i32* %12, align 4
  %144 = call i8* @gdbarch_register_name(%struct.gdbarch* %142, i32 %143)
  store i8* %144, i8** %18, align 8
  %145 = load i8*, i8** %18, align 8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %201

148:                                              ; preds = %141
  %149 = load %struct.tui_data_info*, %struct.tui_data_info** %15, align 8
  %150 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %149, i32 0, i32 2
  %151 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %151, i64 %153
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  store %struct.tui_gen_win_info* %157, %struct.tui_gen_win_info** %16, align 8
  %158 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %16, align 8
  %159 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to %struct.tui_win_element*
  %164 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  store %struct.tui_data_element* %165, %struct.tui_data_element** %17, align 8
  %166 = load %struct.tui_data_element*, %struct.tui_data_element** %17, align 8
  %167 = icmp ne %struct.tui_data_element* %166, null
  br i1 %167, label %168, label %198

168:                                              ; preds = %148
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %181, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %12, align 4
  %173 = load %struct.tui_data_element*, %struct.tui_data_element** %17, align 8
  %174 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load i8*, i8** %18, align 8
  %176 = load %struct.tui_data_element*, %struct.tui_data_element** %17, align 8
  %177 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %176, i32 0, i32 1
  store i8* %175, i8** %177, align 8
  %178 = load i8*, i8** @FALSE, align 8
  %179 = load %struct.tui_data_element*, %struct.tui_data_element** %17, align 8
  %180 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %179, i32 0, i32 3
  store i8* %178, i8** %180, align 8
  br label %181

181:                                              ; preds = %171, %168
  %182 = load %struct.tui_data_element*, %struct.tui_data_element** %17, align 8
  %183 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = icmp eq i8* %184, null
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %188 = call i64 @xmalloc(i32 %187)
  %189 = inttoptr i64 %188 to i8*
  %190 = load %struct.tui_data_element*, %struct.tui_data_element** %17, align 8
  %191 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %190, i32 0, i32 2
  store i8* %189, i8** %191, align 8
  br label %192

192:                                              ; preds = %186, %181
  %193 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %194 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %195 = load %struct.tui_data_element*, %struct.tui_data_element** %17, align 8
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @tui_get_register(%struct.gdbarch* %193, %struct.frame_info* %194, %struct.tui_data_element* %195, i32 %196, i32 0)
  br label %198

198:                                              ; preds = %192, %148
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %201

201:                                              ; preds = %198, %147, %140
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %12, align 4
  br label %128

204:                                              ; preds = %128
  %205 = load %struct.tui_data_info*, %struct.tui_data_info** %15, align 8
  %206 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = load %struct.tui_data_info*, %struct.tui_data_info** %15, align 8
  %210 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %208, %211
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DATA_WIN, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  store i64 %212, i64* %215, align 8
  %216 = load i32, i32* @TUI_SUCCESS, align 4
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %204, %95
  %218 = load i32, i32* %9, align 4
  ret i32 %218
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @reggroup_name(%struct.reggroup*) #1

declare dso_local i32 @xfree(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i64 @gdbarch_register_reggroup_p(%struct.gdbarch*, i32, %struct.reggroup*) #1

declare dso_local i8* @gdbarch_register_name(%struct.gdbarch*, i32) #1

declare dso_local i32 @tui_free_data_content(%struct.TYPE_12__**, i32) #1

declare dso_local %struct.TYPE_12__** @tui_alloc_content(i32, i32) #1

declare dso_local i32 @tui_add_content_elements(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @tui_get_register(%struct.gdbarch*, %struct.frame_info*, %struct.tui_data_element*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
