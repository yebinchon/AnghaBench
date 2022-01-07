; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_solib_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_solib_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.so_list = type { %struct.TYPE_3__, i64, %struct.so_list*, i32* }
%struct.TYPE_3__ = type { i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.target_ops = type { i32 }
%struct.minimal_symbol = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid regexp: %s\00", align 1
@symfile_objfile = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"$SHLIB_INFO$\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"__dld_flags\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Unable to find __dld_flags symbol in object file.\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Unable to read __dld_flags\0A\00", align 1
@DLD_FLAGS_LISTVALID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"__dld_list is not valid according to __dld_flags.\0A\00", align 1
@DLD_FLAGS_MAPPRIVATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [133 x i8] c"The shared libraries were not privately mapped; setting a\0Abreakpoint in a shared library will not work until you rerun the program.\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"__dld_list\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Unable to find dynamic library list.\0A\00", align 1
@so_list_head = common dso_local global %struct.so_list* null, align 8
@.str.10 = private unnamed_addr constant [43 x i8] c"Can't find file %s referenced in dld_list.\00", align 1
@som_solib_total_st_size = common dso_local global i32 0, align 4
@auto_solib_limit = common dso_local global i32 0, align 4
@som_solib_st_size_threshold_exceeded = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [275 x i8] c"Symbols for some libraries have not been loaded, because\0Adoing so would exceed the size threshold specified by auto-solib-limit.\0ATo manually load symbols, use the 'sharedlibrary' command.\0ATo raise the threshold, set auto-solib-limit to a larger value and rerun\0Athe program.\0A\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"Debugging dynamic executables loaded via the hpux8 dld.sl is not supported.\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"Error while reading dynamic library list.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @som_solib_add(i8* %0, i32 %1, %struct.target_ops* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.target_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.minimal_symbol*, align 8
  %10 = alloca %struct.so_list*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i8], align 1
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.so_list*, align 8
  %23 = alloca %struct.so_list*, align 8
  %24 = alloca %struct.stat, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.target_ops* %2, %struct.target_ops** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %17, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i8*, i8** %5, align 8
  br label %32

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i8* [ %30, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %31 ]
  %34 = call i8* @re_comp(i8* %33)
  store i8* %34, i8** %16, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %16, align 8
  %39 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @symfile_objfile, align 8
  %42 = icmp eq %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %546

44:                                               ; preds = %40
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @symfile_objfile, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @bfd_get_section_by_name(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %546

52:                                               ; preds = %44
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @symfile_objfile, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = call i64 @bfd_section_size(i32 %55, i32* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %546

60:                                               ; preds = %52
  %61 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* null)
  store %struct.minimal_symbol* %61, %struct.minimal_symbol** %9, align 8
  %62 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %63 = icmp eq %struct.minimal_symbol* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %546

66:                                               ; preds = %60
  %67 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %68 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %67)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %71 = call i32 @target_read_memory(i64 %69, i8* %70, i32 4)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %546

76:                                               ; preds = %66
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %78 = call i64 @extract_unsigned_integer(i8* %77, i32 4)
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @DLD_FLAGS_LISTVALID, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84
  br label %546

90:                                               ; preds = %76
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @DLD_FLAGS_MAPPRIVATE, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.7, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %90
  %98 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* null, i32* null)
  store %struct.minimal_symbol* %98, %struct.minimal_symbol** %9, align 8
  %99 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %100 = icmp ne %struct.minimal_symbol* %99, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %97
  %102 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* null)
  store %struct.minimal_symbol* %102, %struct.minimal_symbol** %9, align 8
  %103 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %104 = icmp ne %struct.minimal_symbol* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %546

107:                                              ; preds = %101
  %108 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %109 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %108)
  %110 = sub nsw i64 %109, 8
  store i64 %110, i64* %11, align 8
  br label %114

111:                                              ; preds = %97
  %112 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %113 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %112)
  store i64 %113, i64* %11, align 8
  br label %114

