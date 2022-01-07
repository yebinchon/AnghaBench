; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_disasm.c_db_disasm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_disasm.c_db_disasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inst = type { i32, i8*, i32, %struct.inst*, i64 }
%struct.i_addr = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@LONG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%es\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ss\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%cs\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ds\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%fs\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%gs\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lock \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@db_inst_table = common dso_local global %struct.inst* null, align 8
@ESC = common dso_local global i32 0, align 4
@db_bad_inst = common dso_local global %struct.inst zeroinitializer, align 8
@db_Grp9 = common dso_local global %struct.inst* null, align 8
@db_Grp9b = common dso_local global %struct.inst* null, align 8
@db_Grp1 = common dso_local global %struct.inst* null, align 8
@db_Grp2 = common dso_local global %struct.inst* null, align 8
@db_Grp6 = common dso_local global %struct.inst* null, align 8
@db_Grp7 = common dso_local global %struct.inst* null, align 8
@db_Grp8 = common dso_local global %struct.inst* null, align 8
@db_Grp15 = common dso_local global %struct.inst* null, align 8
@db_Grp3 = common dso_local global %struct.inst* null, align 8
@db_Grp4 = common dso_local global %struct.inst* null, align 8
@db_Grp5 = common dso_local global %struct.inst* null, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"vmcall\00", align 1
@NONE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"vmlaunch\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"vmresume\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"vmxoff\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"mwait\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"clac\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"stac\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"xgetbv\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"xsetbv\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"vmrun\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"vmmcall\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"vmload\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"vmsave\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"stgi\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"clgi\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"skinit\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"invlpga\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"swapgs\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"rdtscp\00", align 1
@db_Grp15b = common dso_local global i8** null, align 8
@.str.28 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"vmxon\00", align 1
@db_inst_0f38fx = common dso_local global %struct.inst* null, align 8
@.str.30 = private unnamed_addr constant [8 x i8] c"vmclear\00", align 1
@REX_W = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [5 x i8] c"cwde\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"cdqe\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"cmpxchg8b\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"cmpxchg16b\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"repe \00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"repne \00", align 1
@SDEP = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ADEP = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@BYTE = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@QUAD = common dso_local global i32 0, align 4
@db_reg = common dso_local global i32*** null, align 8
@REX_R = common dso_local global i32 0, align 4
@db_seg_reg = common dso_local global i32* null, align 8
@.str.45 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"%bx\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"%ebx\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"%%cl\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"%%dx\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"%si\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"%rsi\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"%%es:(%s)\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"%di\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"%rdi\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"%%cr%d\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"%%dr%d\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"%%tr%d\00", align 1
@db_lengths = common dso_local global i32* null, align 8
@.str.59 = private unnamed_addr constant [5 x i8] c"$%#r\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"$%+#r\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"$%#lr\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"%s:%+#r\00", align 1
@DB_STGY_ANY = common dso_local global i32 0, align 4
@DB_STGY_XTRN = common dso_local global i32 0, align 4
@.str.63 = private unnamed_addr constant [3 x i8] c"$1\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"$3\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"$%#r,%#r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_disasm(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.inst*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.i_addr, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i32 @get_value_inc(i32 %26, i32 %27, i32 1, i32 %28)
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @LONG, align 4
  store i32 %31, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %18, align 4
  br label %35

