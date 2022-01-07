; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.varobj = type { i8*, %struct.TYPE_7__*, i32, i32, i8*, i32 }
%struct.TYPE_7__ = type { i32, %struct.varobj*, i32, %struct.TYPE_8__*, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.block = type { i32 }
%struct.cleanup = type { i32 }

@USE_CURRENT_FRAME = common dso_local global i32 0, align 4
@USE_SELECTED_FRAME = common dso_local global i32 0, align 4
@deprecated_selected_frame = common dso_local global %struct.frame_info* null, align 8
@innermost_block = common dso_local global i32* null, align 8
@OP_TYPE = common dso_local global i64 0, align 8
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Attempt to use a type name as an expression.\00", align 1
@languages = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.varobj* @varobj_create(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.varobj*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.varobj*, align 8
  %11 = alloca %struct.frame_info*, align 8
  %12 = alloca %struct.frame_info*, align 8
  %13 = alloca %struct.block*, align 8
  %14 = alloca %struct.cleanup*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.frame_info* null, %struct.frame_info** %12, align 8
  %17 = call %struct.varobj* (...) @new_root_variable()
  store %struct.varobj* %17, %struct.varobj** %10, align 8
  %18 = load %struct.varobj*, %struct.varobj** %10, align 8
  %19 = call %struct.cleanup* @make_cleanup_free_variable(%struct.varobj* %18)
  store %struct.cleanup* %19, %struct.cleanup** %14, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %170

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @USE_CURRENT_FRAME, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @USE_SELECTED_FRAME, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %22
  %31 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  store %struct.frame_info* %31, %struct.frame_info** %11, align 8
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.frame_info* @find_frame_addr_in_frame_chain(i32 %33)
  store %struct.frame_info* %34, %struct.frame_info** %11, align 8
  br label %35

35:                                               ; preds = %32, %30
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @USE_SELECTED_FRAME, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.varobj*, %struct.varobj** %10, align 8
  %41 = getelementptr inbounds %struct.varobj, %struct.varobj* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %39, %35
  store %struct.block* null, %struct.block** %13, align 8
  %45 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %46 = icmp ne %struct.frame_info* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %49 = call %struct.block* @get_frame_block(%struct.frame_info* %48, i32 0)
  store %struct.block* %49, %struct.block** %13, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i8*, i8** %7, align 8
  store i8* %51, i8** %15, align 8
  store i32* null, i32** @innermost_block, align 8
  %52 = load %struct.block*, %struct.block** %13, align 8
  %53 = load %struct.varobj*, %struct.varobj** %10, align 8
  %54 = getelementptr inbounds %struct.varobj, %struct.varobj* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = call i32 @gdb_parse_exp_1(i8** %15, %struct.block* %52, i32 0, %struct.TYPE_8__** %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  store %struct.varobj* null, %struct.varobj** %5, align 8
  br label %194

60:                                               ; preds = %50
  %61 = load %struct.varobj*, %struct.varobj** %10, align 8
  %62 = getelementptr inbounds %struct.varobj, %struct.varobj* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @OP_TYPE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %60
  %74 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %75 = call i32 @do_cleanups(%struct.cleanup* %74)
  %76 = load i32, i32* @gdb_stderr, align 4
  %77 = call i32 @fprintf_unfiltered(i32 %76, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store %struct.varobj* null, %struct.varobj** %5, align 8
  br label %194

78:                                               ; preds = %60
  %79 = load %struct.varobj*, %struct.varobj** %10, align 8
  %80 = call i32 @variable_default_display(%struct.varobj* %79)
  %81 = load %struct.varobj*, %struct.varobj** %10, align 8
  %82 = getelementptr inbounds %struct.varobj, %struct.varobj* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load i32*, i32** @innermost_block, align 8
  %84 = load %struct.varobj*, %struct.varobj** %10, align 8
  %85 = getelementptr inbounds %struct.varobj, %struct.varobj* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 5
  store i32* %83, i32** %87, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = call i8* @savestring(i8* %88, i32 %90)
  %92 = load %struct.varobj*, %struct.varobj** %10, align 8
  %93 = getelementptr inbounds %struct.varobj, %struct.varobj* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %95 = icmp ne %struct.frame_info* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %78
  %97 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %98 = call i32 @get_frame_id(%struct.frame_info* %97)
  %99 = load %struct.varobj*, %struct.varobj** %10, align 8
  %100 = getelementptr inbounds %struct.varobj, %struct.varobj* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  store i32 %98, i32* %102, align 8
  %103 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  store %struct.frame_info* %103, %struct.frame_info** %12, align 8
  %104 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %105 = call i32 @select_frame(%struct.frame_info* %104)
  br label %106

106:                                              ; preds = %96, %78
  %107 = load %struct.varobj*, %struct.varobj** %10, align 8
  %108 = getelementptr inbounds %struct.varobj, %struct.varobj* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load %struct.varobj*, %struct.varobj** %10, align 8
  %113 = getelementptr inbounds %struct.varobj, %struct.varobj* %112, i32 0, i32 2
  %114 = call i64 @gdb_evaluate_expression(%struct.TYPE_8__* %111, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %106
  %117 = load %struct.varobj*, %struct.varobj** %10, align 8
  %118 = getelementptr inbounds %struct.varobj, %struct.varobj* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @release_value(i32 %119)
  %121 = load %struct.varobj*, %struct.varobj** %10, align 8
  %122 = getelementptr inbounds %struct.varobj, %struct.varobj* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @VALUE_LAZY(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load %struct.varobj*, %struct.varobj** %10, align 8
  %128 = getelementptr inbounds %struct.varobj, %struct.varobj* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @gdb_value_fetch_lazy(i32 %129)
  br label %131

131:                                              ; preds = %126, %116
  br label %141

132:                                              ; preds = %106
  %133 = load %struct.varobj*, %struct.varobj** %10, align 8
  %134 = getelementptr inbounds %struct.varobj, %struct.varobj* %133, i32 0, i32 1
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = call i32 @evaluate_type(%struct.TYPE_8__* %137)
  %139 = load %struct.varobj*, %struct.varobj** %10, align 8
  %140 = getelementptr inbounds %struct.varobj, %struct.varobj* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %132, %131
  %142 = load %struct.varobj*, %struct.varobj** %10, align 8
  %143 = getelementptr inbounds %struct.varobj, %struct.varobj* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @VALUE_TYPE(i32 %144)
  %146 = load %struct.varobj*, %struct.varobj** %10, align 8
  %147 = getelementptr inbounds %struct.varobj, %struct.varobj* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load %struct.varobj*, %struct.varobj** %10, align 8
  %149 = call i32 @variable_language(%struct.varobj* %148)
  store i32 %149, i32* %16, align 4
  %150 = load i32*, i32** @languages, align 8
  %151 = load i32, i32* %16, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.varobj*, %struct.varobj** %10, align 8
  %156 = getelementptr inbounds %struct.varobj, %struct.varobj* %155, i32 0, i32 1
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  store i32 %154, i32* %158, align 8
  %159 = load %struct.varobj*, %struct.varobj** %10, align 8
  %160 = load %struct.varobj*, %struct.varobj** %10, align 8
  %161 = getelementptr inbounds %struct.varobj, %struct.varobj* %160, i32 0, i32 1
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  store %struct.varobj* %159, %struct.varobj** %163, align 8
  %164 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %165 = icmp ne %struct.frame_info* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %141
  %167 = load %struct.frame_info*, %struct.frame_info** %12, align 8
  %168 = call i32 @select_frame(%struct.frame_info* %167)
  br label %169

169:                                              ; preds = %166, %141
  br label %170

170:                                              ; preds = %169, %4
  %171 = load %struct.varobj*, %struct.varobj** %10, align 8
  %172 = icmp ne %struct.varobj* %171, null
  br i1 %172, label %173, label %190

173:                                              ; preds = %170
  %174 = load i8*, i8** %6, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  %177 = load i8*, i8** %6, align 8
  %178 = load i8*, i8** %6, align 8
  %179 = call i32 @strlen(i8* %178)
  %180 = call i8* @savestring(i8* %177, i32 %179)
  %181 = load %struct.varobj*, %struct.varobj** %10, align 8
  %182 = getelementptr inbounds %struct.varobj, %struct.varobj* %181, i32 0, i32 0
  store i8* %180, i8** %182, align 8
  %183 = load %struct.varobj*, %struct.varobj** %10, align 8
  %184 = call i32 @install_variable(%struct.varobj* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %176
  %187 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %188 = call i32 @do_cleanups(%struct.cleanup* %187)
  store %struct.varobj* null, %struct.varobj** %5, align 8
  br label %194

189:                                              ; preds = %176
  br label %190

190:                                              ; preds = %189, %173, %170
  %191 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %192 = call i32 @discard_cleanups(%struct.cleanup* %191)
  %193 = load %struct.varobj*, %struct.varobj** %10, align 8
  store %struct.varobj* %193, %struct.varobj** %5, align 8
  br label %194

194:                                              ; preds = %190, %186, %73, %59
  %195 = load %struct.varobj*, %struct.varobj** %5, align 8
  ret %struct.varobj* %195
}

declare dso_local %struct.varobj* @new_root_variable(...) #1

declare dso_local %struct.cleanup* @make_cleanup_free_variable(%struct.varobj*) #1

declare dso_local %struct.frame_info* @find_frame_addr_in_frame_chain(i32) #1

declare dso_local %struct.block* @get_frame_block(%struct.frame_info*, i32) #1

declare dso_local i32 @gdb_parse_exp_1(i8**, %struct.block*, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

declare dso_local i32 @variable_default_display(%struct.varobj*) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_frame_id(%struct.frame_info*) #1

declare dso_local i32 @select_frame(%struct.frame_info*) #1

declare dso_local i64 @gdb_evaluate_expression(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @release_value(i32) #1

declare dso_local i64 @VALUE_LAZY(i32) #1

declare dso_local i32 @gdb_value_fetch_lazy(i32) #1

declare dso_local i32 @evaluate_type(%struct.TYPE_8__*) #1

declare dso_local i32 @VALUE_TYPE(i32) #1

declare dso_local i32 @variable_language(%struct.varobj*) #1

declare dso_local i32 @install_variable(%struct.varobj*) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
