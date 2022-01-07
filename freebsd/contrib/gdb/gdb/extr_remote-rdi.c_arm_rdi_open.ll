; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32*, i32, i32, i32, i32, i32*, i32, i32 }
%struct.local_bp_list_entry = type { %struct.local_bp_list_entry* }

@.str = private unnamed_addr constant [117 x i8] c"To open an RDI connection, you need to specify what serial\0Adevice is attached to the remote system (e.g. /dev/ttya).\00", align 1
@rdi_heartbeat = common dso_local global i32 0, align 4
@adp_ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not open device \22%s\22\00", align 1
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@gdb_config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@myprint = common dso_local global i32 0, align 4
@gdb_hostif = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@mypause = common dso_local global i32 0, align 4
@mywritec = common dso_local global i32 0, align 4
@myreadc = common dso_local global i32 0, align 4
@mywrite = common dso_local global i32 0, align 4
@mygets = common dso_local global i32 0, align 4
@voiddummy = common dso_local global i32 0, align 4
@RDIError_BigEndian = common dso_local global i32 0, align 4
@RDIError_LittleEndian = common dso_local global i32 0, align 4
@RDIError_NoError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"RDI_open: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"RDI_open failed\0A\00", align 1
@RDIInfo_Target = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"RDI_info: %s\0A\00", align 1
@RDIInfo_Points = common dso_local global i32 0, align 4
@RDIInfo_Step = common dso_local global i32 0, align 4
@RDIInfo_CoPro = common dso_local global i32 0, align 4
@RDIInfo_SemiHosting = common dso_local global i32 0, align 4
@RDIInfo_GetLoadSize = common dso_local global i32 0, align 4
@max_load_size = common dso_local global i64 0, align 8
@arm_rdi_ops = common dso_local global i32 0, align 4
@rom_at_zero = common dso_local global i64 0, align 8
@RDIVector_Catch = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RDISet_Cmdline = common dso_local global i32 0, align 4
@local_bp_list = common dso_local global %struct.local_bp_list_entry* null, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Connected to ARM RDI target.\0A\00", align 1
@closed_already = common dso_local global i64 0, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @arm_rdi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_rdi_open(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.local_bp_list_entry*, align 8
  %13 = alloca %struct.local_bp_list_entry*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @xstrdup(i8* %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 32)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load i8*, i8** %11, align 8
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %11, align 8
  br label %29

29:                                               ; preds = %34, %25
  %30 = load i8*, i8** %11, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %11, align 8
  br label %29

37:                                               ; preds = %29
  %38 = load i8*, i8** %11, align 8
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %37, %18
  %40 = call i32 @arm_rdi_close(i32 0)
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* @rdi_heartbeat, align 4
  %44 = call i32 @Adp_OpenDevice(i8* %41, i8* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @adp_ok, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %48, %39
  %52 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %53 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  %57 = or i32 2, %56
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdb_config, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdb_config, i32 0, i32 1), align 4
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdb_config, i32 0, i32 2), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdb_config, i32 0, i32 3), align 4
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdb_config, i32 0, i32 4), align 4
  %58 = load i32, i32* @myprint, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdb_hostif, i32 0, i32 8), align 4
  %59 = load i32, i32* @mypause, align 4
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdb_hostif, i32 0, i32 7), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdb_hostif, i32 0, i32 6), align 8
  %60 = load i32, i32* @mywritec, align 4
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdb_hostif, i32 0, i32 5), align 4
  %61 = load i32, i32* @myreadc, align 4
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdb_hostif, i32 0, i32 4), align 8
  %62 = load i32, i32* @mywrite, align 4
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdb_hostif, i32 0, i32 3), align 4
  %63 = load i32, i32* @mygets, align 4
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdb_hostif, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdb_hostif, i32 0, i32 1), align 8
  %64 = load i32, i32* @voiddummy, align 4
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdb_hostif, i32 0, i32 0), align 8
  %65 = call i32 @angel_RDI_open(i32 10, %struct.TYPE_6__* @gdb_config, %struct.TYPE_5__* @gdb_hostif, i32* null)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @RDIError_BigEndian, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %51
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @RDIError_LittleEndian, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %51
  br label %85

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @RDIError_NoError, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @rdi_error_message(i32 %79)
  %81 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = call i32 (...) @Adp_CloseDevice()
  %83 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %78, %74
  br label %85