35:                                               ; preds = %73, %2
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %53 [
    i32 102, label %37
    i32 103, label %39
    i32 38, label %41
    i32 54, label %42
    i32 46, label %43
    i32 62, label %44
    i32 100, label %45
    i32 101, label %46
    i32 240, label %47
    i32 242, label %49
    i32 243, label %51
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @WORD, align 4
  store i32 %38, i32* %7, align 4
  br label %55

39:                                               ; preds = %35
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %8, align 4
  br label %55

41:                                               ; preds = %35
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %55

42:                                               ; preds = %35
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %55

43:                                               ; preds = %35
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %55

44:                                               ; preds = %35
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %55

45:                                               ; preds = %35
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %55

46:                                               ; preds = %35
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %55

47:                                               ; preds = %35
  %48 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %55

49:                                               ; preds = %35
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %20, align 4
  br label %55

51:                                               ; preds = %35
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %19, align 4
  br label %55

53:                                               ; preds = %35
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %18, align 4
  br label %55

55:                                               ; preds = %53, %51, %49, %47, %46, %45, %44, %43, %42, %41, %39, %37
  %56 = load i32, i32* %6, align 4
  %57 = icmp sge i32 %56, 64
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 80
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %18, align 4
  br label %64

64:                                               ; preds = %61, %58, %55
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @FALSE, align 4
  %71 = call i32 @get_value_inc(i32 %68, i32 %69, i32 1, i32 %70)
  br label %72

72:                                               ; preds = %67, %64
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %35, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp sge i32 %77, 216
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = icmp sle i32 %80, 223
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @db_disasm_esc(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i8* %88)
  store i32 %89, i32* %4, align 4
  %90 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %3, align 4
  br label %1030

92:                                               ; preds = %79, %76
  %93 = load %struct.inst*, %struct.inst** @db_inst_table, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.inst, %struct.inst* %93, i64 %95
  store %struct.inst* %96, %struct.inst** %10, align 8
  br label %97

97:                                               ; preds = %126, %92
  %98 = load %struct.inst*, %struct.inst** %10, align 8
  %99 = getelementptr inbounds %struct.inst, %struct.inst* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ESC, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %127

103:                                              ; preds = %97
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @FALSE, align 4
  %107 = call i32 @get_value_inc(i32 %104, i32 %105, i32 1, i32 %106)
  %108 = load %struct.inst*, %struct.inst** %10, align 8
  %109 = getelementptr inbounds %struct.inst, %struct.inst* %108, i32 0, i32 3
  %110 = load %struct.inst*, %struct.inst** %109, align 8
  %111 = bitcast %struct.inst* %110 to %struct.inst**
  %112 = load i32, i32* %6, align 4
  %113 = ashr i32 %112, 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.inst*, %struct.inst** %111, i64 %114
  %116 = load %struct.inst*, %struct.inst** %115, align 8
  store %struct.inst* %116, %struct.inst** %10, align 8
  %117 = load %struct.inst*, %struct.inst** %10, align 8
  %118 = icmp eq %struct.inst* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %103
  store %struct.inst* @db_bad_inst, %struct.inst** %10, align 8
  br label %126

120:                                              ; preds = %103
  %121 = load %struct.inst*, %struct.inst** %10, align 8
  %122 = load i32, i32* %6, align 4
  %123 = and i32 %122, 15
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.inst, %struct.inst* %121, i64 %124
  store %struct.inst* %125, %struct.inst** %10, align 8
  br label %126

126:                                              ; preds = %120, %119
  br label %97

127:                                              ; preds = %97
  %128 = load %struct.inst*, %struct.inst** %10, align 8
  %129 = getelementptr inbounds %struct.inst, %struct.inst* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @FALSE, align 4
  %136 = call i32 @get_value_inc(i32 %133, i32 %134, i32 1, i32 %135)
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @db_read_address(i32 %137, i32 %138, i32 %139, i32 %140, %struct.i_addr* %25)
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %132, %127
  %143 = load %struct.inst*, %struct.inst** %10, align 8
  %144 = getelementptr inbounds %struct.inst, %struct.inst* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %11, align 8
  %146 = load %struct.inst*, %struct.inst** %10, align 8
  %147 = getelementptr inbounds %struct.inst, %struct.inst* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %12, align 4
  %149 = load %struct.inst*, %struct.inst** %10, align 8
  %150 = getelementptr inbounds %struct.inst, %struct.inst* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %13, align 4
  %152 = load %struct.inst*, %struct.inst** %10, align 8
  %153 = getelementptr inbounds %struct.inst, %struct.inst* %152, i32 0, i32 3
  %154 = load %struct.inst*, %struct.inst** %153, align 8
  %155 = load %struct.inst*, %struct.inst** @db_Grp9, align 8
  %156 = icmp eq %struct.inst* %154, %155
  br i1 %156, label %157, label %177

157:                                              ; preds = %142
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @f_mod(i32 %158, i32 %159)
  %161 = icmp eq i32 %160, 3
  br i1 %161, label %162, label %177

162:                                              ; preds = %157
  %163 = load %struct.inst*, %struct.inst** @db_Grp9b, align 8
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %15, align 4
  %166 = call i64 @f_reg(i32 %164, i32 %165)
  %167 = getelementptr inbounds %struct.inst, %struct.inst* %163, i64 %166
  store %struct.inst* %167, %struct.inst** %10, align 8
  %168 = load %struct.inst*, %struct.inst** %10, align 8
  %169 = getelementptr inbounds %struct.inst, %struct.inst* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** %11, align 8
  %171 = load %struct.inst*, %struct.inst** %10, align 8
  %172 = getelementptr inbounds %struct.inst, %struct.inst* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %12, align 4
  %174 = load %struct.inst*, %struct.inst** %10, align 8
  %175 = getelementptr inbounds %struct.inst, %struct.inst* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %13, align 4
  br label %283

177:                                              ; preds = %157, %142
  %178 = load %struct.inst*, %struct.inst** %10, align 8
  %179 = getelementptr inbounds %struct.inst, %struct.inst* %178, i32 0, i32 3
  %180 = load %struct.inst*, %struct.inst** %179, align 8
  %181 = load %struct.inst*, %struct.inst** @db_Grp1, align 8
  %182 = icmp eq %struct.inst* %180, %181
  br i1 %182, label %219, label %183

183:                                              ; preds = %177
  %184 = load %struct.inst*, %struct.inst** %10, align 8
  %185 = getelementptr inbounds %struct.inst, %struct.inst* %184, i32 0, i32 3
  %186 = load %struct.inst*, %struct.inst** %185, align 8
  %187 = load %struct.inst*, %struct.inst** @db_Grp2, align 8
  %188 = icmp eq %struct.inst* %186, %187
  br i1 %188, label %219, label %189

189:                                              ; preds = %183
  %190 = load %struct.inst*, %struct.inst** %10, align 8
  %191 = getelementptr inbounds %struct.inst, %struct.inst* %190, i32 0, i32 3
  %192 = load %struct.inst*, %struct.inst** %191, align 8
  %193 = load %struct.inst*, %struct.inst** @db_Grp6, align 8
  %194 = icmp eq %struct.inst* %192, %193
  br i1 %194, label %219, label %195

195:                                              ; preds = %189
  %196 = load %struct.inst*, %struct.inst** %10, align 8
  %197 = getelementptr inbounds %struct.inst, %struct.inst* %196, i32 0, i32 3
  %198 = load %struct.inst*, %struct.inst** %197, align 8
  %199 = load %struct.inst*, %struct.inst** @db_Grp7, align 8
  %200 = icmp eq %struct.inst* %198, %199
  br i1 %200, label %219, label %201

201:                                              ; preds = %195
  %202 = load %struct.inst*, %struct.inst** %10, align 8
  %203 = getelementptr inbounds %struct.inst, %struct.inst* %202, i32 0, i32 3
  %204 = load %struct.inst*, %struct.inst** %203, align 8
  %205 = load %struct.inst*, %struct.inst** @db_Grp8, align 8
  %206 = icmp eq %struct.inst* %204, %205
  br i1 %206, label %219, label %207

207:                                              ; preds = %201
  %208 = load %struct.inst*, %struct.inst** %10, align 8
  %209 = getelementptr inbounds %struct.inst, %struct.inst* %208, i32 0, i32 3
  %210 = load %struct.inst*, %struct.inst** %209, align 8
  %211 = load %struct.inst*, %struct.inst** @db_Grp9, align 8
  %212 = icmp eq %struct.inst* %210, %211
  br i1 %212, label %219, label %213

213:                                              ; preds = %207
  %214 = load %struct.inst*, %struct.inst** %10, align 8
  %215 = getelementptr inbounds %struct.inst, %struct.inst* %214, i32 0, i32 3
  %216 = load %struct.inst*, %struct.inst** %215, align 8
  %217 = load %struct.inst*, %struct.inst** @db_Grp15, align 8
  %218 = icmp eq %struct.inst* %216, %217
  br i1 %218, label %219, label %229

219:                                              ; preds = %213, %207, %201, %195, %189, %183, %177
  %220 = load %struct.inst*, %struct.inst** %10, align 8
  %221 = getelementptr inbounds %struct.inst, %struct.inst* %220, i32 0, i32 3
  %222 = load %struct.inst*, %struct.inst** %221, align 8
  %223 = bitcast %struct.inst* %222 to i8**
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* %15, align 4
  %226 = call i64 @f_reg(i32 %224, i32 %225)
  %227 = getelementptr inbounds i8*, i8** %223, i64 %226
  %228 = load i8*, i8** %227, align 8
  store i8* %228, i8** %11, align 8
  br label %282

229:                                              ; preds = %213
  %230 = load %struct.inst*, %struct.inst** %10, align 8
  %231 = getelementptr inbounds %struct.inst, %struct.inst* %230, i32 0, i32 3
  %232 = load %struct.inst*, %struct.inst** %231, align 8
  %233 = load %struct.inst*, %struct.inst** @db_Grp3, align 8
  %234 = icmp eq %struct.inst* %232, %233
  br i1 %234, label %235, label %250

235:                                              ; preds = %229
  %236 = load %struct.inst*, %struct.inst** %10, align 8
  %237 = getelementptr inbounds %struct.inst, %struct.inst* %236, i32 0, i32 3
  %238 = load %struct.inst*, %struct.inst** %237, align 8
  store %struct.inst* %238, %struct.inst** %10, align 8
  %239 = load %struct.inst*, %struct.inst** %10, align 8
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* %15, align 4
  %242 = call i64 @f_reg(i32 %240, i32 %241)
  %243 = getelementptr inbounds %struct.inst, %struct.inst* %239, i64 %242
  store %struct.inst* %243, %struct.inst** %10, align 8
  %244 = load %struct.inst*, %struct.inst** %10, align 8
  %245 = getelementptr inbounds %struct.inst, %struct.inst* %244, i32 0, i32 1
  %246 = load i8*, i8** %245, align 8
  store i8* %246, i8** %11, align 8
  %247 = load %struct.inst*, %struct.inst** %10, align 8
  %248 = getelementptr inbounds %struct.inst, %struct.inst* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  store i32 %249, i32* %13, align 4
  br label %281

250:                                              ; preds = %229
  %251 = load %struct.inst*, %struct.inst** %10, align 8
  %252 = getelementptr inbounds %struct.inst, %struct.inst* %251, i32 0, i32 3
  %253 = load %struct.inst*, %struct.inst** %252, align 8
  %254 = load %struct.inst*, %struct.inst** @db_Grp4, align 8
  %255 = icmp eq %struct.inst* %253, %254
  br i1 %255, label %262, label %256

256:                                              ; preds = %250
  %257 = load %struct.inst*, %struct.inst** %10, align 8
  %258 = getelementptr inbounds %struct.inst, %struct.inst* %257, i32 0, i32 3
  %259 = load %struct.inst*, %struct.inst** %258, align 8
  %260 = load %struct.inst*, %struct.inst** @db_Grp5, align 8
  %261 = icmp eq %struct.inst* %259, %260
  br i1 %261, label %262, label %280

262:                                              ; preds = %256, %250
  %263 = load %struct.inst*, %struct.inst** %10, align 8
  %264 = getelementptr inbounds %struct.inst, %struct.inst* %263, i32 0, i32 3
  %265 = load %struct.inst*, %struct.inst** %264, align 8
  store %struct.inst* %265, %struct.inst** %10, align 8
  %266 = load %struct.inst*, %struct.inst** %10, align 8
  %267 = load i32, i32* %14, align 4
  %268 = load i32, i32* %15, align 4
  %269 = call i64 @f_reg(i32 %267, i32 %268)
  %270 = getelementptr inbounds %struct.inst, %struct.inst* %266, i64 %269
  store %struct.inst* %270, %struct.inst** %10, align 8
  %271 = load %struct.inst*, %struct.inst** %10, align 8
  %272 = getelementptr inbounds %struct.inst, %struct.inst* %271, i32 0, i32 1
  %273 = load i8*, i8** %272, align 8
  store i8* %273, i8** %11, align 8
  %274 = load %struct.inst*, %struct.inst** %10, align 8
  %275 = getelementptr inbounds %struct.inst, %struct.inst* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  store i32 %276, i32* %13, align 4
  %277 = load %struct.inst*, %struct.inst** %10, align 8
  %278 = getelementptr inbounds %struct.inst, %struct.inst* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  store i32 %279, i32* %12, align 4
  br label %280

280:                                              ; preds = %262, %256
  br label %281

281:                                              ; preds = %280, %235
  br label %282

282:                                              ; preds = %281, %219
  br label %283

283:                                              ; preds = %282, %162
  %284 = load %struct.inst*, %struct.inst** %10, align 8
  %285 = getelementptr inbounds %struct.inst, %struct.inst* %284, i32 0, i32 3
  %286 = load %struct.inst*, %struct.inst** %285, align 8
  %287 = load %struct.inst*, %struct.inst** @db_Grp7, align 8
  %288 = icmp eq %struct.inst* %286, %287
  br i1 %288, label %289, label %337

289:                                              ; preds = %283
  %290 = load i32, i32* %14, align 4
  %291 = load i32, i32* %15, align 4
  %292 = call i32 @f_mod(i32 %290, i32 %291)
  %293 = icmp eq i32 %292, 3
  br i1 %293, label %294, label %337

294:                                              ; preds = %289
  %295 = load i32, i32* %15, align 4
  switch i32 %295, label %336 [
    i32 193, label %296
    i32 194, label %298
    i32 195, label %300
    i32 196, label %302
    i32 200, label %304
    i32 201, label %306
    i32 202, label %308
    i32 203, label %310
    i32 208, label %312
    i32 209, label %314
    i32 216, label %316
    i32 217, label %318
    i32 218, label %320
    i32 219, label %322
    i32 220, label %324
    i32 221, label %326
    i32 222, label %328
    i32 223, label %330
    i32 248, label %332
    i32 249, label %334
  ]

296:                                              ; preds = %294
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  %297 = load i32, i32* @NONE, align 4
  store i32 %297, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

298:                                              ; preds = %294
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %11, align 8
  %299 = load i32, i32* @NONE, align 4
  store i32 %299, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

300:                                              ; preds = %294
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %11, align 8
  %301 = load i32, i32* @NONE, align 4
  store i32 %301, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

302:                                              ; preds = %294
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %11, align 8
  %303 = load i32, i32* @NONE, align 4
  store i32 %303, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

304:                                              ; preds = %294
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %11, align 8
  %305 = load i32, i32* @NONE, align 4
  store i32 %305, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

306:                                              ; preds = %294
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %11, align 8
  %307 = load i32, i32* @NONE, align 4
  store i32 %307, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

308:                                              ; preds = %294
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %11, align 8
  %309 = load i32, i32* @NONE, align 4
  store i32 %309, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

310:                                              ; preds = %294
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %11, align 8
  %311 = load i32, i32* @NONE, align 4
  store i32 %311, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

312:                                              ; preds = %294
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %11, align 8
  %313 = load i32, i32* @NONE, align 4
  store i32 %313, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

314:                                              ; preds = %294
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %11, align 8
  %315 = load i32, i32* @NONE, align 4
  store i32 %315, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

316:                                              ; preds = %294
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %11, align 8
  %317 = load i32, i32* @NONE, align 4
  store i32 %317, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

318:                                              ; preds = %294
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %11, align 8
  %319 = load i32, i32* @NONE, align 4
  store i32 %319, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

320:                                              ; preds = %294
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %11, align 8
  %321 = load i32, i32* @NONE, align 4
  store i32 %321, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

322:                                              ; preds = %294
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8** %11, align 8
  %323 = load i32, i32* @NONE, align 4
  store i32 %323, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

324:                                              ; preds = %294
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8** %11, align 8
  %325 = load i32, i32* @NONE, align 4
  store i32 %325, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

326:                                              ; preds = %294
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8** %11, align 8
  %327 = load i32, i32* @NONE, align 4
  store i32 %327, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

328:                                              ; preds = %294
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8** %11, align 8
  %329 = load i32, i32* @NONE, align 4
  store i32 %329, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

330:                                              ; preds = %294
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8** %11, align 8
  %331 = load i32, i32* @NONE, align 4
  store i32 %331, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

332:                                              ; preds = %294
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8** %11, align 8
  %333 = load i32, i32* @NONE, align 4
  store i32 %333, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

334:                                              ; preds = %294
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8** %11, align 8
  %335 = load i32, i32* @NONE, align 4
  store i32 %335, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %336

336:                                              ; preds = %294, %334, %332, %330, %328, %326, %324, %322, %320, %318, %316, %314, %312, %310, %308, %306, %304, %302, %300, %298, %296
  br label %337

337:                                              ; preds = %336, %289, %283
  %338 = load %struct.inst*, %struct.inst** %10, align 8
  %339 = getelementptr inbounds %struct.inst, %struct.inst* %338, i32 0, i32 3
  %340 = load %struct.inst*, %struct.inst** %339, align 8
  %341 = load %struct.inst*, %struct.inst** @db_Grp15, align 8
  %342 = icmp eq %struct.inst* %340, %341
  br i1 %342, label %343, label %356

343:                                              ; preds = %337
  %344 = load i32, i32* %14, align 4
  %345 = load i32, i32* %15, align 4
  %346 = call i32 @f_mod(i32 %344, i32 %345)
  %347 = icmp eq i32 %346, 3
  br i1 %347, label %348, label %356

348:                                              ; preds = %343
  %349 = load i8**, i8*** @db_Grp15b, align 8
  %350 = load i32, i32* %14, align 4
  %351 = load i32, i32* %15, align 4
  %352 = call i64 @f_reg(i32 %350, i32 %351)
  %353 = getelementptr inbounds i8*, i8** %349, i64 %352
  %354 = load i8*, i8** %353, align 8
  store i8* %354, i8** %11, align 8
  %355 = load i32, i32* @NONE, align 4
  store i32 %355, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %356

356:                                              ; preds = %348, %343, %337
  %357 = load i32, i32* %19, align 4
  %358 = load i32, i32* @TRUE, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %386

360:                                              ; preds = %356
  %361 = load i32, i32* %6, align 4
  %362 = icmp eq i32 %361, 144
  br i1 %362, label %363, label %366

363:                                              ; preds = %360
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8** %11, align 8
  %364 = load i32, i32* @NONE, align 4
  store i32 %364, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %365 = load i32, i32* @FALSE, align 4
  store i32 %365, i32* %19, align 4
  br label %385

366:                                              ; preds = %360
  %367 = load %struct.inst*, %struct.inst** %10, align 8
  %368 = getelementptr inbounds %struct.inst, %struct.inst* %367, i32 0, i32 3
  %369 = load %struct.inst*, %struct.inst** %368, align 8
  %370 = load %struct.inst*, %struct.inst** @db_Grp9, align 8
  %371 = icmp eq %struct.inst* %369, %370
  br i1 %371, label %372, label %384

372:                                              ; preds = %366
  %373 = load i32, i32* %14, align 4
  %374 = load i32, i32* %15, align 4
  %375 = call i32 @f_mod(i32 %373, i32 %374)
  %376 = icmp ne i32 %375, 3
  br i1 %376, label %377, label %384

377:                                              ; preds = %372
  %378 = load i32, i32* %14, align 4
  %379 = load i32, i32* %15, align 4
  %380 = call i64 @f_reg(i32 %378, i32 %379)
  %381 = icmp eq i64 %380, 6
  br i1 %381, label %382, label %384

382:                                              ; preds = %377
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i8** %11, align 8
  %383 = load i32, i32* @FALSE, align 4
  store i32 %383, i32* %19, align 4
  br label %384

384:                                              ; preds = %382, %377, %372, %366
  br label %385

385:                                              ; preds = %384, %363
  br label %386

386:                                              ; preds = %385, %356
  %387 = load i32, i32* %20, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %402

389:                                              ; preds = %386
  %390 = load %struct.inst*, %struct.inst** %10, align 8
  %391 = load %struct.inst*, %struct.inst** @db_inst_0f38fx, align 8
  %392 = getelementptr inbounds %struct.inst, %struct.inst* %391, i64 0
  %393 = icmp eq %struct.inst* %390, %392
  br i1 %393, label %399, label %394

394:                                              ; preds = %389
  %395 = load %struct.inst*, %struct.inst** %10, align 8
  %396 = load %struct.inst*, %struct.inst** @db_inst_0f38fx, align 8
  %397 = getelementptr inbounds %struct.inst, %struct.inst* %396, i64 1
  %398 = icmp eq %struct.inst* %395, %397
  br i1 %398, label %399, label %401

399:                                              ; preds = %394, %389
  %400 = load i32, i32* @FALSE, align 4
  store i32 %400, i32* %20, align 4
  br label %401

401:                                              ; preds = %399, %394
  br label %402

402:                                              ; preds = %401, %386
  %403 = load i32, i32* %7, align 4
  %404 = load i32, i32* @WORD, align 4
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %406, label %424

406:                                              ; preds = %402
  %407 = load %struct.inst*, %struct.inst** %10, align 8
  %408 = getelementptr inbounds %struct.inst, %struct.inst* %407, i32 0, i32 3
  %409 = load %struct.inst*, %struct.inst** %408, align 8
  %410 = load %struct.inst*, %struct.inst** @db_Grp9, align 8
  %411 = icmp eq %struct.inst* %409, %410
  br i1 %411, label %412, label %423

412:                                              ; preds = %406
  %413 = load i32, i32* %14, align 4
  %414 = load i32, i32* %15, align 4
  %415 = call i32 @f_mod(i32 %413, i32 %414)
  %416 = icmp ne i32 %415, 3
  br i1 %416, label %417, label %423

417:                                              ; preds = %412
  %418 = load i32, i32* %14, align 4
  %419 = load i32, i32* %15, align 4
  %420 = call i64 @f_reg(i32 %418, i32 %419)
  %421 = icmp eq i64 %420, 6
  br i1 %421, label %422, label %423

422:                                              ; preds = %417
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i8** %11, align 8
  br label %423

423:                                              ; preds = %422, %417, %412, %406
  br label %424

424:                                              ; preds = %423, %402
  %425 = load i32, i32* %14, align 4
  %426 = load i32, i32* @REX_W, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %441

429:                                              ; preds = %424
  %430 = load i8*, i8** %11, align 8
  %431 = call i64 @strcmp(i8* %430, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %429
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8** %11, align 8
  br label %440

434:                                              ; preds = %429
  %435 = load i8*, i8** %11, align 8
  %436 = call i64 @strcmp(i8* %435, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0))
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %434
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8** %11, align 8
  br label %439

439:                                              ; preds = %438, %434
  br label %440

440:                                              ; preds = %439, %433
  br label %441

441:                                              ; preds = %440, %424
  %442 = load i32, i32* %19, align 4
  %443 = load i32, i32* @TRUE, align 4
  %444 = icmp eq i32 %442, %443
  br i1 %444, label %445, label %447

445:                                              ; preds = %441
  %446 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0))
  br label %447