114:                                              ; preds = %111, %107
  %115 = load i64, i64* %11, align 8
  %116 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %117 = call i32 @target_read_memory(i64 %115, i8* %116, i32 4)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %546

122:                                              ; preds = %114
  %123 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %124 = call i64 @extract_unsigned_integer(i8* %123, i32 4)
  store i64 %124, i64* %11, align 8
  %125 = load i64, i64* %11, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %542

128:                                              ; preds = %122
  %129 = load i64, i64* %11, align 8
  %130 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %131 = call i32 @target_read_memory(i64 %129, i8* %130, i32 4)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %546

136:                                              ; preds = %128
  %137 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %138 = call i64 @extract_unsigned_integer(i8* %137, i32 4)
  store i64 %138, i64* %11, align 8
  %139 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  store %struct.so_list* %139, %struct.so_list** %10, align 8
  br label %140

140:                                              ; preds = %150, %136
  %141 = load %struct.so_list*, %struct.so_list** %10, align 8
  %142 = icmp ne %struct.so_list* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load %struct.so_list*, %struct.so_list** %10, align 8
  %145 = getelementptr inbounds %struct.so_list, %struct.so_list* %144, i32 0, i32 2
  %146 = load %struct.so_list*, %struct.so_list** %145, align 8
  %147 = icmp ne %struct.so_list* %146, null
  br label %148

148:                                              ; preds = %143, %140
  %149 = phi i1 [ false, %140 ], [ %147, %143 ]
  br i1 %149, label %150, label %154

150:                                              ; preds = %148
  %151 = load %struct.so_list*, %struct.so_list** %10, align 8
  %152 = getelementptr inbounds %struct.so_list, %struct.so_list* %151, i32 0, i32 2
  %153 = load %struct.so_list*, %struct.so_list** %152, align 8
  store %struct.so_list* %153, %struct.so_list** %10, align 8
  br label %140

154:                                              ; preds = %148
  br label %155

155:                                              ; preds = %154, %231, %293, %524, %530
  %156 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  store %struct.so_list* %156, %struct.so_list** %23, align 8
  %157 = load i64, i64* %11, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %540

160:                                              ; preds = %155
  %161 = load i64, i64* %11, align 8
  %162 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %163 = call i32 @target_read_memory(i64 %161, i8* %162, i32 4)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %544

167:                                              ; preds = %160
  %168 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %169 = call i64 @extract_unsigned_integer(i8* %168, i32 4)
  store i64 %169, i64* %18, align 8
  store i32 0, i32* %20, align 4
  br label %170

170:                                              ; preds = %167, %188
  %171 = load i64, i64* %18, align 8
  %172 = load i32, i32* %20, align 4
  %173 = zext i32 %172 to i64
  %174 = add nsw i64 %171, %173
  %175 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %176 = call i32 @target_read_memory(i64 %174, i8* %175, i32 1)
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %170
  br label %544

180:                                              ; preds = %170
  %181 = load i32, i32* %20, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %20, align 4
  %183 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  br label %189

188:                                              ; preds = %180
  br label %170

189:                                              ; preds = %187
  %190 = load i32, i32* %20, align 4
  %191 = call i8* @alloca(i32 %190)
  store i8* %191, i8** %21, align 8
  %192 = load i64, i64* %18, align 8
  %193 = load i8*, i8** %21, align 8
  %194 = load i32, i32* %20, align 4
  %195 = call i32 @target_read_memory(i64 %192, i8* %193, i32 %194)
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %13, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %189
  br label %544

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %212, %199
  %201 = load %struct.so_list*, %struct.so_list** %23, align 8
  %202 = icmp ne %struct.so_list* %201, null
  br i1 %202, label %203, label %216

