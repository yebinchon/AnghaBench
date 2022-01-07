; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_identcpu.c_print_cpu_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_identcpu.c_print_cpu_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"CPU%3d: %s %s r%dp%d\00", align 1
@cpu_desc = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c" affinity:\00", align 1
@cpu_aff_levels = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" %2d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@midr = common dso_local global i32 0, align 4
@CPU_MATCH_ERRATA_CAVIUM_THUNDERX_1_1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [128 x i8] c"WARNING: ThunderX Pass 1.1 detected.\0AThis has known hardware bugs that may cause the incorrect operation of atomic operations.\0A\00", align 1
@cpu_print_regs = common dso_local global i32 0, align 4
@PRINT_ID_AA64_ISAR0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Instruction Set Attributes 0\00", align 1
@id_aa64isar0_fields = common dso_local global i32 0, align 4
@PRINT_ID_AA64_ISAR1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Instruction Set Attributes 1\00", align 1
@id_aa64isar1_fields = common dso_local global i32 0, align 4
@PRINT_ID_AA64_PFR0 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Processor Features 0\00", align 1
@id_aa64pfr0_fields = common dso_local global i32 0, align 4
@PRINT_ID_AA64_PFR1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Processor Features 1\00", align 1
@id_aa64pfr1_fields = common dso_local global i32 0, align 4
@PRINT_ID_AA64_MMFR0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"Memory Model Features 0\00", align 1
@id_aa64mmfr0_fields = common dso_local global i32 0, align 4
@PRINT_ID_AA64_MMFR1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"Memory Model Features 1\00", align 1
@id_aa64mmfr1_fields = common dso_local global i32 0, align 4
@PRINT_ID_AA64_MMFR2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"Memory Model Features 2\00", align 1
@id_aa64mmfr2_fields = common dso_local global i32 0, align 4
@PRINT_ID_AA64_DFR0 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"Debug Features 0\00", align 1
@id_aa64dfr0_fields = common dso_local global i32 0, align 4
@PRINT_ID_AA64_DFR1 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"Debug Features 1\00", align 1
@id_aa64dfr1_fields = common dso_local global i32 0, align 4
@PRINT_ID_AA64_AFR0 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"Auxiliary Features 0\00", align 1
@id_aa64afr0_fields = common dso_local global i32 0, align 4
@PRINT_ID_AA64_AFR1 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"Auxiliary Features 1\00", align 1
@id_aa64afr1_fields = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @print_cpu_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cpu_features(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sbuf*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %4, %struct.sbuf** %3, align 8
  %5 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %8 = load i64, i64* %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 15
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %13 = load i64, i64* %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %18 = load i64, i64* %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 13
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 12
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.sbuf*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %6, i32 %11, i32 %16, i32 %21, i32 %26)
  %28 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %29 = call i32 @sbuf_cat(%struct.sbuf* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @cpu_aff_levels, align 4
  switch i32 %30, label %31 [
    i32 4, label %32
    i32 3, label %42
    i32 2, label %52
    i32 1, label %62
    i32 0, label %62
  ]

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %1, %31
  %33 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %35 = load i64, i64* %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CPU_AFF3(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = call i32 (%struct.sbuf*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %1, %32
  %43 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %45 = load i64, i64* %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CPU_AFF2(i32 %48)
  %50 = sext i32 %49 to i64
  %51 = call i32 (%struct.sbuf*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %1, %42
  %53 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %55 = load i64, i64* %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 11
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @CPU_AFF1(i32 %58)
  %60 = sext i32 %59 to i64
  %61 = call i32 (%struct.sbuf*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %1, %1, %52
  %63 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %65 = load i64, i64* %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 11
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @CPU_AFF0(i32 %68)
  %70 = sext i32 %69 to i64
  %71 = call i32 (%struct.sbuf*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %62
  %73 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %74 = call i32 @sbuf_finish(%struct.sbuf* %73)
  %75 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %76 = call i8* @sbuf_data(%struct.sbuf* %75)
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  %78 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %79 = call i32 @sbuf_clear(%struct.sbuf* %78)
  %80 = load i64, i64* %2, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %72
  %83 = load i32, i32* @midr, align 4
  %84 = call i32 @PCPU_GET(i32 %83)
  %85 = call i64 @CPU_VAR(i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i64, i64* @CPU_MATCH_ERRATA_CAVIUM_THUNDERX_1_1, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %87, %82, %72
  %93 = load i64, i64* %2, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @cpu_print_regs, align 4
  %97 = load i32, i32* @PRINT_ID_AA64_ISAR0, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %95, %92
  %101 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %103 = load i64, i64* %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @id_aa64isar0_fields, align 4
  %108 = call i32 @print_id_register(%struct.sbuf* %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %100, %95
  %110 = load i64, i64* %2, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @cpu_print_regs, align 4
  %114 = load i32, i32* @PRINT_ID_AA64_ISAR1, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112, %109
  %118 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %120 = load i64, i64* %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @id_aa64isar1_fields, align 4
  %125 = call i32 @print_id_register(%struct.sbuf* %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %117, %112
  %127 = load i64, i64* %2, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* @cpu_print_regs, align 4
  %131 = load i32, i32* @PRINT_ID_AA64_PFR0, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %129, %126
  %135 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %137 = load i64, i64* %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @id_aa64pfr0_fields, align 4
  %142 = call i32 @print_id_register(%struct.sbuf* %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %134, %129
  %144 = load i64, i64* %2, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* @cpu_print_regs, align 4
  %148 = load i32, i32* @PRINT_ID_AA64_PFR1, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %146, %143
  %152 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %154 = load i64, i64* %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @id_aa64pfr1_fields, align 4
  %159 = call i32 @print_id_register(%struct.sbuf* %152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %151, %146
  %161 = load i64, i64* %2, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* @cpu_print_regs, align 4
  %165 = load i32, i32* @PRINT_ID_AA64_MMFR0, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %163, %160
  %169 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %171 = load i64, i64* %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @id_aa64mmfr0_fields, align 4
  %176 = call i32 @print_id_register(%struct.sbuf* %169, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %168, %163
  %178 = load i64, i64* %2, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* @cpu_print_regs, align 4
  %182 = load i32, i32* @PRINT_ID_AA64_MMFR1, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %180, %177
  %186 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %188 = load i64, i64* %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @id_aa64mmfr1_fields, align 4
  %193 = call i32 @print_id_register(%struct.sbuf* %186, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %185, %180
  %195 = load i64, i64* %2, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* @cpu_print_regs, align 4
  %199 = load i32, i32* @PRINT_ID_AA64_MMFR2, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %197, %194
  %203 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %205 = load i64, i64* %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @id_aa64mmfr2_fields, align 4
  %210 = call i32 @print_id_register(%struct.sbuf* %203, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %202, %197
  %212 = load i64, i64* %2, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %211
  %215 = load i32, i32* @cpu_print_regs, align 4
  %216 = load i32, i32* @PRINT_ID_AA64_DFR0, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %214, %211
  %220 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %222 = load i64, i64* %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @id_aa64dfr0_fields, align 4
  %227 = call i32 @print_id_register(%struct.sbuf* %220, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %219, %214
  %229 = load i64, i64* %2, align 8
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* @cpu_print_regs, align 4
  %233 = load i32, i32* @PRINT_ID_AA64_DFR1, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %231, %228
  %237 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %239 = load i64, i64* %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @id_aa64dfr1_fields, align 4
  %244 = call i32 @print_id_register(%struct.sbuf* %237, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %236, %231
  %246 = load i64, i64* %2, align 8
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %245
  %249 = load i32, i32* @cpu_print_regs, align 4
  %250 = load i32, i32* @PRINT_ID_AA64_AFR0, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %248, %245
  %254 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %256 = load i64, i64* %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @id_aa64afr0_fields, align 4
  %261 = call i32 @print_id_register(%struct.sbuf* %254, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %253, %248
  %263 = load i64, i64* %2, align 8
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %270, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* @cpu_print_regs, align 4
  %267 = load i32, i32* @PRINT_ID_AA64_AFR1, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %265, %262
  %271 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %272 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %273 = load i64, i64* %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @id_aa64afr1_fields, align 4
  %278 = call i32 @print_id_register(%struct.sbuf* %271, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %276, i32 %277)
  br label %279

279:                                              ; preds = %270, %265
  %280 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %281 = call i32 @sbuf_delete(%struct.sbuf* %280)
  store %struct.sbuf* null, %struct.sbuf** %3, align 8
  ret void
}

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i64, ...) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @CPU_AFF3(i32) #1

declare dso_local i32 @CPU_AFF2(i32) #1

declare dso_local i32 @CPU_AFF1(i32) #1

declare dso_local i32 @CPU_AFF0(i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_clear(%struct.sbuf*) #1

declare dso_local i64 @CPU_VAR(i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @print_id_register(%struct.sbuf*, i8*, i32, i32) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