447:                                              ; preds = %445, %441
  %448 = load i32, i32* %20, align 4
  %449 = load i32, i32* @TRUE, align 4
  %450 = icmp eq i32 %448, %449
  br i1 %450, label %451, label %453

451:                                              ; preds = %447
  %452 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0))
  br label %453

453:                                              ; preds = %451, %447
  %454 = load i32, i32* %12, align 4
  %455 = load i32, i32* @SDEP, align 4
  %456 = icmp eq i32 %454, %455
  br i1 %456, label %457, label %471

457:                                              ; preds = %453
  %458 = load i32, i32* %7, align 4
  %459 = load i32, i32* @LONG, align 4
  %460 = icmp eq i32 %458, %459
  br i1 %460, label %461, label %464

461:                                              ; preds = %457
  %462 = load i8*, i8** %11, align 8
  %463 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %462)
  br label %470

464:                                              ; preds = %457
  %465 = load %struct.inst*, %struct.inst** %10, align 8
  %466 = getelementptr inbounds %struct.inst, %struct.inst* %465, i32 0, i32 3
  %467 = load %struct.inst*, %struct.inst** %466, align 8
  %468 = bitcast %struct.inst* %467 to i8*
  %469 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %468)
  br label %470

470:                                              ; preds = %464, %461
  br label %545