203:                                              ; preds = %200
  %204 = load %struct.so_list*, %struct.so_list** %23, align 8
  %205 = getelementptr inbounds %struct.so_list, %struct.so_list* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = load i8*, i8** %21, align 8
  %209 = call i64 @strcmp(i8* %207, i8* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %203
  br label %216

212:                                              ; preds = %203
  %213 = load %struct.so_list*, %struct.so_list** %23, align 8
  %214 = getelementptr inbounds %struct.so_list, %struct.so_list* %213, i32 0, i32 2
  %215 = load %struct.so_list*, %struct.so_list** %214, align 8
  store %struct.so_list* %215, %struct.so_list** %23, align 8
  br label %200

216:                                              ; preds = %211, %200
  %217 = load i8*, i8** %21, align 8
  %218 = call i32 @stat(i8* %217, %struct.stat* %24)
  store i32 %218, i32* %13, align 4
  %219 = load i32, i32* %13, align 4
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %234

221:                                              ; preds = %216
  %222 = load i8*, i8** %21, align 8
  %223 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8* %222)
  %224 = load i64, i64* %11, align 8
  %225 = add nsw i64 %224, 36
  %226 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %227 = call i32 @target_read_memory(i64 %225, i8* %226, i32 4)
  store i32 %227, i32* %13, align 4
  %228 = load i32, i32* %13, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %221
  br label %544

231:                                              ; preds = %221
  %232 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %233 = call i64 @extract_unsigned_integer(i8* %232, i32 4)
  store i64 %233, i64* %11, align 8
  br label %155

234:                                              ; preds = %216
  %235 = load i8*, i8** %21, align 8
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** @symfile_objfile, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = call i64 @strcmp(i8* %235, i8* %238)
  %240 = icmp eq i64 %239, 0
  %241 = zext i1 %240 to i32
  store i32 %241, i32* %26, align 4
  %242 = load %struct.so_list*, %struct.so_list** %23, align 8
  %243 = icmp ne %struct.so_list* %242, null
  br i1 %243, label %247, label %244

244:                                              ; preds = %234
  %245 = load i32, i32* %26, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %294

247:                                              ; preds = %244, %234
  %248 = load i64, i64* %11, align 8
  %249 = add nsw i64 %248, 36
  %250 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %251 = call i32 @target_read_memory(i64 %249, i8* %250, i32 4)
  store i32 %251, i32* %13, align 4
  %252 = load i32, i32* %13, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %247
  br label %544

255:                                              ; preds = %247
  %256 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %257 = call i64 @extract_unsigned_integer(i8* %256, i32 4)
  store i64 %257, i64* %11, align 8
  %258 = load i32, i32* %26, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %255
  %261 = load %struct.so_list*, %struct.so_list** %23, align 8
  %262 = icmp ne %struct.so_list* %261, null
  br i1 %262, label %269, label %263

263:                                              ; preds = %260
  %264 = load i8*, i8** %21, align 8
  %265 = call i32 @som_solib_sizeof_symbol_table(i8* %264)
  store i32 %265, i32* %25, align 4
  %266 = load i32, i32* %25, align 4
  %267 = load i32, i32* @som_solib_total_st_size, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* @som_solib_total_st_size, align 4
  br label %269

269:                                              ; preds = %263, %260, %255
  %270 = load i32, i32* %6, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %293

272:                                              ; preds = %269
  %273 = load %struct.so_list*, %struct.so_list** %23, align 8
  %274 = icmp ne %struct.so_list* %273, null
  br i1 %274, label %275, label %293

275:                                              ; preds = %272
  %276 = load i32, i32* %26, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %293, label %278

278:                                              ; preds = %275
  %279 = load %struct.so_list*, %struct.so_list** %23, align 8
  %280 = getelementptr inbounds %struct.so_list, %struct.so_list* %279, i32 0, i32 3
  %281 = load i32*, i32** %280, align 8
  %282 = icmp eq i32* %281, null
  br i1 %282, label %283, label %293

