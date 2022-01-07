; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_gdbarch_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_gdbarch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.gdbarch_list = type { %struct.gdbarch*, %struct.gdbarch_list* }
%struct.gdbarch_info = type { %struct.TYPE_8__*, %struct.TYPE_11__* }
%struct.gdbarch_tdep = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.reg = type { i32 }
%struct.variant = type { i32, i64, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64* }

@bfd_object = common dso_local global i64 0, align 8
@bfd_target_xcoff_flavour = common dso_local global i64 0, align 8
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@EI_CLASS = common dso_local global i64 0, align 8
@ELFCLASS64 = common dso_local global i64 0, align 8
@bfd_arch_powerpc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c".PPC.EMB.apuinfo\00", align 1
@bfd_arch_rs6000 = common dso_local global i32 0, align 4
@bfd_mach_ppc_601 = common dso_local global i32 0, align 4
@ppc64_sysv_abi_return_value = common dso_local global i32 0, align 4
@ppc_sysv_abi_return_value = common dso_local global i32 0, align 4
@rs6000_extract_return_value = common dso_local global i32 0, align 4
@rs6000_store_return_value = common dso_local global i32 0, align 4
@e500_dwarf2_reg_to_regnum = common dso_local global i32 0, align 4
@e500_pseudo_register_read = common dso_local global i32 0, align 4
@e500_pseudo_register_write = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"r0\00", align 1
@print_insn_rs6000 = common dso_local global i32 0, align 4
@gdb_print_insn_powerpc = common dso_local global i32 0, align 4
@generic_target_write_pc = common dso_local global i32 0, align 4
@rs6000_register_name = common dso_local global i32 0, align 4
@rs6000_register_byte = common dso_local global i32 0, align 4
@rs6000_register_raw_size = common dso_local global i32 0, align 4
@rs6000_register_virtual_type = common dso_local global i32 0, align 4
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@rs6000_frame_align = common dso_local global i32 0, align 4
@generic_save_dummy_frame_tos = common dso_local global i32 0, align 4
@rs6000_register_convertible = common dso_local global i32 0, align 4
@rs6000_register_convert_to_virtual = common dso_local global i32 0, align 4
@rs6000_register_convert_to_raw = common dso_local global i32 0, align 4
@rs6000_stab_reg_to_regnum = common dso_local global i32 0, align 4
@ppc_sysv_abi_push_dummy_call = common dso_local global i32 0, align 4
@ppc64_sysv_abi_push_dummy_call = common dso_local global i32 0, align 4
@rs6000_push_dummy_call = common dso_local global i32 0, align 4
@rs6000_extract_struct_value_address = common dso_local global i32 0, align 4
@rs6000_pop_frame = common dso_local global i32 0, align 4
@rs6000_skip_prologue = common dso_local global i32 0, align 4
@core_addr_lessthan = common dso_local global i32 0, align 4
@rs6000_breakpoint_from_pc = common dso_local global i32 0, align 4
@ppc64_sysv_abi_adjust_breakpoint_address = common dso_local global i32 0, align 4
@rs6000_use_struct_convention = common dso_local global i32 0, align 4
@rs6000_frameless_function_invocation = common dso_local global i32 0, align 4
@rs6000_frame_chain = common dso_local global i32 0, align 4
@rs6000_frame_saved_pc = common dso_local global i32 0, align 4
@rs6000_frame_init_saved_regs = common dso_local global i32 0, align 4
@rs6000_init_extra_frame_info = common dso_local global i32 0, align 4
@rs6000_convert_from_func_ptr_addr = common dso_local global i32 0, align 4
@rs6000_frame_args_address = common dso_local global i32 0, align 4
@rs6000_saved_pc_after_call = common dso_local global i32 0, align 4
@rs6000_fetch_pointer_argument = common dso_local global i32 0, align 4
@rs6000_software_single_step = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gdbarch* (%struct.TYPE_8__*, %struct.TYPE_11__*, %struct.gdbarch_list*)* @rs6000_gdbarch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gdbarch* @rs6000_gdbarch_init(%struct.TYPE_8__* %0, %struct.TYPE_11__* %1, %struct.gdbarch_list* %2) #0 {
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.gdbarch_info, align 8
  %6 = alloca %struct.gdbarch_list*, align 8
  %7 = alloca %struct.gdbarch*, align 8
  %8 = alloca %struct.gdbarch_tdep*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.reg*, align 8
  %16 = alloca %struct.variant*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = bitcast %struct.gdbarch_info* %5 to { %struct.TYPE_8__*, %struct.TYPE_11__* }*
  %23 = getelementptr inbounds { %struct.TYPE_8__*, %struct.TYPE_11__* }, { %struct.TYPE_8__*, %struct.TYPE_11__* }* %22, i32 0, i32 0
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %23, align 8
  %24 = getelementptr inbounds { %struct.TYPE_8__*, %struct.TYPE_11__* }, { %struct.TYPE_8__*, %struct.TYPE_11__* }* %22, i32 0, i32 1
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %24, align 8
  store %struct.gdbarch_list* %2, %struct.gdbarch_list** %6, align 8
  %25 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @bfd_object, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = call i64 @bfd_get_flavour(%struct.TYPE_11__* %37)
  %39 = load i64, i64* @bfd_target_xcoff_flavour, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %35, %28, %3
  %42 = phi i1 [ false, %28 ], [ false, %3 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = icmp ne %struct.TYPE_11__* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @bfd_object, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = call i64 @bfd_get_flavour(%struct.TYPE_11__* %56)
  %58 = load i64, i64* @bfd_target_elf_flavour, align 8
  %59 = icmp eq i64 %57, %58
  br label %60

60:                                               ; preds = %54, %47, %41
  %61 = phi i1 [ false, %47 ], [ false, %41 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = icmp ne %struct.TYPE_11__* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = call i64 @bfd_get_flavour(%struct.TYPE_11__* %68)
  %70 = load i64, i64* @bfd_target_elf_flavour, align 8
  %71 = icmp eq i64 %69, %70
  br label %72

72:                                               ; preds = %66, %60
  %73 = phi i1 [ false, %60 ], [ %71, %66 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = call i64 @bfd_xcoff_is_xcoff64(%struct.TYPE_11__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 8, i32* %9, align 4
  br label %84

83:                                               ; preds = %77
  store i32 4, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %82
  br label %125

85:                                               ; preds = %72
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = call %struct.TYPE_10__* @elf_elfheader(%struct.TYPE_11__* %90)
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* @EI_CLASS, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ELFCLASS64, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  store i32 8, i32* %9, align 4
  br label %101

100:                                              ; preds = %88
  store i32 4, i32* %9, align 4
  br label %101

101:                                              ; preds = %100, %99
  br label %124

102:                                              ; preds = %85
  %103 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = icmp ne %struct.TYPE_8__* %104, null
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sdiv i32 %116, %120
  store i32 %121, i32* %9, align 4
  br label %123

122:                                              ; preds = %106, %102
  store i32 4, i32* %9, align 4
  br label %123

123:                                              ; preds = %122, %112
  br label %124

124:                                              ; preds = %123, %101
  br label %125

125:                                              ; preds = %124, %84
  %126 = load %struct.gdbarch_list*, %struct.gdbarch_list** %6, align 8
  %127 = call %struct.gdbarch_list* @gdbarch_list_lookup_by_info(%struct.gdbarch_list* %126, %struct.gdbarch_info* %5)
  store %struct.gdbarch_list* %127, %struct.gdbarch_list** %6, align 8
  br label %128

128:                                              ; preds = %149, %125
  %129 = load %struct.gdbarch_list*, %struct.gdbarch_list** %6, align 8
  %130 = icmp ne %struct.gdbarch_list* %129, null
  br i1 %130, label %131, label %154

131:                                              ; preds = %128
  %132 = load %struct.gdbarch_list*, %struct.gdbarch_list** %6, align 8
  %133 = getelementptr inbounds %struct.gdbarch_list, %struct.gdbarch_list* %132, i32 0, i32 0
  %134 = load %struct.gdbarch*, %struct.gdbarch** %133, align 8
  %135 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %134)
  store %struct.gdbarch_tdep* %135, %struct.gdbarch_tdep** %8, align 8
  %136 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %137 = icmp ne %struct.gdbarch_tdep* %136, null
  br i1 %137, label %138, label %148

138:                                              ; preds = %131
  %139 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %140 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load %struct.gdbarch_list*, %struct.gdbarch_list** %6, align 8
  %146 = getelementptr inbounds %struct.gdbarch_list, %struct.gdbarch_list* %145, i32 0, i32 0
  %147 = load %struct.gdbarch*, %struct.gdbarch** %146, align 8
  store %struct.gdbarch* %147, %struct.gdbarch** %4, align 8
  br label %692

148:                                              ; preds = %138, %131
  br label %149

149:                                              ; preds = %148
  %150 = load %struct.gdbarch_list*, %struct.gdbarch_list** %6, align 8
  %151 = getelementptr inbounds %struct.gdbarch_list, %struct.gdbarch_list* %150, i32 0, i32 1
  %152 = load %struct.gdbarch_list*, %struct.gdbarch_list** %151, align 8
  %153 = call %struct.gdbarch_list* @gdbarch_list_lookup_by_info(%struct.gdbarch_list* %152, %struct.gdbarch_info* %5)
  store %struct.gdbarch_list* %153, %struct.gdbarch_list** %6, align 8
  br label %128

154:                                              ; preds = %128
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 0
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %17, align 4
  %162 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 0
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %18, align 8
  br label %178

166:                                              ; preds = %154
  %167 = load i64, i64* @bfd_arch_powerpc, align 8
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %17, align 4
  %169 = load i32, i32* %17, align 4
  %170 = call i32 @bfd_default_set_arch_mach(i32* %19, i32 %169, i64 0)
  %171 = call i8* @bfd_get_arch_info(i32* %19)
  %172 = bitcast i8* %171 to %struct.TYPE_8__*
  %173 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 0
  store %struct.TYPE_8__* %172, %struct.TYPE_8__** %173, align 8
  %174 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 0
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %18, align 8
  br label %178

178:                                              ; preds = %166, %157
  %179 = call i8* @xmalloc(i32 80)
  %180 = bitcast i8* %179 to %struct.gdbarch_tdep*
  store %struct.gdbarch_tdep* %180, %struct.gdbarch_tdep** %8, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %183 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 1
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = icmp ne %struct.TYPE_11__* %185, null
  br i1 %186, label %187, label %205

187:                                              ; preds = %178
  %188 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 1
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = call i32* @bfd_get_section_by_name(%struct.TYPE_11__* %189, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* %190, i32** %21, align 8
  %191 = load i32*, i32** %21, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %204

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 0
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  store i32 %197, i32* %17, align 4
  store i64 128, i64* %18, align 8
  %198 = load i32, i32* %17, align 4
  %199 = load i64, i64* %18, align 8
  %200 = call i32 @bfd_default_set_arch_mach(i32* %19, i32 %198, i64 %199)
  %201 = call i8* @bfd_get_arch_info(i32* %19)
  %202 = bitcast i8* %201 to %struct.TYPE_8__*
  %203 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 0
  store %struct.TYPE_8__* %202, %struct.TYPE_8__** %203, align 8
  br label %204

204:                                              ; preds = %193, %187
  br label %205

205:                                              ; preds = %204, %178
  %206 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %207 = call %struct.gdbarch* @gdbarch_alloc(%struct.gdbarch_info* %5, %struct.gdbarch_tdep* %206)
  store %struct.gdbarch* %207, %struct.gdbarch** %7, align 8
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* @bfd_arch_rs6000, align 4
  %210 = icmp eq i32 %208, %209
  %211 = zext i1 %210 to i32
  store i32 %211, i32* %12, align 4
  %212 = call i32 (...) @init_variants()
  %213 = load i32, i32* %17, align 4
  %214 = load i64, i64* %18, align 8
  %215 = call %struct.variant* @find_variant_by_arch(i32 %213, i64 %214)
  store %struct.variant* %215, %struct.variant** %16, align 8
  %216 = load %struct.variant*, %struct.variant** %16, align 8
  %217 = icmp ne %struct.variant* %216, null
  br i1 %217, label %219, label %218

218:                                              ; preds = %205
  store %struct.gdbarch* null, %struct.gdbarch** %4, align 8
  br label %692

219:                                              ; preds = %205
  %220 = load %struct.variant*, %struct.variant** %16, align 8
  %221 = getelementptr inbounds %struct.variant, %struct.variant* %220, i32 0, i32 5
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %224 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %223, i32 0, i32 17
  store %struct.TYPE_9__* %222, %struct.TYPE_9__** %224, align 8
  %225 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %226 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %225, i32 0, i32 1
  store i32 0, i32* %226, align 4
  %227 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %228 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %227, i32 0, i32 2
  store i32 31, i32* %228, align 8
  %229 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %230 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %229, i32 0, i32 3
  store i32 2, i32* %230, align 4
  %231 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %232 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %231, i32 0, i32 4
  store i32 65, i32* %232, align 8
  %233 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %234 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %233, i32 0, i32 5
  store i32 66, i32* %234, align 4
  %235 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %236 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %235, i32 0, i32 6
  store i32 67, i32* %236, align 8
  %237 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %238 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %237, i32 0, i32 7
  store i32 68, i32* %238, align 4
  %239 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %240 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %239, i32 0, i32 8
  store i32 69, i32* %240, align 8
  %241 = load %struct.variant*, %struct.variant** %16, align 8
  %242 = getelementptr inbounds %struct.variant, %struct.variant* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @bfd_mach_ppc_601, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %219
  %247 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %248 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %247, i32 0, i32 9
  store i32 124, i32* %248, align 4
  br label %259

249:                                              ; preds = %219
  %250 = load i32, i32* %12, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %254 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %253, i32 0, i32 9
  store i32 70, i32* %254, align 4
  br label %258

255:                                              ; preds = %249
  %256 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %257 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %256, i32 0, i32 9
  store i32 -1, i32* %257, align 4
  br label %258

258:                                              ; preds = %255, %252
  br label %259

259:                                              ; preds = %258, %246
  %260 = load i32, i32* %12, align 4
  %261 = icmp ne i32 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 71, i32 70
  %264 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %265 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %264, i32 0, i32 10
  store i32 %263, i32* %265, align 8
  %266 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %267 = call i32 @set_gdbarch_pc_regnum(%struct.gdbarch* %266, i32 64)
  %268 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %269 = call i32 @set_gdbarch_sp_regnum(%struct.gdbarch* %268, i32 1)
  %270 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %271 = call i32 @set_gdbarch_deprecated_fp_regnum(%struct.gdbarch* %270, i32 1)
  %272 = load i32, i32* %20, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %259
  %275 = load i32, i32* %9, align 4
  %276 = icmp eq i32 %275, 8
  br i1 %276, label %277, label %281

277:                                              ; preds = %274
  %278 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %279 = load i32, i32* @ppc64_sysv_abi_return_value, align 4
  %280 = call i32 @set_gdbarch_return_value(%struct.gdbarch* %278, i32 %279)
  br label %299

281:                                              ; preds = %274, %259
  %282 = load i32, i32* %20, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %281
  %285 = load i32, i32* %9, align 4
  %286 = icmp eq i32 %285, 4
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %289 = load i32, i32* @ppc_sysv_abi_return_value, align 4
  %290 = call i32 @set_gdbarch_return_value(%struct.gdbarch* %288, i32 %289)
  br label %298

291:                                              ; preds = %284, %281
  %292 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %293 = load i32, i32* @rs6000_extract_return_value, align 4
  %294 = call i32 @set_gdbarch_deprecated_extract_return_value(%struct.gdbarch* %292, i32 %293)
  %295 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %296 = load i32, i32* @rs6000_store_return_value, align 4
  %297 = call i32 @set_gdbarch_deprecated_store_return_value(%struct.gdbarch* %295, i32 %296)
  br label %298

298:                                              ; preds = %291, %287
  br label %299

299:                                              ; preds = %298, %277
  %300 = load %struct.variant*, %struct.variant** %16, align 8
  %301 = getelementptr inbounds %struct.variant, %struct.variant* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @bfd_arch_powerpc, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %386

305:                                              ; preds = %299
  %306 = load %struct.variant*, %struct.variant** %16, align 8
  %307 = getelementptr inbounds %struct.variant, %struct.variant* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  switch i32 %308, label %376 [
    i32 130, label %309
    i32 129, label %318
    i32 128, label %327
  ]

309:                                              ; preds = %305
  %310 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %311 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %310, i32 0, i32 11
  store i32 71, i32* %311, align 4
  %312 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %313 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %312, i32 0, i32 12
  store i32 104, i32* %313, align 8
  %314 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %315 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %314, i32 0, i32 13
  store i32 -1, i32* %315, align 4
  %316 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %317 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %316, i32 0, i32 14
  store i32 -1, i32* %317, align 8
  br label %385

318:                                              ; preds = %305
  %319 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %320 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %319, i32 0, i32 11
  store i32 119, i32* %320, align 4
  %321 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %322 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %321, i32 0, i32 12
  store i32 152, i32* %322, align 8
  %323 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %324 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %323, i32 0, i32 13
  store i32 -1, i32* %324, align 4
  %325 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %326 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %325, i32 0, i32 14
  store i32 -1, i32* %326, align 8
  br label %385

327:                                              ; preds = %305
  %328 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %329 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %328, i32 0, i32 1
  store i32 41, i32* %329, align 4
  %330 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %331 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, 32
  %334 = sub nsw i32 %333, 1
  %335 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %336 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %335, i32 0, i32 2
  store i32 %334, i32* %336, align 8
  %337 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %338 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %337, i32 0, i32 3
  store i32 -1, i32* %338, align 4
  %339 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %340 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %339, i32 0, i32 4
  store i32 1, i32* %340, align 8
  %341 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %342 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %341, i32 0, i32 5
  store i32 2, i32* %342, align 4
  %343 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %344 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %343, i32 0, i32 6
  store i32 3, i32* %344, align 8
  %345 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %346 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %345, i32 0, i32 7
  store i32 4, i32* %346, align 4
  %347 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %348 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %347, i32 0, i32 8
  store i32 5, i32* %348, align 8
  %349 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %350 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %349, i32 0, i32 13
  store i32 7, i32* %350, align 4
  %351 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %352 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %351, i32 0, i32 14
  store i32 38, i32* %352, align 8
  %353 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %354 = call i32 @set_gdbarch_pc_regnum(%struct.gdbarch* %353, i32 0)
  %355 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %356 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %357 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %358, 1
  %360 = call i32 @set_gdbarch_sp_regnum(%struct.gdbarch* %355, i32 %359)
  %361 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %362 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %363 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = add nsw i32 %364, 1
  %366 = call i32 @set_gdbarch_deprecated_fp_regnum(%struct.gdbarch* %361, i32 %365)
  %367 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %368 = load i32, i32* @e500_dwarf2_reg_to_regnum, align 4
  %369 = call i32 @set_gdbarch_dwarf2_reg_to_regnum(%struct.gdbarch* %367, i32 %368)
  %370 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %371 = load i32, i32* @e500_pseudo_register_read, align 4
  %372 = call i32 @set_gdbarch_pseudo_register_read(%struct.gdbarch* %370, i32 %371)
  %373 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %374 = load i32, i32* @e500_pseudo_register_write, align 4
  %375 = call i32 @set_gdbarch_pseudo_register_write(%struct.gdbarch* %373, i32 %374)
  br label %385

376:                                              ; preds = %305
  %377 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %378 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %377, i32 0, i32 11
  store i32 -1, i32* %378, align 4
  %379 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %380 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %379, i32 0, i32 12
  store i32 -1, i32* %380, align 8
  %381 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %382 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %381, i32 0, i32 13
  store i32 -1, i32* %382, align 4
  %383 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %384 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %383, i32 0, i32 14
  store i32 -1, i32* %384, align 8
  br label %385

385:                                              ; preds = %376, %327, %318, %309
  br label %386

386:                                              ; preds = %385, %299
  %387 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %388 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %387, i32 0, i32 17
  %389 = load %struct.TYPE_9__*, %struct.TYPE_9__** %388, align 8
  %390 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %391 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = call i64 @strcmp(i32 %396, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %398 = icmp eq i64 %397, 0
  %399 = zext i1 %398 to i32
  %400 = call i32 @gdb_assert(i32 %399)
  %401 = load i32, i32* %9, align 4
  %402 = icmp eq i32 %401, 8
  br i1 %402, label %403, label %406

403:                                              ; preds = %386
  %404 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %405 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %404, i32 0, i32 15
  store i32 16, i32* %405, align 4
  br label %416

406:                                              ; preds = %386
  %407 = load i32, i32* %20, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %406
  %410 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %411 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %410, i32 0, i32 15
  store i32 4, i32* %411, align 4
  br label %415

412:                                              ; preds = %406
  %413 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %414 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %413, i32 0, i32 15
  store i32 8, i32* %414, align 4
  br label %415

415:                                              ; preds = %412, %409
  br label %416

416:                                              ; preds = %415, %403
  %417 = load %struct.variant*, %struct.variant** %16, align 8
  %418 = getelementptr inbounds %struct.variant, %struct.variant* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = sext i32 %419 to i64
  %421 = mul i64 %420, 4
  %422 = trunc i64 %421 to i32
  %423 = call i8* @xmalloc(i32 %422)
  %424 = bitcast i8* %423 to i32*
  %425 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %426 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %425, i32 0, i32 16
  store i32* %424, i32** %426, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %427

427:                                              ; preds = %453, %416
  %428 = load i32, i32* %13, align 4
  %429 = load %struct.variant*, %struct.variant** %16, align 8
  %430 = getelementptr inbounds %struct.variant, %struct.variant* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 8
  %432 = icmp slt i32 %428, %431
  br i1 %432, label %433, label %456

433:                                              ; preds = %427
  %434 = load i32, i32* %14, align 4
  %435 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %436 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %435, i32 0, i32 16
  %437 = load i32*, i32** %436, align 8
  %438 = load i32, i32* %13, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %437, i64 %439
  store i32 %434, i32* %440, align 4
  %441 = load %struct.variant*, %struct.variant** %16, align 8
  %442 = getelementptr inbounds %struct.variant, %struct.variant* %441, i32 0, i32 5
  %443 = load %struct.TYPE_9__*, %struct.TYPE_9__** %442, align 8
  %444 = load i32, i32* %13, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %443, i64 %445
  %447 = load i32, i32* %9, align 4
  %448 = call i64 @regsize(%struct.TYPE_9__* %446, i32 %447)
  %449 = load i32, i32* %14, align 4
  %450 = sext i32 %449 to i64
  %451 = add nsw i64 %450, %448
  %452 = trunc i64 %451 to i32
  store i32 %452, i32* %14, align 4
  br label %453

453:                                              ; preds = %433
  %454 = load i32, i32* %13, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %13, align 4
  br label %427

456:                                              ; preds = %427
  %457 = load i32, i32* %17, align 4
  %458 = load i32, i32* %12, align 4
  %459 = icmp eq i32 %457, %458
  br i1 %459, label %460, label %464

460:                                              ; preds = %456
  %461 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %462 = load i32, i32* @print_insn_rs6000, align 4
  %463 = call i32 @set_gdbarch_print_insn(%struct.gdbarch* %461, i32 %462)
  br label %468

464:                                              ; preds = %456
  %465 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %466 = load i32, i32* @gdb_print_insn_powerpc, align 4
  %467 = call i32 @set_gdbarch_print_insn(%struct.gdbarch* %465, i32 %466)
  br label %468

468:                                              ; preds = %464, %460
  %469 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %470 = load i32, i32* @generic_target_write_pc, align 4
  %471 = call i32 @set_gdbarch_write_pc(%struct.gdbarch* %469, i32 %470)
  %472 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %473 = load %struct.variant*, %struct.variant** %16, align 8
  %474 = getelementptr inbounds %struct.variant, %struct.variant* %473, i32 0, i32 4
  %475 = load i32, i32* %474, align 8
  %476 = call i32 @set_gdbarch_num_regs(%struct.gdbarch* %472, i32 %475)
  %477 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %478 = load %struct.variant*, %struct.variant** %16, align 8
  %479 = getelementptr inbounds %struct.variant, %struct.variant* %478, i32 0, i32 3
  %480 = load i32, i32* %479, align 4
  %481 = call i32 @set_gdbarch_num_pseudo_regs(%struct.gdbarch* %477, i32 %480)
  %482 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %483 = load i32, i32* @rs6000_register_name, align 4
  %484 = call i32 @set_gdbarch_register_name(%struct.gdbarch* %482, i32 %483)
  %485 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %486 = load i32, i32* %9, align 4
  %487 = call i32 @set_gdbarch_deprecated_register_size(%struct.gdbarch* %485, i32 %486)
  %488 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %489 = load i32, i32* %14, align 4
  %490 = call i32 @set_gdbarch_deprecated_register_bytes(%struct.gdbarch* %488, i32 %489)
  %491 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %492 = load i32, i32* @rs6000_register_byte, align 4
  %493 = call i32 @set_gdbarch_deprecated_register_byte(%struct.gdbarch* %491, i32 %492)
  %494 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %495 = load i32, i32* @rs6000_register_raw_size, align 4
  %496 = call i32 @set_gdbarch_deprecated_register_raw_size(%struct.gdbarch* %494, i32 %495)
  %497 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %498 = load i32, i32* @rs6000_register_virtual_type, align 4
  %499 = call i32 @set_gdbarch_deprecated_register_virtual_type(%struct.gdbarch* %497, i32 %498)
  %500 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %501 = load i32, i32* %9, align 4
  %502 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %503 = mul nsw i32 %501, %502
  %504 = call i32 @set_gdbarch_ptr_bit(%struct.gdbarch* %500, i32 %503)
  %505 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %506 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %507 = mul nsw i32 2, %506
  %508 = call i32 @set_gdbarch_short_bit(%struct.gdbarch* %505, i32 %507)
  %509 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %510 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %511 = mul nsw i32 4, %510
  %512 = call i32 @set_gdbarch_int_bit(%struct.gdbarch* %509, i32 %511)
  %513 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %514 = load i32, i32* %9, align 4
  %515 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %516 = mul nsw i32 %514, %515
  %517 = call i32 @set_gdbarch_long_bit(%struct.gdbarch* %513, i32 %516)
  %518 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %519 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %520 = mul nsw i32 8, %519
  %521 = call i32 @set_gdbarch_long_long_bit(%struct.gdbarch* %518, i32 %520)
  %522 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %523 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %524 = mul nsw i32 4, %523
  %525 = call i32 @set_gdbarch_float_bit(%struct.gdbarch* %522, i32 %524)
  %526 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %527 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %528 = mul nsw i32 8, %527
  %529 = call i32 @set_gdbarch_double_bit(%struct.gdbarch* %526, i32 %528)
  %530 = load i32, i32* %20, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %537

532:                                              ; preds = %468
  %533 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %534 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %535 = mul nsw i32 16, %534
  %536 = call i32 @set_gdbarch_long_double_bit(%struct.gdbarch* %533, i32 %535)
  br label %542

537:                                              ; preds = %468
  %538 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %539 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %540 = mul nsw i32 8, %539
  %541 = call i32 @set_gdbarch_long_double_bit(%struct.gdbarch* %538, i32 %540)
  br label %542

542:                                              ; preds = %537, %532
  %543 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %544 = call i32 @set_gdbarch_char_signed(%struct.gdbarch* %543, i32 0)
  %545 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %546 = load i32, i32* @rs6000_frame_align, align 4
  %547 = call i32 @set_gdbarch_frame_align(%struct.gdbarch* %545, i32 %546)
  %548 = load i32, i32* %20, align 4
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %556

550:                                              ; preds = %542
  %551 = load i32, i32* %9, align 4
  %552 = icmp eq i32 %551, 8
  br i1 %552, label %553, label %556

553:                                              ; preds = %550
  %554 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %555 = call i32 @set_gdbarch_frame_red_zone_size(%struct.gdbarch* %554, i32 288)
  br label %566

556:                                              ; preds = %550, %542
  %557 = load i32, i32* %20, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %565, label %559

559:                                              ; preds = %556
  %560 = load i32, i32* %9, align 4
  %561 = icmp eq i32 %560, 4
  br i1 %561, label %562, label %565

562:                                              ; preds = %559
  %563 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %564 = call i32 @set_gdbarch_frame_red_zone_size(%struct.gdbarch* %563, i32 224)
  br label %565

565:                                              ; preds = %562, %559, %556
  br label %566

566:                                              ; preds = %565, %553
  %567 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %568 = load i32, i32* @generic_save_dummy_frame_tos, align 4
  %569 = call i32 @set_gdbarch_deprecated_save_dummy_frame_tos(%struct.gdbarch* %567, i32 %568)
  %570 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %571 = call i32 @set_gdbarch_believe_pcc_promotion(%struct.gdbarch* %570, i32 1)
  %572 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %573 = load i32, i32* @rs6000_register_convertible, align 4
  %574 = call i32 @set_gdbarch_deprecated_register_convertible(%struct.gdbarch* %572, i32 %573)
  %575 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %576 = load i32, i32* @rs6000_register_convert_to_virtual, align 4
  %577 = call i32 @set_gdbarch_deprecated_register_convert_to_virtual(%struct.gdbarch* %575, i32 %576)
  %578 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %579 = load i32, i32* @rs6000_register_convert_to_raw, align 4
  %580 = call i32 @set_gdbarch_deprecated_register_convert_to_raw(%struct.gdbarch* %578, i32 %579)
  %581 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %582 = load i32, i32* @rs6000_stab_reg_to_regnum, align 4
  %583 = call i32 @set_gdbarch_stab_reg_to_regnum(%struct.gdbarch* %581, i32 %582)
  %584 = load i32, i32* %20, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %593

586:                                              ; preds = %566
  %587 = load i32, i32* %9, align 4
  %588 = icmp eq i32 %587, 4
  br i1 %588, label %589, label %593

589:                                              ; preds = %586
  %590 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %591 = load i32, i32* @ppc_sysv_abi_push_dummy_call, align 4
  %592 = call i32 @set_gdbarch_push_dummy_call(%struct.gdbarch* %590, i32 %591)
  br label %608

593:                                              ; preds = %586, %566
  %594 = load i32, i32* %20, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %603

596:                                              ; preds = %593
  %597 = load i32, i32* %9, align 4
  %598 = icmp eq i32 %597, 8
  br i1 %598, label %599, label %603

599:                                              ; preds = %596
  %600 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %601 = load i32, i32* @ppc64_sysv_abi_push_dummy_call, align 4
  %602 = call i32 @set_gdbarch_push_dummy_call(%struct.gdbarch* %600, i32 %601)
  br label %607

603:                                              ; preds = %596, %593
  %604 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %605 = load i32, i32* @rs6000_push_dummy_call, align 4
  %606 = call i32 @set_gdbarch_push_dummy_call(%struct.gdbarch* %604, i32 %605)
  br label %607

607:                                              ; preds = %603, %599
  br label %608

608:                                              ; preds = %607, %589
  %609 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %610 = load i32, i32* @rs6000_extract_struct_value_address, align 4
  %611 = call i32 @set_gdbarch_deprecated_extract_struct_value_address(%struct.gdbarch* %609, i32 %610)
  %612 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %613 = load i32, i32* @rs6000_pop_frame, align 4
  %614 = call i32 @set_gdbarch_deprecated_pop_frame(%struct.gdbarch* %612, i32 %613)
  %615 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %616 = load i32, i32* @rs6000_skip_prologue, align 4
  %617 = call i32 @set_gdbarch_skip_prologue(%struct.gdbarch* %615, i32 %616)
  %618 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %619 = load i32, i32* @core_addr_lessthan, align 4
  %620 = call i32 @set_gdbarch_inner_than(%struct.gdbarch* %618, i32 %619)
  %621 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %622 = load i32, i32* @rs6000_breakpoint_from_pc, align 4
  %623 = call i32 @set_gdbarch_breakpoint_from_pc(%struct.gdbarch* %621, i32 %622)
  %624 = load i32, i32* %20, align 4
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %633

626:                                              ; preds = %608
  %627 = load i32, i32* %9, align 4
  %628 = icmp eq i32 %627, 8
  br i1 %628, label %629, label %633

629:                                              ; preds = %626
  %630 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %631 = load i32, i32* @ppc64_sysv_abi_adjust_breakpoint_address, align 4
  %632 = call i32 @set_gdbarch_adjust_breakpoint_address(%struct.gdbarch* %630, i32 %631)
  br label %633

633:                                              ; preds = %629, %626, %608
  %634 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %635 = call i32 @set_gdbarch_frame_args_skip(%struct.gdbarch* %634, i32 8)
  %636 = load i32, i32* %20, align 4
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %642, label %638

638:                                              ; preds = %633
  %639 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %640 = load i32, i32* @rs6000_use_struct_convention, align 4
  %641 = call i32 @set_gdbarch_use_struct_convention(%struct.gdbarch* %639, i32 %640)
  br label %642

642:                                              ; preds = %638, %633
  %643 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %644 = load i32, i32* @rs6000_frameless_function_invocation, align 4
  %645 = call i32 @set_gdbarch_deprecated_frameless_function_invocation(%struct.gdbarch* %643, i32 %644)
  %646 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %647 = load i32, i32* @rs6000_frame_chain, align 4
  %648 = call i32 @set_gdbarch_deprecated_frame_chain(%struct.gdbarch* %646, i32 %647)
  %649 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %650 = load i32, i32* @rs6000_frame_saved_pc, align 4
  %651 = call i32 @set_gdbarch_deprecated_frame_saved_pc(%struct.gdbarch* %649, i32 %650)
  %652 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %653 = load i32, i32* @rs6000_frame_init_saved_regs, align 4
  %654 = call i32 @set_gdbarch_deprecated_frame_init_saved_regs(%struct.gdbarch* %652, i32 %653)
  %655 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %656 = load i32, i32* @rs6000_init_extra_frame_info, align 4
  %657 = call i32 @set_gdbarch_deprecated_init_extra_frame_info(%struct.gdbarch* %655, i32 %656)
  %658 = load i32, i32* %20, align 4
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %664, label %660

660:                                              ; preds = %642
  %661 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %662 = load i32, i32* @rs6000_convert_from_func_ptr_addr, align 4
  %663 = call i32 @set_gdbarch_convert_from_func_ptr_addr(%struct.gdbarch* %661, i32 %662)
  br label %664

664:                                              ; preds = %660, %642
  %665 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %666 = load i32, i32* @rs6000_frame_args_address, align 4
  %667 = call i32 @set_gdbarch_deprecated_frame_args_address(%struct.gdbarch* %665, i32 %666)
  %668 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %669 = load i32, i32* @rs6000_frame_args_address, align 4
  %670 = call i32 @set_gdbarch_deprecated_frame_locals_address(%struct.gdbarch* %668, i32 %669)
  %671 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %672 = load i32, i32* @rs6000_saved_pc_after_call, align 4
  %673 = call i32 @set_gdbarch_deprecated_saved_pc_after_call(%struct.gdbarch* %671, i32 %672)
  %674 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %675 = load i32, i32* @rs6000_fetch_pointer_argument, align 4
  %676 = call i32 @set_gdbarch_fetch_pointer_argument(%struct.gdbarch* %674, i32 %675)
  %677 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %678 = bitcast %struct.gdbarch_info* %5 to { %struct.TYPE_8__*, %struct.TYPE_11__* }*
  %679 = getelementptr inbounds { %struct.TYPE_8__*, %struct.TYPE_11__* }, { %struct.TYPE_8__*, %struct.TYPE_11__* }* %678, i32 0, i32 0
  %680 = load %struct.TYPE_8__*, %struct.TYPE_8__** %679, align 8
  %681 = getelementptr inbounds { %struct.TYPE_8__*, %struct.TYPE_11__* }, { %struct.TYPE_8__*, %struct.TYPE_11__* }* %678, i32 0, i32 1
  %682 = load %struct.TYPE_11__*, %struct.TYPE_11__** %681, align 8
  %683 = call i32 @gdbarch_init_osabi(%struct.TYPE_8__* %680, %struct.TYPE_11__* %682, %struct.gdbarch* %677)
  %684 = load i32, i32* %10, align 4
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %690

686:                                              ; preds = %664
  %687 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %688 = load i32, i32* @rs6000_software_single_step, align 4
  %689 = call i32 @set_gdbarch_software_single_step(%struct.gdbarch* %687, i32 %688)
  br label %690

690:                                              ; preds = %686, %664
  %691 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  store %struct.gdbarch* %691, %struct.gdbarch** %4, align 8
  br label %692

692:                                              ; preds = %690, %218, %144
  %693 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  ret %struct.gdbarch* %693
}

declare dso_local i64 @bfd_get_flavour(%struct.TYPE_11__*) #1

declare dso_local i64 @bfd_xcoff_is_xcoff64(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @elf_elfheader(%struct.TYPE_11__*) #1

declare dso_local %struct.gdbarch_list* @gdbarch_list_lookup_by_info(%struct.gdbarch_list*, %struct.gdbarch_info*) #1

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @bfd_default_set_arch_mach(i32*, i32, i64) #1

declare dso_local i8* @bfd_get_arch_info(i32*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32* @bfd_get_section_by_name(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.gdbarch* @gdbarch_alloc(%struct.gdbarch_info*, %struct.gdbarch_tdep*) #1

declare dso_local i32 @init_variants(...) #1

declare dso_local %struct.variant* @find_variant_by_arch(i32, i64) #1

declare dso_local i32 @set_gdbarch_pc_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_sp_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_fp_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_return_value(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_extract_return_value(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_store_return_value(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_dwarf2_reg_to_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_pseudo_register_read(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_pseudo_register_write(%struct.gdbarch*, i32) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @regsize(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @set_gdbarch_print_insn(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_write_pc(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_num_regs(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_num_pseudo_regs(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_register_name(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_register_size(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_register_bytes(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_register_byte(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_register_raw_size(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_register_virtual_type(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_ptr_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_short_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_int_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_long_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_long_long_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_float_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_double_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_long_double_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_char_signed(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_frame_align(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_frame_red_zone_size(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_save_dummy_frame_tos(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_believe_pcc_promotion(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_register_convertible(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_register_convert_to_virtual(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_register_convert_to_raw(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_stab_reg_to_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_push_dummy_call(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_extract_struct_value_address(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_pop_frame(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_skip_prologue(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_inner_than(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_breakpoint_from_pc(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_adjust_breakpoint_address(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_frame_args_skip(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_use_struct_convention(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_frameless_function_invocation(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_frame_chain(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_frame_saved_pc(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_frame_init_saved_regs(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_init_extra_frame_info(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_convert_from_func_ptr_addr(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_frame_args_address(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_frame_locals_address(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_saved_pc_after_call(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_fetch_pointer_argument(%struct.gdbarch*, i32) #1

declare dso_local i32 @gdbarch_init_osabi(%struct.TYPE_8__*, %struct.TYPE_11__*, %struct.gdbarch*) #1

declare dso_local i32 @set_gdbarch_software_single_step(%struct.gdbarch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