471:                                              ; preds = %453
  %472 = load i32, i32* %12, align 4
  %473 = load i32, i32* @ADEP, align 4
  %474 = icmp eq i32 %472, %473
  br i1 %474, label %475, label %489

475:                                              ; preds = %471
  %476 = load i32, i32* %8, align 4
  %477 = load i32, i32* @FALSE, align 4
  %478 = icmp eq i32 %476, %477
  br i1 %478, label %479, label %482

479:                                              ; preds = %475
  %480 = load i8*, i8** %11, align 8
  %481 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %480)
  br label %488

482:                                              ; preds = %475
  %483 = load %struct.inst*, %struct.inst** %10, align 8
  %484 = getelementptr inbounds %struct.inst, %struct.inst* %483, i32 0, i32 3
  %485 = load %struct.inst*, %struct.inst** %484, align 8
  %486 = bitcast %struct.inst* %485 to i8*
  %487 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %486)
  br label %488

488:                                              ; preds = %482, %479
  br label %544

489:                                              ; preds = %471
  %490 = load i8*, i8** %11, align 8
  %491 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %490)
  %492 = load i32, i32* %6, align 4
  %493 = icmp sge i32 %492, 80
  br i1 %493, label %494, label %497

494:                                              ; preds = %489
  %495 = load i32, i32* %6, align 4
  %496 = icmp sle i32 %495, 95
  br i1 %496, label %503, label %497