283:                                              ; preds = %278
  %284 = load %struct.so_list*, %struct.so_list** %23, align 8
  %285 = load i8*, i8** %21, align 8
  %286 = load i32, i32* %6, align 4
  %287 = load %struct.so_list*, %struct.so_list** %23, align 8
  %288 = getelementptr inbounds %struct.so_list, %struct.so_list* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.target_ops*, %struct.target_ops** %7, align 8
  %292 = call i32 @som_solib_load_symbols(%struct.so_list* %284, i8* %285, i32 %286, i64 %290, %struct.target_ops* %291)
  br label %293

293:                                              ; preds = %283, %278, %275, %272, %269
  br label %155

294:                                              ; preds = %244
  %295 = load i8*, i8** %21, align 8
  %296 = load i32, i32* %20, align 4
  %297 = sub i32 %296, 1
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** @symfile_objfile, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 1
  %300 = call i8* @obsavestring(i8* %295, i32 %297, i32* %299)
  store i8* %300, i8** %21, align 8
  %301 = load i64, i64* %11, align 8
  %302 = add nsw i64 %301, 8
  %303 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %304 = call i32 @target_read_memory(i64 %302, i8* %303, i32 4)
  store i32 %304, i32* %13, align 4
  %305 = load i32, i32* %13, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %294
  br label %544

308:                                              ; preds = %294
  %309 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %310 = call i64 @extract_unsigned_integer(i8* %309, i32 4)
  store i64 %310, i64* %19, align 8
  %311 = call i64 @xmalloc(i32 88)
  %312 = inttoptr i64 %311 to %struct.so_list*
  store %struct.so_list* %312, %struct.so_list** %22, align 8
  %313 = load %struct.so_list*, %struct.so_list** %22, align 8
  %314 = bitcast %struct.so_list* %313 to i8*
  %315 = call i32 @memset(i8* %314, i32 0, i32 88)
  %316 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  %317 = icmp eq %struct.so_list* %316, null
  br i1 %317, label %318, label %321

318:                                              ; preds = %308
  %319 = load %struct.so_list*, %struct.so_list** %22, align 8
  store %struct.so_list* %319, %struct.so_list** @so_list_head, align 8
  %320 = load %struct.so_list*, %struct.so_list** %22, align 8
  store %struct.so_list* %320, %struct.so_list** %10, align 8
  br label %326

321:                                              ; preds = %308
  %322 = load %struct.so_list*, %struct.so_list** %22, align 8
  %323 = load %struct.so_list*, %struct.so_list** %10, align 8
  %324 = getelementptr inbounds %struct.so_list, %struct.so_list* %323, i32 0, i32 2
  store %struct.so_list* %322, %struct.so_list** %324, align 8
  %325 = load %struct.so_list*, %struct.so_list** %22, align 8
  store %struct.so_list* %325, %struct.so_list** %10, align 8
  br label %326

326:                                              ; preds = %321, %318
  %327 = load i64, i64* %11, align 8
  %328 = load %struct.so_list*, %struct.so_list** %22, align 8
  %329 = getelementptr inbounds %struct.so_list, %struct.so_list* %328, i32 0, i32 1
  store i64 %327, i64* %329, align 8
  %330 = load i8*, i8** %21, align 8
  %331 = load %struct.so_list*, %struct.so_list** %22, align 8
  %332 = getelementptr inbounds %struct.so_list, %struct.so_list* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 0
  store i8* %330, i8** %333, align 8
  %334 = load i64, i64* %11, align 8
  %335 = add nsw i64 %334, 4
  %336 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %337 = call i32 @target_read_memory(i64 %335, i8* %336, i32 4)
  store i32 %337, i32* %13, align 4
  %338 = load i32, i32* %13, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %326
  br label %544

