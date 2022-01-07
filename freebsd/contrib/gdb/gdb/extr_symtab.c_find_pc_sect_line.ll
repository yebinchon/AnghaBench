; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_find_pc_sect_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_find_pc_sect_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i64, i64, i64, %struct.bfd_section*, %struct.symtab* }
%struct.symtab = type { %struct.symtab* }
%struct.bfd_section = type { i32 }
%struct.linetable = type { i32, %struct.linetable_entry* }
%struct.linetable_entry = type { i64, i64 }
%struct.blockvector = type { i32 }
%struct.minimal_symbol = type { i32 }

@mst_solib_trampoline = common dso_local global i64 0, align 8
@GLOBAL_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_pc_sect_line(%struct.symtab_and_line* noalias sret %0, i64 %1, %struct.bfd_section* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.bfd_section*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.symtab*, align 8
  %9 = alloca %struct.linetable*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.linetable_entry*, align 8
  %13 = alloca %struct.symtab_and_line, align 8
  %14 = alloca %struct.blockvector*, align 8
  %15 = alloca %struct.minimal_symbol*, align 8
  %16 = alloca %struct.minimal_symbol*, align 8
  %17 = alloca %struct.linetable_entry*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.symtab*, align 8
  %20 = alloca %struct.linetable_entry*, align 8
  %21 = alloca %struct.symtab*, align 8
  %22 = alloca %struct.linetable_entry*, align 8
  store i64 %1, i64* %5, align 8
  store %struct.bfd_section* %2, %struct.bfd_section** %6, align 8
  store i32 %3, i32* %7, align 4
  store %struct.linetable_entry* null, %struct.linetable_entry** %17, align 8
  store i64 0, i64* %18, align 8
  store %struct.symtab* null, %struct.symtab** %19, align 8
  store %struct.linetable_entry* null, %struct.linetable_entry** %20, align 8
  store %struct.symtab* null, %struct.symtab** %21, align 8
  %23 = call i32 @init_sal(%struct.symtab_and_line* %13)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i64, i64* %5, align 8
  %28 = sub nsw i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %26, %4
  %30 = load i64, i64* %5, align 8
  %31 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i64 %30)
  store %struct.minimal_symbol* %31, %struct.minimal_symbol** %15, align 8
  %32 = load %struct.minimal_symbol*, %struct.minimal_symbol** %15, align 8
  %33 = icmp ne %struct.minimal_symbol* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load %struct.minimal_symbol*, %struct.minimal_symbol** %15, align 8
  %36 = call i64 @MSYMBOL_TYPE(%struct.minimal_symbol* %35)
  %37 = load i64, i64* @mst_solib_trampoline, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load %struct.minimal_symbol*, %struct.minimal_symbol** %15, align 8
  %41 = call i32 @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol* %40)
  %42 = call %struct.minimal_symbol* @lookup_minimal_symbol_text(i32 %41, i32* null)
  store %struct.minimal_symbol* %42, %struct.minimal_symbol** %16, align 8
  %43 = load %struct.minimal_symbol*, %struct.minimal_symbol** %16, align 8
  %44 = icmp eq %struct.minimal_symbol* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %57

46:                                               ; preds = %39
  %47 = load %struct.minimal_symbol*, %struct.minimal_symbol** %16, align 8
  %48 = call i64 @SYMBOL_VALUE(%struct.minimal_symbol* %47)
  %49 = load %struct.minimal_symbol*, %struct.minimal_symbol** %15, align 8
  %50 = call i64 @SYMBOL_VALUE(%struct.minimal_symbol* %49)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %56

53:                                               ; preds = %46
  %54 = load %struct.minimal_symbol*, %struct.minimal_symbol** %16, align 8
  %55 = call i64 @SYMBOL_VALUE(%struct.minimal_symbol* %54)
  call void @find_pc_line(%struct.symtab_and_line* sret %0, i64 %55, i32 0)
  br label %298

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %45
  br label %58

58:                                               ; preds = %57, %34
  br label %59