497:                                              ; preds = %494, %489
  %498 = load i32, i32* %6, align 4
  %499 = icmp eq i32 %498, 104
  br i1 %499, label %503, label %500

500:                                              ; preds = %497
  %501 = load i32, i32* %6, align 4
  %502 = icmp eq i32 %501, 106
  br i1 %502, label %503, label %506

503:                                              ; preds = %500, %497, %494
  %504 = load i32, i32* @NONE, align 4
  store i32 %504, i32* %12, align 4
  %505 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  br label %506

506:                                              ; preds = %503, %500
  %507 = load i32, i32* %12, align 4
  %508 = load i32, i32* @NONE, align 4
  %509 = icmp ne i32 %507, %508
  br i1 %509, label %510, label %543

510:                                              ; preds = %506
  %511 = load i32, i32* %12, align 4
  %512 = load i32, i32* @BYTE, align 4
  %513 = icmp eq i32 %511, %512
  br i1 %513, label %514, label %517

514:                                              ; preds = %510
  %515 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0))
  %516 = load i32, i32* @BYTE, align 4
  store i32 %516, i32* %7, align 4
  br label %542

517:                                              ; preds = %510
  %518 = load i32, i32* %12, align 4
  %519 = load i32, i32* @WORD, align 4
  %520 = icmp eq i32 %518, %519
  br i1 %520, label %521, label %524

521:                                              ; preds = %517
  %522 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  %523 = load i32, i32* @WORD, align 4
  store i32 %523, i32* %7, align 4
  br label %541

524:                                              ; preds = %517
  %525 = load i32, i32* %7, align 4
  %526 = load i32, i32* @WORD, align 4
  %527 = icmp eq i32 %525, %526
  br i1 %527, label %528, label %530

528:                                              ; preds = %524
  %529 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  br label %540

530:                                              ; preds = %524
  %531 = load i32, i32* %14, align 4
  %532 = load i32, i32* @REX_W, align 4
  %533 = and i32 %531, %532
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %537

535:                                              ; preds = %530
  %536 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  br label %539

537:                                              ; preds = %530
  %538 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  br label %539

539:                                              ; preds = %537, %535
  br label %540

540:                                              ; preds = %539, %528
  br label %541

541:                                              ; preds = %540, %521
  br label %542

542:                                              ; preds = %541, %514
  br label %543

543:                                              ; preds = %542, %506
  br label %544

544:                                              ; preds = %543, %488
  br label %545

545:                                              ; preds = %544, %470
  %546 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0))
  %547 = load i32, i32* @TRUE, align 4
  store i32 %547, i32* %16, align 4
  br label %548

548:                                              ; preds = %1023, %545
  %549 = load i32, i32* %13, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %1027

551:                                              ; preds = %548
  %552 = load i32, i32* %16, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %556, label %554

554:                                              ; preds = %551
  %555 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0))
  br label %556

556:                                              ; preds = %554, %551
  %557 = load i32, i32* %13, align 4
  %558 = and i32 %557, 255
  switch i32 %558, label %1022 [
    i32 154, label %559
    i32 151, label %564
    i32 150, label %570
    i32 153, label %584
    i32 149, label %588
    i32 152, label %593
    i32 139, label %598
    i32 134, label %630
    i32 136, label %649
    i32 138, label %668
    i32 137, label %682
    i32 135, label %710
    i32 133, label %742
    i32 131, label %750
    i32 163, label %758
    i32 162, label %774
    i32 161, label %786
    i32 157, label %788
    i32 132, label %790
    i32 159, label %802
    i32 160, label %808
    i32 158, label %813
    i32 130, label %818
    i32 148, label %823
    i32 143, label %836
    i32 147, label %862
    i32 146, label %869
    i32 145, label %880
    i32 142, label %894
    i32 144, label %901
    i32 141, label %924
    i32 156, label %945
    i32 155, label %963
    i32 129, label %1000
    i32 128, label %1002
    i32 140, label %1004
  ]

559:                                              ; preds = %556
  %560 = load i8*, i8** %9, align 8
  %561 = load i32, i32* %7, align 4
  %562 = load i32, i32* %14, align 4
  %563 = call i32 @db_print_address(i8* %560, i32 %561, i32 %562, %struct.i_addr* %25)
  br label %1022

564:                                              ; preds = %556
  %565 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0))
  %566 = load i8*, i8** %9, align 8
  %567 = load i32, i32* %7, align 4
  %568 = load i32, i32* %14, align 4
  %569 = call i32 @db_print_address(i8* %566, i32 %567, i32 %568, %struct.i_addr* %25)
  br label %1022

570:                                              ; preds = %556
  %571 = load i8*, i8** %9, align 8
  %572 = load i32, i32* %14, align 4
  %573 = load i32, i32* @REX_W, align 4
  %574 = and i32 %572, %573
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %578

576:                                              ; preds = %570
  %577 = load i32, i32* @QUAD, align 4
  br label %580

578:                                              ; preds = %570
  %579 = load i32, i32* @LONG, align 4
  br label %580

580:                                              ; preds = %578, %576
  %581 = phi i32 [ %577, %576 ], [ %579, %578 ]
  %582 = load i32, i32* %14, align 4
  %583 = call i32 @db_print_address(i8* %571, i32 %581, i32 %582, %struct.i_addr* %25)
  br label %1022

584:                                              ; preds = %556
  %585 = load i8*, i8** %9, align 8
  %586 = load i32, i32* @LONG, align 4
  %587 = call i32 @db_print_address(i8* %585, i32 %586, i32 0, %struct.i_addr* %25)
  br label %1022

588:                                              ; preds = %556
  %589 = load i8*, i8** %9, align 8
  %590 = load i32, i32* @WORD, align 4
  %591 = load i32, i32* %14, align 4
  %592 = call i32 @db_print_address(i8* %589, i32 %590, i32 %591, %struct.i_addr* %25)
  br label %1022

593:                                              ; preds = %556
  %594 = load i8*, i8** %9, align 8
  %595 = load i32, i32* @BYTE, align 4
  %596 = load i32, i32* %14, align 4
  %597 = call i32 @db_print_address(i8* %594, i32 %595, i32 %596, %struct.i_addr* %25)
  br label %1022

598:                                              ; preds = %556
  %599 = load i32***, i32**** @db_reg, align 8
  %600 = load i32, i32* %14, align 4
  %601 = icmp ne i32 %600, 0
  %602 = zext i1 %601 to i64
  %603 = select i1 %601, i32 1, i32 0
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32**, i32*** %599, i64 %604
  %606 = load i32**, i32*** %605, align 8
  %607 = load i32, i32* %7, align 4
  %608 = load i32, i32* @LONG, align 4
  %609 = icmp eq i32 %607, %608
  br i1 %609, label %610, label %617

610:                                              ; preds = %598
  %611 = load i32, i32* %14, align 4
  %612 = load i32, i32* @REX_W, align 4
  %613 = and i32 %611, %612
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %617