85:                                               ; preds = %84, %73
  %86 = load i32, i32* @RDIInfo_Target, align 4
  %87 = call i32 @angel_RDI_info(i32 %86, i64* %7, i64* %8)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @RDIError_NoError, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @rdi_error_message(i32 %92)
  %94 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %85
  %96 = load i32, i32* @RDIInfo_Points, align 4
  %97 = call i32 @angel_RDI_info(i32 %96, i64* %7, i64* %8)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @RDIError_NoError, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @rdi_error_message(i32 %102)
  %104 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %101, %95
  %106 = load i32, i32* @RDIInfo_Step, align 4
  %107 = call i32 @angel_RDI_info(i32 %106, i64* %7, i64* %8)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @RDIError_NoError, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @rdi_error_message(i32 %112)
  %114 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %111, %105
  %116 = load i32, i32* @RDIInfo_CoPro, align 4
  %117 = call i32 @angel_RDI_info(i32 %116, i64* %7, i64* %8)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @RDIError_NoError, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @rdi_error_message(i32 %122)
  %124 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %121, %115
  %126 = load i32, i32* @RDIInfo_SemiHosting, align 4
  %127 = call i32 @angel_RDI_info(i32 %126, i64* %7, i64* %8)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @RDIError_NoError, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @rdi_error_message(i32 %132)
  %134 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %131, %125
  %136 = load i32, i32* @RDIInfo_GetLoadSize, align 4
  %137 = call i32 @angel_RDI_info(i32 %136, i64* %7, i64* %8)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @RDIError_NoError, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @rdi_error_message(i32 %142)
  %144 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %141, %135
  %146 = load i64, i64* %7, align 8
  store i64 %146, i64* @max_load_size, align 8
  %147 = call i32 @push_target(i32* @arm_rdi_ops)
  %148 = call i32 @target_fetch_registers(i32 -1)
  %149 = call i32 @angel_RDI_open(i32 1, %struct.TYPE_6__* @gdb_config, %struct.TYPE_5__* null, i32* null)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @RDIError_NoError, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @rdi_error_message(i32 %154)
  %156 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %153, %145
  %158 = load i64, i64* @rom_at_zero, align 8
  %159 = icmp ne i64 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 0, i32 315
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %7, align 8
  %163 = load i32, i32* @RDIVector_Catch, align 4
  %164 = call i32 @angel_RDI_info(i32 %163, i64* %7, i64* %8)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @RDIError_NoError, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %157
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @rdi_error_message(i32 %169)
  %171 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %168, %157
  store i64 ptrtoint ([1 x i8]* @.str.5 to i64), i64* %7, align 8
  %173 = load i32, i32* @RDISet_Cmdline, align 4
  %174 = call i32 @angel_RDI_info(i32 %173, i64* %7, i64* %8)
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @RDIError_NoError, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @rdi_error_message(i32 %179)
  %181 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %178, %172
  store %struct.local_bp_list_entry* null, %struct.local_bp_list_entry** %13, align 8
  %183 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** @local_bp_list, align 8
  store %struct.local_bp_list_entry* %183, %struct.local_bp_list_entry** %12, align 8
  br label %184

184:                                              ; preds = %194, %182
  %185 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %12, align 8
  %186 = icmp ne %struct.local_bp_list_entry* %185, null
  br i1 %186, label %187, label %198

187:                                              ; preds = %184
  %188 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %13, align 8
  %189 = icmp ne %struct.local_bp_list_entry* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %13, align 8
  %192 = call i32 @xfree(%struct.local_bp_list_entry* %191)
  br label %193

193:                                              ; preds = %190, %187
  br label %194

194:                                              ; preds = %193
  %195 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %12, align 8
  %196 = getelementptr inbounds %struct.local_bp_list_entry, %struct.local_bp_list_entry* %195, i32 0, i32 0
  %197 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %196, align 8
  store %struct.local_bp_list_entry* %197, %struct.local_bp_list_entry** %12, align 8
  br label %184

198:                                              ; preds = %184
  %199 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* @closed_already, align 8
  %200 = call i32 @pid_to_ptid(i32 42)
  store i32 %200, i32* @inferior_ptid, align 4
  ret void
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @arm_rdi_close(i32) #1

declare dso_local i32 @Adp_OpenDevice(i8*, i8*, i32) #1

declare dso_local i32 @angel_RDI_open(i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @rdi_error_message(i32) #1

declare dso_local i32 @Adp_CloseDevice(...) #1

declare dso_local i32 @angel_RDI_info(i32, i64*, i64*) #1

declare dso_local i32 @push_target(i32*) #1

declare dso_local i32 @target_fetch_registers(i32) #1

declare dso_local i32 @xfree(%struct.local_bp_list_entry*) #1

declare dso_local i32 @pid_to_ptid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