59:                                               ; preds = %58, %29
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.bfd_section*, %struct.bfd_section** %6, align 8
  %62 = call %struct.symtab* @find_pc_sect_symtab(i64 %60, %struct.bfd_section* %61)
  store %struct.symtab* %62, %struct.symtab** %8, align 8
  %63 = load %struct.symtab*, %struct.symtab** %8, align 8
  %64 = icmp ne %struct.symtab* %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, i64* %5, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 0
  store i64 %72, i64* %73, align 8
  %74 = bitcast %struct.symtab_and_line* %0 to i8*
  %75 = bitcast %struct.symtab_and_line* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 40, i1 false)
  br label %298

76:                                               ; preds = %59
  %77 = load %struct.symtab*, %struct.symtab** %8, align 8
  %78 = call %struct.blockvector* @BLOCKVECTOR(%struct.symtab* %77)
  store %struct.blockvector* %78, %struct.blockvector** %14, align 8
  br label %79

79:                                               ; preds = %202, %76
  %80 = load %struct.symtab*, %struct.symtab** %8, align 8
  %81 = icmp ne %struct.symtab* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.symtab*, %struct.symtab** %8, align 8
  %84 = call %struct.blockvector* @BLOCKVECTOR(%struct.symtab* %83)
  %85 = load %struct.blockvector*, %struct.blockvector** %14, align 8
  %86 = icmp eq %struct.blockvector* %84, %85
  br label %87

87:                                               ; preds = %82, %79
  %88 = phi i1 [ false, %79 ], [ %86, %82 ]
  br i1 %88, label %89, label %206

89:                                               ; preds = %87
  %90 = load %struct.symtab*, %struct.symtab** %8, align 8
  %91 = call %struct.linetable* @LINETABLE(%struct.symtab* %90)
  store %struct.linetable* %91, %struct.linetable** %9, align 8
  %92 = load %struct.linetable*, %struct.linetable** %9, align 8
  %93 = icmp ne %struct.linetable* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br label %202

95:                                               ; preds = %89
  %96 = load %struct.linetable*, %struct.linetable** %9, align 8
  %97 = getelementptr inbounds %struct.linetable, %struct.linetable* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %202

102:                                              ; preds = %95
  store %struct.linetable_entry* null, %struct.linetable_entry** %22, align 8
  %103 = load %struct.linetable*, %struct.linetable** %9, align 8
  %104 = getelementptr inbounds %struct.linetable, %struct.linetable* %103, i32 0, i32 1
  %105 = load %struct.linetable_entry*, %struct.linetable_entry** %104, align 8
  store %struct.linetable_entry* %105, %struct.linetable_entry** %12, align 8
  %106 = load %struct.linetable_entry*, %struct.linetable_entry** %12, align 8
  %107 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %5, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %102
  %112 = load %struct.linetable_entry*, %struct.linetable_entry** %20, align 8
  %113 = icmp ne %struct.linetable_entry* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load %struct.linetable_entry*, %struct.linetable_entry** %12, align 8
  %116 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.linetable_entry*, %struct.linetable_entry** %20, align 8
  %119 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %114, %111
  %123 = load %struct.linetable_entry*, %struct.linetable_entry** %12, align 8
  store %struct.linetable_entry* %123, %struct.linetable_entry** %20, align 8
  %124 = load %struct.symtab*, %struct.symtab** %8, align 8
  store %struct.symtab* %124, %struct.symtab** %21, align 8
  br label %125

125:                                              ; preds = %122, %114, %102
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %139, %125
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load %struct.linetable_entry*, %struct.linetable_entry** %12, align 8
  %132 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %5, align 8
  %135 = icmp sgt i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %144

137:                                              ; preds = %130
  %138 = load %struct.linetable_entry*, %struct.linetable_entry** %12, align 8
  store %struct.linetable_entry* %138, %struct.linetable_entry** %22, align 8
  br label %139

139:                                              ; preds = %137
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  %142 = load %struct.linetable_entry*, %struct.linetable_entry** %12, align 8
  %143 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %142, i32 1
  store %struct.linetable_entry* %143, %struct.linetable_entry** %12, align 8
  br label %126