615:                                              ; preds = %610
  %616 = load i32, i32* @QUAD, align 4
  br label %619

617:                                              ; preds = %610, %598
  %618 = load i32, i32* %7, align 4
  br label %619

619:                                              ; preds = %617, %615
  %620 = phi i32 [ %616, %615 ], [ %618, %617 ]
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i32*, i32** %606, i64 %621
  %623 = load i32*, i32** %622, align 8
  %624 = load i32, i32* %14, align 4
  %625 = load i32, i32* %15, align 4
  %626 = call i64 @f_reg(i32 %624, i32 %625)
  %627 = getelementptr inbounds i32, i32* %623, i64 %626
  %628 = load i32, i32* %627, align 4
  %629 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i32 %628)
  br label %1022

630:                                              ; preds = %556
  %631 = load i32***, i32**** @db_reg, align 8
  %632 = load i32, i32* %14, align 4
  %633 = icmp ne i32 %632, 0
  %634 = zext i1 %633 to i64
  %635 = select i1 %633, i32 1, i32 0
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds i32**, i32*** %631, i64 %636
  %638 = load i32**, i32*** %637, align 8
  %639 = load i32, i32* @WORD, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds i32*, i32** %638, i64 %640
  %642 = load i32*, i32** %641, align 8
  %643 = load i32, i32* %14, align 4
  %644 = load i32, i32* %15, align 4
  %645 = call i64 @f_reg(i32 %643, i32 %644)
  %646 = getelementptr inbounds i32, i32* %642, i64 %645
  %647 = load i32, i32* %646, align 4
  %648 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i32 %647)
  br label %1022

649:                                              ; preds = %556
  %650 = load i32***, i32**** @db_reg, align 8
  %651 = load i32, i32* %14, align 4
  %652 = icmp ne i32 %651, 0
  %653 = zext i1 %652 to i64
  %654 = select i1 %652, i32 1, i32 0
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds i32**, i32*** %650, i64 %655
  %657 = load i32**, i32*** %656, align 8
  %658 = load i32, i32* @QUAD, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i32*, i32** %657, i64 %659
  %661 = load i32*, i32** %660, align 8
  %662 = load i32, i32* %14, align 4
  %663 = load i32, i32* %15, align 4
  %664 = call i64 @f_reg(i32 %662, i32 %663)
  %665 = getelementptr inbounds i32, i32* %661, i64 %664
  %666 = load i32, i32* %665, align 4
  %667 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i32 %666)
  br label %1022

668:                                              ; preds = %556
  %669 = load i32***, i32**** @db_reg, align 8
  %670 = getelementptr inbounds i32**, i32*** %669, i64 0
  %671 = load i32**, i32*** %670, align 8
  %672 = load i32, i32* @QUAD, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds i32*, i32** %671, i64 %673
  %675 = load i32*, i32** %674, align 8
  %676 = load i32, i32* %14, align 4
  %677 = load i32, i32* %6, align 4
  %678 = call i64 @f_rm(i32 %676, i32 %677)
  %679 = getelementptr inbounds i32, i32* %675, i64 %678
  %680 = load i32, i32* %679, align 4
  %681 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i32 %680)
  br label %1022

682:                                              ; preds = %556
  %683 = load i32***, i32**** @db_reg, align 8
  %684 = load i32, i32* %14, align 4
  %685 = icmp ne i32 %684, 0
  %686 = zext i1 %685 to i64
  %687 = select i1 %685, i32 1, i32 0
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds i32**, i32*** %683, i64 %688
  %690 = load i32**, i32*** %689, align 8
  %691 = load i32, i32* %14, align 4
  %692 = load i32, i32* @REX_R, align 4
  %693 = and i32 %691, %692
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %697

695:                                              ; preds = %682
  %696 = load i32, i32* @QUAD, align 4
  br label %699

697:                                              ; preds = %682
  %698 = load i32, i32* @LONG, align 4
  br label %699

699:                                              ; preds = %697, %695
  %700 = phi i32 [ %696, %695 ], [ %698, %697 ]
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i32*, i32** %690, i64 %701
  %703 = load i32*, i32** %702, align 8
  %704 = load i32, i32* %14, align 4
  %705 = load i32, i32* %6, align 4
  %706 = call i64 @f_rm(i32 %704, i32 %705)
  %707 = getelementptr inbounds i32, i32* %703, i64 %706
  %708 = load i32, i32* %707, align 4
  %709 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i32 %708)
  br label %1022

710:                                              ; preds = %556
  %711 = load i32***, i32**** @db_reg, align 8
  %712 = load i32, i32* %14, align 4
  %713 = icmp ne i32 %712, 0
  %714 = zext i1 %713 to i64
  %715 = select i1 %713, i32 1, i32 0
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds i32**, i32*** %711, i64 %716
  %718 = load i32**, i32*** %717, align 8
  %719 = load i32, i32* %7, align 4
  %720 = load i32, i32* @LONG, align 4
  %721 = icmp eq i32 %719, %720
  br i1 %721, label %722, label %729

722:                                              ; preds = %710
  %723 = load i32, i32* %14, align 4
  %724 = load i32, i32* @REX_W, align 4
  %725 = and i32 %723, %724
  %726 = icmp ne i32 %725, 0
  br i1 %726, label %727, label %729

727:                                              ; preds = %722
  %728 = load i32, i32* @QUAD, align 4
  br label %731

729:                                              ; preds = %722, %710
  %730 = load i32, i32* %7, align 4
  br label %731

731:                                              ; preds = %729, %727
  %732 = phi i32 [ %728, %727 ], [ %730, %729 ]
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds i32*, i32** %718, i64 %733
  %735 = load i32*, i32** %734, align 8
  %736 = load i32, i32* %14, align 4
  %737 = load i32, i32* %15, align 4
  %738 = call i64 @f_rm(i32 %736, i32 %737)
  %739 = getelementptr inbounds i32, i32* %735, i64 %738
  %740 = load i32, i32* %739, align 4
  %741 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i32 %740)
  br label %1022

742:                                              ; preds = %556
  %743 = load i32*, i32** @db_seg_reg, align 8
  %744 = load i32, i32* %14, align 4
  %745 = load i32, i32* %15, align 4
  %746 = call i64 @f_reg(i32 %744, i32 %745)
  %747 = getelementptr inbounds i32, i32* %743, i64 %746
  %748 = load i32, i32* %747, align 4
  %749 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i32 %748)
  br label %1022

750:                                              ; preds = %556
  %751 = load i32*, i32** @db_seg_reg, align 8
  %752 = load i32, i32* %14, align 4
  %753 = load i32, i32* %6, align 4
  %754 = call i64 @f_reg(i32 %752, i32 %753)
  %755 = getelementptr inbounds i32, i32* %751, i64 %754
  %756 = load i32, i32* %755, align 4
  %757 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i32 %756)
  br label %1022

758:                                              ; preds = %556
  %759 = load i32***, i32**** @db_reg, align 8
  %760 = load i32, i32* %14, align 4
  %761 = icmp ne i32 %760, 0
  %762 = zext i1 %761 to i64
  %763 = select i1 %761, i32 1, i32 0
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds i32**, i32*** %759, i64 %764
  %766 = load i32**, i32*** %765, align 8
  %767 = load i32, i32* %7, align 4
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds i32*, i32** %766, i64 %768
  %770 = load i32*, i32** %769, align 8
  %771 = getelementptr inbounds i32, i32* %770, i64 0
  %772 = load i32, i32* %771, align 4
  %773 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i32 %772)
  br label %1022