341:                                              ; preds = %326
  %342 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %343 = getelementptr inbounds i8, i8* %342, i64 3
  %344 = call i64 @extract_unsigned_integer(i8* %343, i32 1)
  %345 = trunc i64 %344 to i32
  %346 = load %struct.so_list*, %struct.so_list** %22, align 8
  %347 = getelementptr inbounds %struct.so_list, %struct.so_list* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i32 0, i32 2
  store i32 %345, i32* %348, align 8
  %349 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %350 = getelementptr inbounds i8, i8* %349, i64 2
  %351 = call i64 @extract_unsigned_integer(i8* %350, i32 1)
  %352 = trunc i64 %351 to i32
  %353 = load %struct.so_list*, %struct.so_list** %22, align 8
  %354 = getelementptr inbounds %struct.so_list, %struct.so_list* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 3
  store i32 %352, i32* %355, align 4
  %356 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %357 = call i64 @extract_unsigned_integer(i8* %356, i32 2)
  %358 = trunc i64 %357 to i32
  %359 = load %struct.so_list*, %struct.so_list** %22, align 8
  %360 = getelementptr inbounds %struct.so_list, %struct.so_list* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i32 0, i32 4
  store i32 %358, i32* %361, align 8
  %362 = load i64, i64* %19, align 8
  %363 = load %struct.so_list*, %struct.so_list** %22, align 8
  %364 = getelementptr inbounds %struct.so_list, %struct.so_list* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 1
  store i64 %362, i64* %365, align 8
  %366 = load i64, i64* %11, align 8
  %367 = add nsw i64 %366, 12
  %368 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %369 = call i32 @target_read_memory(i64 %367, i8* %368, i32 4)
  store i32 %369, i32* %13, align 4
  %370 = load i32, i32* %13, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %341
  br label %544

373:                                              ; preds = %341
  %374 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %375 = call i64 @extract_unsigned_integer(i8* %374, i32 4)
  %376 = trunc i64 %375 to i32
  %377 = load %struct.so_list*, %struct.so_list** %22, align 8
  %378 = getelementptr inbounds %struct.so_list, %struct.so_list* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 5
  store i32 %376, i32* %379, align 4
  %380 = load i64, i64* %11, align 8
  %381 = add nsw i64 %380, 16
  %382 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %383 = call i32 @target_read_memory(i64 %381, i8* %382, i32 4)
  store i32 %383, i32* %13, align 4
  %384 = load i32, i32* %13, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %373
  br label %544

387:                                              ; preds = %373
  %388 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %389 = call i64 @extract_unsigned_integer(i8* %388, i32 4)
  %390 = trunc i64 %389 to i32
  %391 = load %struct.so_list*, %struct.so_list** %22, align 8
  %392 = getelementptr inbounds %struct.so_list, %struct.so_list* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i32 0, i32 6
  store i32 %390, i32* %393, align 8
  %394 = load i64, i64* %11, align 8
  %395 = add nsw i64 %394, 20
  %396 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %397 = call i32 @target_read_memory(i64 %395, i8* %396, i32 4)
  store i32 %397, i32* %13, align 4
  %398 = load i32, i32* %13, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %387
  br label %544

401:                                              ; preds = %387
  %402 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %403 = call i64 @extract_unsigned_integer(i8* %402, i32 4)
  %404 = trunc i64 %403 to i32
  %405 = load %struct.so_list*, %struct.so_list** %22, align 8
  %406 = getelementptr inbounds %struct.so_list, %struct.so_list* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i32 0, i32 7
  store i32 %404, i32* %407, align 4
  %408 = load i64, i64* %11, align 8
  %409 = add nsw i64 %408, 24
  %410 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %411 = call i32 @target_read_memory(i64 %409, i8* %410, i32 4)
  store i32 %411, i32* %13, align 4
  %412 = load i32, i32* %13, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %401
  br label %544

415:                                              ; preds = %401
  %416 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %417 = call i64 @extract_unsigned_integer(i8* %416, i32 4)
  %418 = trunc i64 %417 to i32
  %419 = load %struct.so_list*, %struct.so_list** %22, align 8
  %420 = getelementptr inbounds %struct.so_list, %struct.so_list* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %420, i32 0, i32 8
  store i32 %418, i32* %421, align 8
  %422 = load i64, i64* %11, align 8
  %423 = add nsw i64 %422, 28
  %424 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %425 = call i32 @target_read_memory(i64 %423, i8* %424, i32 4)
  store i32 %425, i32* %13, align 4
  %426 = load i32, i32* %13, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %429