144:                                              ; preds = %136, %126
  %145 = load %struct.linetable_entry*, %struct.linetable_entry** %22, align 8
  %146 = icmp ne %struct.linetable_entry* %145, null
  br i1 %146, label %147, label %173

147:                                              ; preds = %144
  %148 = load %struct.linetable_entry*, %struct.linetable_entry** %22, align 8
  %149 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %173

152:                                              ; preds = %147
  %153 = load %struct.linetable_entry*, %struct.linetable_entry** %17, align 8
  %154 = icmp ne %struct.linetable_entry* %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load %struct.linetable_entry*, %struct.linetable_entry** %22, align 8
  %157 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.linetable_entry*, %struct.linetable_entry** %17, align 8
  %160 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp sgt i64 %158, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %155, %152
  %164 = load %struct.linetable_entry*, %struct.linetable_entry** %22, align 8
  store %struct.linetable_entry* %164, %struct.linetable_entry** %17, align 8
  %165 = load %struct.symtab*, %struct.symtab** %8, align 8
  store %struct.symtab* %165, %struct.symtab** %19, align 8
  %166 = load i64, i64* %18, align 8
  %167 = load %struct.linetable_entry*, %struct.linetable_entry** %17, align 8
  %168 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp sle i64 %166, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  store i64 0, i64* %18, align 8
  br label %172

172:                                              ; preds = %171, %163
  br label %173

173:                                              ; preds = %172, %155, %147, %144
  %174 = load %struct.linetable_entry*, %struct.linetable_entry** %17, align 8
  %175 = icmp ne %struct.linetable_entry* %174, null
  br i1 %175, label %176, label %201

176:                                              ; preds = %173
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %201

180:                                              ; preds = %176
  %181 = load %struct.linetable_entry*, %struct.linetable_entry** %12, align 8
  %182 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.linetable_entry*, %struct.linetable_entry** %17, align 8
  %185 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp sgt i64 %183, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %180
  %189 = load i64, i64* %18, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %197, label %191

191:                                              ; preds = %188
  %192 = load i64, i64* %18, align 8
  %193 = load %struct.linetable_entry*, %struct.linetable_entry** %12, align 8
  %194 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp sgt i64 %192, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %191, %188
  %198 = load %struct.linetable_entry*, %struct.linetable_entry** %12, align 8
  %199 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %18, align 8
  br label %201

201:                                              ; preds = %197, %191, %180, %176, %173
  br label %202

202:                                              ; preds = %201, %101, %94
  %203 = load %struct.symtab*, %struct.symtab** %8, align 8
  %204 = getelementptr inbounds %struct.symtab, %struct.symtab* %203, i32 0, i32 0
  %205 = load %struct.symtab*, %struct.symtab** %204, align 8
  store %struct.symtab* %205, %struct.symtab** %8, align 8
  br label %79

206:                                              ; preds = %87
  %207 = load %struct.symtab*, %struct.symtab** %19, align 8
  %208 = icmp ne %struct.symtab* %207, null
  br i1 %208, label %242, label %209

209:                                              ; preds = %206
  %210 = load %struct.symtab*, %struct.symtab** %21, align 8
  %211 = icmp ne %struct.symtab* %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %209
  %213 = load i64, i64* %5, align 8
  %214 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 0
  store i64 %213, i64* %214, align 8
  br label %241

215:                                              ; preds = %209
  %216 = load %struct.symtab*, %struct.symtab** %21, align 8
  %217 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 4
  store %struct.symtab* %216, %struct.symtab** %217, align 8
  %218 = load %struct.linetable_entry*, %struct.linetable_entry** %20, align 8
  %219 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = sub nsw i64 %220, 1
  %222 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 1
  store i64 %221, i64* %222, align 8
  %223 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %215
  %227 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %227, align 8
  br label %230

230:                                              ; preds = %226, %215
  %231 = load %struct.blockvector*, %struct.blockvector** %14, align 8
  %232 = load i32, i32* @GLOBAL_BLOCK, align 4
  %233 = call i32 @BLOCKVECTOR_BLOCK(%struct.blockvector* %231, i32 %232)
  %234 = call i8* @BLOCK_END(i32 %233)
  %235 = ptrtoint i8* %234 to i64
  %236 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 0
  store i64 %235, i64* %236, align 8
  %237 = load %struct.linetable_entry*, %struct.linetable_entry** %20, align 8
  %238 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 2
  store i64 %239, i64* %240, align 8
  br label %241