774:                                              ; preds = %556
  %775 = load i8*, i8** %9, align 8
  %776 = icmp ne i8* %775, null
  br i1 %776, label %777, label %780

777:                                              ; preds = %774
  %778 = load i8*, i8** %9, align 8
  %779 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* %778)
  br label %780

780:                                              ; preds = %777, %774
  %781 = load i32, i32* %8, align 4
  %782 = icmp ne i32 %781, 0
  %783 = zext i1 %782 to i64
  %784 = select i1 %782, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0)
  %785 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i8* %784)
  br label %1022

786:                                              ; preds = %556
  %787 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0))
  br label %1022

788:                                              ; preds = %556
  %789 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0))
  br label %1022

790:                                              ; preds = %556
  %791 = load i8*, i8** %9, align 8
  %792 = icmp ne i8* %791, null
  br i1 %792, label %793, label %796

793:                                              ; preds = %790
  %794 = load i8*, i8** %9, align 8
  %795 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* %794)
  br label %796

796:                                              ; preds = %793, %790
  %797 = load i32, i32* %8, align 4
  %798 = icmp ne i32 %797, 0
  %799 = zext i1 %798 to i64
  %800 = select i1 %798, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)
  %801 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i8* %800)
  br label %1022

802:                                              ; preds = %556
  %803 = load i32, i32* %8, align 4
  %804 = icmp ne i32 %803, 0
  %805 = zext i1 %804 to i64
  %806 = select i1 %804, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0)
  %807 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0), i8* %806)
  br label %1022

808:                                              ; preds = %556
  %809 = load i32, i32* %14, align 4
  %810 = load i32, i32* %15, align 4
  %811 = call i64 @f_reg(i32 %809, i32 %810)
  %812 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i64 %811)
  br label %1022

813:                                              ; preds = %556
  %814 = load i32, i32* %14, align 4
  %815 = load i32, i32* %15, align 4
  %816 = call i64 @f_reg(i32 %814, i32 %815)
  %817 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i64 %816)
  br label %1022

818:                                              ; preds = %556
  %819 = load i32, i32* %14, align 4
  %820 = load i32, i32* %15, align 4
  %821 = call i64 @f_reg(i32 %819, i32 %820)
  %822 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0), i64 %821)
  br label %1022

823:                                              ; preds = %556
  %824 = load i32*, i32** @db_lengths, align 8
  %825 = load i32, i32* %7, align 4
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds i32, i32* %824, i64 %826
  %828 = load i32, i32* %827, align 4
  store i32 %828, i32* %24, align 4
  %829 = load i32, i32* %21, align 4
  %830 = load i32, i32* %4, align 4
  %831 = load i32, i32* %24, align 4
  %832 = load i32, i32* @FALSE, align 4
  %833 = call i32 @get_value_inc(i32 %829, i32 %830, i32 %831, i32 %832)
  %834 = load i32, i32* %21, align 4
  %835 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i32 %834)
  br label %1022

836:                                              ; preds = %556
  %837 = load i32*, i32** @db_lengths, align 8
  %838 = load i32, i32* %7, align 4
  %839 = load i32, i32* @LONG, align 4
  %840 = icmp eq i32 %838, %839
  br i1 %840, label %841, label %848

841:                                              ; preds = %836
  %842 = load i32, i32* %14, align 4
  %843 = load i32, i32* @REX_W, align 4
  %844 = and i32 %842, %843
  %845 = icmp ne i32 %844, 0
  br i1 %845, label %846, label %848

846:                                              ; preds = %841
  %847 = load i32, i32* @QUAD, align 4
  br label %850

848:                                              ; preds = %841, %836
  %849 = load i32, i32* %7, align 4
  br label %850

850:                                              ; preds = %848, %846
  %851 = phi i32 [ %847, %846 ], [ %849, %848 ]
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds i32, i32* %837, i64 %852
  %854 = load i32, i32* %853, align 4
  store i32 %854, i32* %24, align 4
  %855 = load i32, i32* %21, align 4
  %856 = load i32, i32* %4, align 4
  %857 = load i32, i32* %24, align 4
  %858 = load i32, i32* @FALSE, align 4
  %859 = call i32 @get_value_inc(i32 %855, i32 %856, i32 %857, i32 %858)
  %860 = load i32, i32* %21, align 4
  %861 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i32 %860)
  br label %1022

862:                                              ; preds = %556
  %863 = load i32, i32* %21, align 4
  %864 = load i32, i32* %4, align 4
  %865 = load i32, i32* @FALSE, align 4
  %866 = call i32 @get_value_inc(i32 %863, i32 %864, i32 1, i32 %865)
  %867 = load i32, i32* %21, align 4
  %868 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i32 %867)
  br label %1022

869:                                              ; preds = %556
  %870 = load i32, i32* %21, align 4
  %871 = load i32, i32* %4, align 4
  %872 = load i32, i32* @FALSE, align 4
  %873 = call i32 @get_value_inc(i32 %870, i32 %871, i32 1, i32 %872)
  %874 = load i32, i32* %21, align 4
  %875 = icmp ne i32 %874, 10
  br i1 %875, label %876, label %879

876:                                              ; preds = %869
  %877 = load i32, i32* %21, align 4
  %878 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i32 %877)
  br label %879

879:                                              ; preds = %876, %869
  br label %1022

880:                                              ; preds = %556
  %881 = load i32, i32* %21, align 4
  %882 = load i32, i32* %4, align 4
  %883 = load i32, i32* @TRUE, align 4
  %884 = call i32 @get_value_inc(i32 %881, i32 %882, i32 1, i32 %883)
  %885 = load i32, i32* %7, align 4
  %886 = load i32, i32* @WORD, align 4
  %887 = icmp eq i32 %885, %886
  br i1 %887, label %888, label %891

888:                                              ; preds = %880
  %889 = load i32, i32* %21, align 4
  %890 = and i32 %889, 65535
  store i32 %890, i32* %21, align 4
  br label %891

891:                                              ; preds = %888, %880
  %892 = load i32, i32* %21, align 4
  %893 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i32 %892)
  br label %1022

894:                                              ; preds = %556
  %895 = load i32, i32* %21, align 4
  %896 = load i32, i32* %4, align 4
  %897 = load i32, i32* @FALSE, align 4
  %898 = call i32 @get_value_inc(i32 %895, i32 %896, i32 2, i32 %897)
  %899 = load i32, i32* %21, align 4
  %900 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i32 %899)
  br label %1022

901:                                              ; preds = %556
  %902 = load i32*, i32** @db_lengths, align 8
  %903 = load i32, i32* %14, align 4
  %904 = load i32, i32* @REX_W, align 4
  %905 = and i32 %903, %904
  %906 = icmp ne i32 %905, 0
  br i1 %906, label %907, label %909

907:                                              ; preds = %901
  %908 = load i32, i32* @QUAD, align 4
  br label %911

909:                                              ; preds = %901
  %910 = load i32, i32* @LONG, align 4
  br label %911