428:                                              ; preds = %415
  br label %544

429:                                              ; preds = %415
  %430 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %431 = call i64 @extract_unsigned_integer(i8* %430, i32 4)
  %432 = trunc i64 %431 to i32
  %433 = load %struct.so_list*, %struct.so_list** %22, align 8
  %434 = getelementptr inbounds %struct.so_list, %struct.so_list* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %434, i32 0, i32 9
  store i32 %432, i32* %435, align 4
  %436 = load i64, i64* %11, align 8
  %437 = add nsw i64 %436, 32
  %438 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %439 = call i32 @target_read_memory(i64 %437, i8* %438, i32 4)
  store i32 %439, i32* %13, align 4
  %440 = load i32, i32* %13, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %429
  br label %544

443:                                              ; preds = %429
  %444 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %445 = call i64 @extract_unsigned_integer(i8* %444, i32 4)
  %446 = trunc i64 %445 to i32
  %447 = load %struct.so_list*, %struct.so_list** %22, align 8
  %448 = getelementptr inbounds %struct.so_list, %struct.so_list* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %448, i32 0, i32 10
  store i32 %446, i32* %449, align 8
  %450 = load i64, i64* %11, align 8
  %451 = add nsw i64 %450, 36
  %452 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %453 = call i32 @target_read_memory(i64 %451, i8* %452, i32 4)
  store i32 %453, i32* %13, align 4
  %454 = load i32, i32* %13, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %443
  br label %544

457:                                              ; preds = %443
  %458 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %459 = call i64 @extract_unsigned_integer(i8* %458, i32 4)
  %460 = call i32 @hpux_address_to_host_pointer_hack(i64 %459)
  %461 = load %struct.so_list*, %struct.so_list** %22, align 8
  %462 = getelementptr inbounds %struct.so_list, %struct.so_list* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %462, i32 0, i32 11
  store i32 %460, i32* %463, align 4
  %464 = load i64, i64* %11, align 8
  %465 = add nsw i64 %464, 40
  %466 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %467 = call i32 @target_read_memory(i64 %465, i8* %466, i32 4)
  store i32 %467, i32* %13, align 4
  %468 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %469 = call i64 @extract_unsigned_integer(i8* %468, i32 4)
  %470 = load %struct.so_list*, %struct.so_list** %22, align 8
  %471 = getelementptr inbounds %struct.so_list, %struct.so_list* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %471, i32 0, i32 12
  store i64 %469, i64* %472, align 8
  %473 = load i32, i32* %13, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %476

475:                                              ; preds = %457
  br label %544

476:                                              ; preds = %457
  %477 = load %struct.so_list*, %struct.so_list** %22, align 8
  %478 = getelementptr inbounds %struct.so_list, %struct.so_list* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %478, i32 0, i32 12
  %480 = load i64, i64* %479, align 8
  %481 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %482 = call i32 @target_read_memory(i64 %480, i8* %481, i32 4)
  store i32 %482, i32* %13, align 4
  %483 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %484 = call i64 @extract_unsigned_integer(i8* %483, i32 4)
  %485 = load %struct.so_list*, %struct.so_list** %22, align 8
  %486 = getelementptr inbounds %struct.so_list, %struct.so_list* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %486, i32 0, i32 12
  store i64 %484, i64* %487, align 8
  %488 = load i32, i32* %13, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %491

490:                                              ; preds = %476
  br label %544

491:                                              ; preds = %476
  %492 = load %struct.so_list*, %struct.so_list** %22, align 8
  %493 = getelementptr inbounds %struct.so_list, %struct.so_list* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %493, i32 0, i32 11
  %495 = load i32, i32* %494, align 4
  %496 = sext i32 %495 to i64
  store i64 %496, i64* %11, align 8
  %497 = load i8*, i8** %21, align 8
  %498 = call i32 @som_solib_sizeof_symbol_table(i8* %497)
  store i32 %498, i32* %25, align 4
  %499 = load i32, i32* %6, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %514, label %501