241:                                              ; preds = %230, %212
  br label %293

242:                                              ; preds = %206
  %243 = load %struct.linetable_entry*, %struct.linetable_entry** %17, align 8
  %244 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load i64, i64* %5, align 8
  %249 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 0
  store i64 %248, i64* %249, align 8
  br label %292

250:                                              ; preds = %242
  %251 = load %struct.symtab*, %struct.symtab** %19, align 8
  %252 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 4
  store %struct.symtab* %251, %struct.symtab** %252, align 8
  %253 = load %struct.linetable_entry*, %struct.linetable_entry** %17, align 8
  %254 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 1
  store i64 %255, i64* %256, align 8
  %257 = load %struct.linetable_entry*, %struct.linetable_entry** %17, align 8
  %258 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 0
  store i64 %259, i64* %260, align 8
  %261 = load i64, i64* %18, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %250
  %264 = load %struct.linetable_entry*, %struct.linetable_entry** %20, align 8
  %265 = icmp ne %struct.linetable_entry* %264, null
  br i1 %265, label %266, label %272

266:                                              ; preds = %263
  %267 = load i64, i64* %18, align 8
  %268 = load %struct.linetable_entry*, %struct.linetable_entry** %20, align 8
  %269 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = icmp slt i64 %267, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %266, %263
  %273 = load i64, i64* %18, align 8
  %274 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 2
  store i64 %273, i64* %274, align 8
  br label %291

275:                                              ; preds = %266, %250
  %276 = load %struct.linetable_entry*, %struct.linetable_entry** %20, align 8
  %277 = icmp ne %struct.linetable_entry* %276, null
  br i1 %277, label %278, label %283

278:                                              ; preds = %275
  %279 = load %struct.linetable_entry*, %struct.linetable_entry** %20, align 8
  %280 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 2
  store i64 %281, i64* %282, align 8
  br label %290

283:                                              ; preds = %275
  %284 = load %struct.blockvector*, %struct.blockvector** %14, align 8
  %285 = load i32, i32* @GLOBAL_BLOCK, align 4
  %286 = call i32 @BLOCKVECTOR_BLOCK(%struct.blockvector* %284, i32 %285)
  %287 = call i8* @BLOCK_END(i32 %286)
  %288 = ptrtoint i8* %287 to i64
  %289 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 2
  store i64 %288, i64* %289, align 8
  br label %290

290:                                              ; preds = %283, %278
  br label %291

291:                                              ; preds = %290, %272
  br label %292

292:                                              ; preds = %291, %247
  br label %293

293:                                              ; preds = %292, %241
  %294 = load %struct.bfd_section*, %struct.bfd_section** %6, align 8
  %295 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 3
  store %struct.bfd_section* %294, %struct.bfd_section** %295, align 8
  %296 = bitcast %struct.symtab_and_line* %0 to i8*
  %297 = bitcast %struct.symtab_and_line* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %296, i8* align 8 %297, i64 40, i1 false)
  br label %298

298:                                              ; preds = %293, %71, %53
  ret void
}

declare dso_local i32 @init_sal(%struct.symtab_and_line*) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i64) #1

declare dso_local i64 @MSYMBOL_TYPE(%struct.minimal_symbol*) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_text(i32, i32*) #1

declare dso_local i32 @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol*) #1

declare dso_local i64 @SYMBOL_VALUE(%struct.minimal_symbol*) #1

declare dso_local void @find_pc_line(%struct.symtab_and_line* sret, i64, i32) #1

declare dso_local %struct.symtab* @find_pc_sect_symtab(i64, %struct.bfd_section*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.blockvector* @BLOCKVECTOR(%struct.symtab*) #1

declare dso_local %struct.linetable* @LINETABLE(%struct.symtab*) #1

declare dso_local i8* @BLOCK_END(i32) #1

declare dso_local i32 @BLOCKVECTOR_BLOCK(%struct.blockvector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