911:                                              ; preds = %909, %907
  %912 = phi i32 [ %908, %907 ], [ %910, %909 ]
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds i32, i32* %902, i64 %913
  %915 = load i32, i32* %914, align 4
  store i32 %915, i32* %24, align 4
  %916 = load i64, i64* %23, align 8
  %917 = trunc i64 %916 to i32
  %918 = load i32, i32* %4, align 4
  %919 = load i32, i32* %24, align 4
  %920 = load i32, i32* @FALSE, align 4
  %921 = call i32 @get_value_inc(i32 %917, i32 %918, i32 %919, i32 %920)
  %922 = load i64, i64* %23, align 8
  %923 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i64 %922)
  br label %1022

924:                                              ; preds = %556
  %925 = load i32, i32* %8, align 4
  %926 = icmp ne i32 %925, 0
  %927 = zext i1 %926 to i64
  %928 = select i1 %926, i32 2, i32 4
  store i32 %928, i32* %24, align 4
  %929 = load i32, i32* %17, align 4
  %930 = load i32, i32* %4, align 4
  %931 = load i32, i32* %24, align 4
  %932 = load i32, i32* @FALSE, align 4
  %933 = call i32 @get_value_inc(i32 %929, i32 %930, i32 %931, i32 %932)
  %934 = load i8*, i8** %9, align 8
  %935 = icmp ne i8* %934, null
  br i1 %935, label %936, label %940

936:                                              ; preds = %924
  %937 = load i8*, i8** %9, align 8
  %938 = load i32, i32* %17, align 4
  %939 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0), i8* %937, i32 %938)
  br label %944

940:                                              ; preds = %924
  %941 = load i32, i32* %17, align 4
  %942 = load i32, i32* @DB_STGY_ANY, align 4
  %943 = call i32 @db_printsym(i32 %941, i32 %942)
  br label %944

944:                                              ; preds = %940, %936
  br label %1022

945:                                              ; preds = %556
  %946 = load i32, i32* %17, align 4
  %947 = load i32, i32* %4, align 4
  %948 = load i32, i32* @TRUE, align 4
  %949 = call i32 @get_value_inc(i32 %946, i32 %947, i32 1, i32 %948)
  %950 = load i32, i32* %4, align 4
  %951 = load i32, i32* %17, align 4
  %952 = add nsw i32 %951, %950
  store i32 %952, i32* %17, align 4
  %953 = load i32, i32* %7, align 4
  %954 = load i32, i32* @WORD, align 4
  %955 = icmp eq i32 %953, %954
  br i1 %955, label %956, label %959

956:                                              ; preds = %945
  %957 = load i32, i32* %17, align 4
  %958 = and i32 %957, 65535
  store i32 %958, i32* %17, align 4
  br label %959

959:                                              ; preds = %956, %945
  %960 = load i32, i32* %17, align 4
  %961 = load i32, i32* @DB_STGY_XTRN, align 4
  %962 = call i32 @db_printsym(i32 %960, i32 %961)
  br label %1022

963:                                              ; preds = %556
  %964 = load i32*, i32** @db_lengths, align 8
  %965 = load i32, i32* %7, align 4
  %966 = load i32, i32* @LONG, align 4
  %967 = icmp eq i32 %965, %966
  br i1 %967, label %968, label %975

968:                                              ; preds = %963
  %969 = load i32, i32* %14, align 4
  %970 = load i32, i32* @REX_W, align 4
  %971 = and i32 %969, %970
  %972 = icmp ne i32 %971, 0
  br i1 %972, label %973, label %975

973:                                              ; preds = %968
  %974 = load i32, i32* @QUAD, align 4
  br label %977

975:                                              ; preds = %968, %963
  %976 = load i32, i32* %7, align 4
  br label %977

977:                                              ; preds = %975, %973
  %978 = phi i32 [ %974, %973 ], [ %976, %975 ]
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds i32, i32* %964, i64 %979
  %981 = load i32, i32* %980, align 4
  store i32 %981, i32* %24, align 4
  %982 = load i32, i32* %17, align 4
  %983 = load i32, i32* %4, align 4
  %984 = load i32, i32* %24, align 4
  %985 = load i32, i32* @FALSE, align 4
  %986 = call i32 @get_value_inc(i32 %982, i32 %983, i32 %984, i32 %985)
  %987 = load i32, i32* %4, align 4
  %988 = load i32, i32* %17, align 4
  %989 = add nsw i32 %988, %987
  store i32 %989, i32* %17, align 4
  %990 = load i32, i32* %7, align 4
  %991 = load i32, i32* @WORD, align 4
  %992 = icmp eq i32 %990, %991
  br i1 %992, label %993, label %996

993:                                              ; preds = %977
  %994 = load i32, i32* %17, align 4
  %995 = and i32 %994, 65535
  store i32 %995, i32* %17, align 4
  br label %996

996:                                              ; preds = %993, %977
  %997 = load i32, i32* %17, align 4
  %998 = load i32, i32* @DB_STGY_XTRN, align 4
  %999 = call i32 @db_printsym(i32 %997, i32 %998)
  br label %1022

1000:                                             ; preds = %556
  %1001 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0))
  br label %1022

1002:                                             ; preds = %556
  %1003 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0))
  br label %1022

1004:                                             ; preds = %556
  %1005 = load i32*, i32** @db_lengths, align 8
  %1006 = load i32, i32* %7, align 4
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds i32, i32* %1005, i64 %1007
  %1009 = load i32, i32* %1008, align 4
  store i32 %1009, i32* %24, align 4
  %1010 = load i32, i32* %21, align 4
  %1011 = load i32, i32* %4, align 4
  %1012 = load i32, i32* %24, align 4
  %1013 = load i32, i32* @FALSE, align 4
  %1014 = call i32 @get_value_inc(i32 %1010, i32 %1011, i32 %1012, i32 %1013)
  %1015 = load i32, i32* %22, align 4
  %1016 = load i32, i32* %4, align 4
  %1017 = load i32, i32* @FALSE, align 4
  %1018 = call i32 @get_value_inc(i32 %1015, i32 %1016, i32 2, i32 %1017)
  %1019 = load i32, i32* %22, align 4
  %1020 = load i32, i32* %21, align 4
  %1021 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i64 0, i64 0), i32 %1019, i32 %1020)
  br label %1022

1022:                                             ; preds = %556, %1004, %1002, %1000, %996, %959, %944, %911, %894, %891, %879, %862, %850, %823, %818, %813, %808, %802, %796, %788, %786, %780, %758, %750, %742, %731, %699, %668, %649, %630, %619, %593, %588, %584, %580, %564, %559
  br label %1023

1023:                                             ; preds = %1022
  %1024 = load i32, i32* %13, align 4
  %1025 = ashr i32 %1024, 8
  store i32 %1025, i32* %13, align 4
  %1026 = load i32, i32* @FALSE, align 4
  store i32 %1026, i32* %16, align 4
  br label %548

1027:                                             ; preds = %548
  %1028 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %1029 = load i32, i32* %4, align 4
  store i32 %1029, i32* %3, align 4
  br label %1030

1030:                                             ; preds = %1027, %82
  %1031 = load i32, i32* %3, align 4
  ret i32 %1031
}

declare dso_local i32 @get_value_inc(i32, i32, i32, i32) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @db_disasm_esc(i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @db_read_address(i32, i32, i32, i32, %struct.i_addr*) #1

declare dso_local i32 @f_mod(i32, i32) #1

declare dso_local i64 @f_reg(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @db_print_address(i8*, i32, i32, %struct.i_addr*) #1

declare dso_local i64 @f_rm(i32, i32) #1

declare dso_local i32 @db_printsym(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
