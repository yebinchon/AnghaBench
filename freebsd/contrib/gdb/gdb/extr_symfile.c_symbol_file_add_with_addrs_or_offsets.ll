; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_symbol_file_add_with_addrs_or_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_symbol_file_add_with_addrs_or_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32*, %struct.TYPE_2__*, %struct.partial_symtab* }
%struct.TYPE_2__ = type { %struct.objfile* }
%struct.partial_symtab = type { %struct.partial_symtab* }
%struct.section_addr_info = type { i32, i32* }
%struct.section_offsets = type { i32 }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Load new symbol table from \22%s\22? \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Not confirmed.\00", align 1
@info_verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Reading symbols from %s...\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gdb_stdout = common dso_local global i32 0, align 4
@OBJF_READNOW = common dso_local global i32 0, align 4
@readnow_symbol_files = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"expanding to full symbols...\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"(no debugging symbols found)...\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.objfile* (i8*, i32, %struct.section_addr_info*, %struct.section_offsets*, i32, i32, i32)* @symbol_file_add_with_addrs_or_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.objfile* @symbol_file_add_with_addrs_or_offsets(i8* %0, i32 %1, %struct.section_addr_info* %2, %struct.section_offsets* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.objfile*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.section_addr_info*, align 8
  %12 = alloca %struct.section_offsets*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.objfile*, align 8
  %17 = alloca %struct.partial_symtab*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.section_addr_info*, align 8
  %21 = alloca %struct.cleanup*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.section_addr_info* %2, %struct.section_addr_info** %11, align 8
  store %struct.section_offsets* %3, %struct.section_offsets** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = call i32* @symfile_bfd_open(i8* %23)
  store i32* %24, i32** %19, align 8
  %25 = call i64 (...) @have_full_symbols()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %7
  %28 = call i64 (...) @have_partial_symbols()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27, %7
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @query(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36, %33, %30, %27
  %43 = load i32*, i32** %19, align 8
  %44 = load i32, i32* %15, align 4
  %45 = call %struct.objfile* @allocate_objfile(i32* %43, i32 %44)
  store %struct.objfile* %45, %struct.objfile** %16, align 8
  %46 = load i32*, i32** %19, align 8
  %47 = call i32 @bfd_count_sections(i32* %46)
  %48 = call %struct.section_addr_info* @alloc_section_addr_info(i32 %47)
  store %struct.section_addr_info* %48, %struct.section_addr_info** %20, align 8
  %49 = load %struct.section_addr_info*, %struct.section_addr_info** %20, align 8
  %50 = call %struct.cleanup* @make_cleanup(i32 (i8*)* @xfree, %struct.section_addr_info* %49)
  store %struct.cleanup* %50, %struct.cleanup** %21, align 8
  %51 = load %struct.section_addr_info*, %struct.section_addr_info** %11, align 8
  %52 = icmp ne %struct.section_addr_info* %51, null
  br i1 %52, label %53, label %83

53:                                               ; preds = %42
  %54 = load %struct.section_addr_info*, %struct.section_addr_info** %11, align 8
  %55 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.section_addr_info*, %struct.section_addr_info** %20, align 8
  %58 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %22, align 4
  br label %59

59:                                               ; preds = %79, %53
  %60 = load i32, i32* %22, align 4
  %61 = load %struct.section_addr_info*, %struct.section_addr_info** %11, align 8
  %62 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load %struct.section_addr_info*, %struct.section_addr_info** %11, align 8
  %67 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %22, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.section_addr_info*, %struct.section_addr_info** %20, align 8
  %74 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %22, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  br label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %22, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %22, align 4
  br label %59

82:                                               ; preds = %59
  br label %83

83:                                               ; preds = %82, %42
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* @info_verbose, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86, %83
  br i1 true, label %90, label %93

90:                                               ; preds = %89
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @pre_add_symbol_hook(i8* %91)
  br label %99

93:                                               ; preds = %89
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  %96 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @gdb_stdout, align 4
  %98 = call i32 @gdb_flush(i32 %97)
  br label %99

99:                                               ; preds = %93, %90
  br label %100

100:                                              ; preds = %99, %86
  %101 = load %struct.objfile*, %struct.objfile** %16, align 8
  %102 = load %struct.section_addr_info*, %struct.section_addr_info** %11, align 8
  %103 = load %struct.section_offsets*, %struct.section_offsets** %12, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @syms_from_objfile(%struct.objfile* %101, %struct.section_addr_info* %102, %struct.section_offsets* %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* @OBJF_READNOW, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %100
  %113 = load i64, i64* @readnow_symbol_files, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %112, %100
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i64, i64* @info_verbose, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118, %115
  %122 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %123 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* @gdb_stdout, align 4
  %125 = call i32 @gdb_flush(i32 %124)
  br label %126

126:                                              ; preds = %121, %118
  %127 = load %struct.objfile*, %struct.objfile** %16, align 8
  %128 = getelementptr inbounds %struct.objfile, %struct.objfile* %127, i32 0, i32 2
  %129 = load %struct.partial_symtab*, %struct.partial_symtab** %128, align 8
  store %struct.partial_symtab* %129, %struct.partial_symtab** %17, align 8
  br label %130

130:                                              ; preds = %136, %126
  %131 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %132 = icmp ne %struct.partial_symtab* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %135 = call i32 @psymtab_to_symtab(%struct.partial_symtab* %134)
  br label %136

136:                                              ; preds = %133
  %137 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %138 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %137, i32 0, i32 0
  %139 = load %struct.partial_symtab*, %struct.partial_symtab** %138, align 8
  store %struct.partial_symtab* %139, %struct.partial_symtab** %17, align 8
  br label %130

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140, %112
  %142 = load %struct.objfile*, %struct.objfile** %16, align 8
  %143 = call i8* @find_separate_debug_file(%struct.objfile* %142)
  store i8* %143, i8** %18, align 8
  %144 = load i8*, i8** %18, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %179

146:                                              ; preds = %141
  %147 = load %struct.section_addr_info*, %struct.section_addr_info** %11, align 8
  %148 = icmp ne %struct.section_addr_info* %147, null
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load i8*, i8** %18, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.section_addr_info*, %struct.section_addr_info** %20, align 8
  %153 = load i32, i32* %15, align 4
  %154 = call i8* @symbol_file_add(i8* %150, i32 %151, %struct.section_addr_info* %152, i32 0, i32 %153)
  %155 = bitcast i8* %154 to %struct.TYPE_2__*
  %156 = load %struct.objfile*, %struct.objfile** %16, align 8
  %157 = getelementptr inbounds %struct.objfile, %struct.objfile* %156, i32 0, i32 1
  store %struct.TYPE_2__* %155, %struct.TYPE_2__** %157, align 8
  br label %166

158:                                              ; preds = %146
  %159 = load i8*, i8** %18, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %15, align 4
  %162 = call i8* @symbol_file_add(i8* %159, i32 %160, %struct.section_addr_info* null, i32 0, i32 %161)
  %163 = bitcast i8* %162 to %struct.TYPE_2__*
  %164 = load %struct.objfile*, %struct.objfile** %16, align 8
  %165 = getelementptr inbounds %struct.objfile, %struct.objfile* %164, i32 0, i32 1
  store %struct.TYPE_2__* %163, %struct.TYPE_2__** %165, align 8
  br label %166

166:                                              ; preds = %158, %149
  %167 = load %struct.objfile*, %struct.objfile** %16, align 8
  %168 = load %struct.objfile*, %struct.objfile** %16, align 8
  %169 = getelementptr inbounds %struct.objfile, %struct.objfile* %168, i32 0, i32 1
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  store %struct.objfile* %167, %struct.objfile** %171, align 8
  %172 = load %struct.objfile*, %struct.objfile** %16, align 8
  %173 = getelementptr inbounds %struct.objfile, %struct.objfile* %172, i32 0, i32 1
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load %struct.objfile*, %struct.objfile** %16, align 8
  %176 = call i32 @put_objfile_before(%struct.TYPE_2__* %174, %struct.objfile* %175)
  %177 = load i8*, i8** %18, align 8
  %178 = call i32 @xfree(i8* %177)
  br label %179

179:                                              ; preds = %166, %141
  %180 = call i64 (...) @have_partial_symbols()
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %179
  %183 = call i64 (...) @have_full_symbols()
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %182
  %186 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %187 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %188 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %189

189:                                              ; preds = %185, %182, %179
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = load i64, i64* @info_verbose, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %192, %189
  br i1 true, label %196, label %198

196:                                              ; preds = %195
  %197 = call i32 (...) @post_add_symbol_hook()
  br label %200

198:                                              ; preds = %195
  %199 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %196
  br label %201

201:                                              ; preds = %200, %192
  %202 = load i32, i32* @gdb_stdout, align 4
  %203 = call i32 @gdb_flush(i32 %202)
  %204 = load %struct.cleanup*, %struct.cleanup** %21, align 8
  %205 = call i32 @do_cleanups(%struct.cleanup* %204)
  %206 = load %struct.objfile*, %struct.objfile** %16, align 8
  %207 = getelementptr inbounds %struct.objfile, %struct.objfile* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = icmp eq i32* %208, null
  br i1 %209, label %210, label %212

210:                                              ; preds = %201
  %211 = load %struct.objfile*, %struct.objfile** %16, align 8
  store %struct.objfile* %211, %struct.objfile** %8, align 8
  br label %222

212:                                              ; preds = %201
  %213 = load %struct.objfile*, %struct.objfile** %16, align 8
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @new_symfile_objfile(%struct.objfile* %213, i32 %214, i32 %215)
  br i1 true, label %217, label %220

217:                                              ; preds = %212
  %218 = load %struct.objfile*, %struct.objfile** %16, align 8
  %219 = call i32 @target_new_objfile_hook(%struct.objfile* %218)
  br label %220

220:                                              ; preds = %217, %212
  %221 = load %struct.objfile*, %struct.objfile** %16, align 8
  store %struct.objfile* %221, %struct.objfile** %8, align 8
  br label %222

222:                                              ; preds = %220, %210
  %223 = load %struct.objfile*, %struct.objfile** %8, align 8
  ret %struct.objfile* %223
}

declare dso_local i32* @symfile_bfd_open(i8*) #1

declare dso_local i64 @have_full_symbols(...) #1

declare dso_local i64 @have_partial_symbols(...) #1

declare dso_local i32 @query(i8*, i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.objfile* @allocate_objfile(i32*, i32) #1

declare dso_local %struct.section_addr_info* @alloc_section_addr_info(i32) #1

declare dso_local i32 @bfd_count_sections(i32*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32 (i8*)*, %struct.section_addr_info*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @pre_add_symbol_hook(i8*) #1

declare dso_local i32 @printf_unfiltered(i8*, ...) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @syms_from_objfile(%struct.objfile*, %struct.section_addr_info*, %struct.section_offsets*, i32, i32, i32) #1

declare dso_local i32 @psymtab_to_symtab(%struct.partial_symtab*) #1

declare dso_local i8* @find_separate_debug_file(%struct.objfile*) #1

declare dso_local i8* @symbol_file_add(i8*, i32, %struct.section_addr_info*, i32, i32) #1

declare dso_local i32 @put_objfile_before(%struct.TYPE_2__*, %struct.objfile*) #1

declare dso_local i32 @post_add_symbol_hook(...) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @new_symfile_objfile(%struct.objfile*, i32, i32) #1

declare dso_local i32 @target_new_objfile_hook(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