501:                                              ; preds = %491
  %502 = load i32, i32* @auto_solib_limit, align 4
  %503 = icmp sgt i32 %502, 0
  br i1 %503, label %504, label %514

504:                                              ; preds = %501
  %505 = load i32, i32* %8, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %514

507:                                              ; preds = %504
  %508 = load i32, i32* %25, align 4
  %509 = load i32, i32* @som_solib_total_st_size, align 4
  %510 = add nsw i32 %508, %509
  %511 = load i32, i32* @auto_solib_limit, align 4
  %512 = mul nsw i32 %511, 1048576
  %513 = icmp sgt i32 %510, %512
  br label %514

514:                                              ; preds = %507, %504, %501, %491
  %515 = phi i1 [ false, %504 ], [ false, %501 ], [ false, %491 ], [ %513, %507 ]
  %516 = zext i1 %515 to i32
  store i32 %516, i32* @som_solib_st_size_threshold_exceeded, align 4
  %517 = load i32, i32* @som_solib_st_size_threshold_exceeded, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %530

519:                                              ; preds = %514
  %520 = load i32, i32* %17, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %524, label %522

522:                                              ; preds = %519
  %523 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.11, i64 0, i64 0))
  br label %524

524:                                              ; preds = %522, %519
  store i32 1, i32* %17, align 4
  %525 = load %struct.so_list*, %struct.so_list** %22, align 8
  %526 = load i8*, i8** %21, align 8
  %527 = load i32, i32* %6, align 4
  %528 = load i64, i64* %19, align 8
  %529 = call i32 @som_solib_add_solib_objfile(%struct.so_list* %525, i8* %526, i32 %527, i64 %528)
  br label %155

530:                                              ; preds = %514
  %531 = load i32, i32* %25, align 4
  %532 = load i32, i32* @som_solib_total_st_size, align 4
  %533 = add nsw i32 %532, %531
  store i32 %533, i32* @som_solib_total_st_size, align 4
  %534 = load %struct.so_list*, %struct.so_list** %22, align 8
  %535 = load i8*, i8** %21, align 8
  %536 = load i32, i32* %6, align 4
  %537 = load i64, i64* %19, align 8
  %538 = load %struct.target_ops*, %struct.target_ops** %7, align 8
  %539 = call i32 @som_solib_load_symbols(%struct.so_list* %534, i8* %535, i32 %536, i64 %537, %struct.target_ops* %538)
  br label %155

540:                                              ; preds = %159
  %541 = call i32 (...) @reinit_frame_cache()
  br label %546

542:                                              ; preds = %127
  %543 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.12, i64 0, i64 0))
  br label %546

544:                                              ; preds = %490, %475, %456, %442, %428, %414, %400, %386, %372, %340, %307, %254, %230, %198, %179, %166
  %545 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  br label %546

546:                                              ; preds = %544, %542, %540, %134, %120, %105, %89, %74, %64, %59, %51, %43
  ret void
}

declare dso_local i8* @re_comp(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i64 @bfd_section_size(i32, i32*) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i8*, i32*, i32*) #1

declare dso_local i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i32 @target_read_memory(i64, i8*, i32) #1

declare dso_local i64 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @som_solib_sizeof_symbol_table(i8*) #1

declare dso_local i32 @som_solib_load_symbols(%struct.so_list*, i8*, i32, i64, %struct.target_ops*) #1

declare dso_local i8* @obsavestring(i8*, i32, i32*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @hpux_address_to_host_pointer_hack(i64) #1

declare dso_local i32 @som_solib_add_solib_objfile(%struct.so_list*, i8*, i32, i64) #1

declare dso_local i32 @reinit_frame_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
