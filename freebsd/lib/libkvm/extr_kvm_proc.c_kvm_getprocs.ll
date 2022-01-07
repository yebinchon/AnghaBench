; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_proc.c_kvm_getprocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_proc.c_kvm_getprocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i32 }
%struct.TYPE_15__ = type { %struct.kinfo_proc*, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_15__*)* }
%struct.nlist = type { i8*, i64, i32 }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_INC_THREAD = common dso_local global i32 0, align 4
@KERN_PROC_ALL = common dso_local global i32 0, align 4
@KERN_PROC_PROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"kvm_getprocs\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"kinfo_proc size mismatch (expected %zu, got %d)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_nprocs\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"_allproc\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"_ticks\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"_hz\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"_cpu_tick_frequency\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"_zombproc\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"cannot read procs from non-native core\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"%s: no such symbol\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"can't read nprocs\00", align 1
@ticks = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"can't read ticks\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"can't read hz\00", align 1
@cpu_tick_frequency = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"can't read cpu_tick_frequency\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kinfo_proc* @kvm_getprocs(%struct.TYPE_15__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.kinfo_proc*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [6 x %struct.nlist], align 16
  %17 = alloca %struct.nlist*, align 8
  %18 = alloca [2 x %struct.nlist], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load %struct.kinfo_proc*, %struct.kinfo_proc** %20, align 8
  %22 = icmp ne %struct.kinfo_proc* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load %struct.kinfo_proc*, %struct.kinfo_proc** %25, align 8
  %27 = bitcast %struct.kinfo_proc* %26 to i8*
  %28 = call i32 @free(i8* %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %30, align 8
  br label %31

31:                                               ; preds = %23, %4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = call i64 @ISALIVE(%struct.TYPE_15__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %176

35:                                               ; preds = %31
  store i64 0, i64* %13, align 8
  %36 = load i32, i32* @CTL_KERN, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %36, i32* %37, align 16
  %38 = load i32, i32* @KERN_PROC, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @KERN_PROC_INC_THREAD, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  store i32 %47, i32* %15, align 4
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @KERN_PROC_ALL, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @KERN_PROC_PROC, align 4
  %55 = icmp eq i32 %53, %54
  br label %56

56:                                               ; preds = %52, %35
  %57 = phi i1 [ true, %35 ], [ %55, %52 ]
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 3, i32 4
  %60 = call i32 @sysctl(i32* %48, i32 %59, %struct.kinfo_proc* null, i64* %13, i32* null, i32 0)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @_kvm_syserr(%struct.TYPE_15__* %64, i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %5, align 8
  br label %337

69:                                               ; preds = %56
  %70 = load i64, i64* %13, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = call %struct.kinfo_proc* @_kvm_malloc(%struct.TYPE_15__* %73, i64 1)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  store %struct.kinfo_proc* %74, %struct.kinfo_proc** %76, align 8
  br label %160

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %126, %77
  %79 = load i64, i64* %13, align 8
  %80 = udiv i64 %79, 10
  %81 = load i64, i64* %13, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %13, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load %struct.kinfo_proc*, %struct.kinfo_proc** %85, align 8
  %87 = load i64, i64* %13, align 8
  %88 = call i64 @_kvm_realloc(%struct.TYPE_15__* %83, %struct.kinfo_proc* %86, i64 %87)
  %89 = inttoptr i64 %88 to %struct.kinfo_proc*
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store %struct.kinfo_proc* %89, %struct.kinfo_proc** %91, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load %struct.kinfo_proc*, %struct.kinfo_proc** %93, align 8
  %95 = icmp eq %struct.kinfo_proc* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %78
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %5, align 8
  br label %337

97:                                               ; preds = %78
  %98 = load i64, i64* %13, align 8
  store i64 %98, i64* %14, align 8
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @KERN_PROC_ALL, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @KERN_PROC_PROC, align 4
  %106 = icmp eq i32 %104, %105
  br label %107

107:                                              ; preds = %103, %97
  %108 = phi i1 [ true, %97 ], [ %106, %103 ]
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 3, i32 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load %struct.kinfo_proc*, %struct.kinfo_proc** %112, align 8
  %114 = call i32 @sysctl(i32* %99, i32 %110, %struct.kinfo_proc* %113, i64* %13, i32* null, i32 0)
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %107
  %116 = load i32, i32* %11, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load i64, i64* @errno, align 8
  %120 = load i64, i64* @ENOMEM, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i64, i64* %13, align 8
  %124 = load i64, i64* %14, align 8
  %125 = icmp eq i64 %123, %124
  br label %126

126:                                              ; preds = %122, %118, %115
  %127 = phi i1 [ false, %118 ], [ false, %115 ], [ %125, %122 ]
  br i1 %127, label %78, label %128

128:                                              ; preds = %126
  %129 = load i32, i32* %11, align 4
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @_kvm_syserr(%struct.TYPE_15__* %132, i32 %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %5, align 8
  br label %337

137:                                              ; preds = %128
  %138 = load i64, i64* %13, align 8
  %139 = icmp ugt i64 %138, 0
  br i1 %139, label %140, label %159

140:                                              ; preds = %137
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load %struct.kinfo_proc*, %struct.kinfo_proc** %142, align 8
  %144 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = icmp ne i64 %146, 4
  br i1 %147, label %148, label %159

148:                                              ; preds = %140
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load %struct.kinfo_proc*, %struct.kinfo_proc** %154, align 8
  %156 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_15__* %149, i32 %152, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 4, i32 %157)
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %5, align 8
  br label %337

159:                                              ; preds = %140, %137
  br label %160

160:                                              ; preds = %159, %72
  %161 = load i64, i64* %13, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %173

164:                                              ; preds = %160
  %165 = load i64, i64* %13, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load %struct.kinfo_proc*, %struct.kinfo_proc** %167, align 8
  %169 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = udiv i64 %165, %171
  br label %173

173:                                              ; preds = %164, %163
  %174 = phi i64 [ 0, %163 ], [ %172, %164 ]
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %12, align 4
  br label %331

176:                                              ; preds = %31
  %177 = getelementptr inbounds [6 x %struct.nlist], [6 x %struct.nlist]* %16, i64 0, i64 0
  %178 = getelementptr inbounds %struct.nlist, %struct.nlist* %177, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %178, align 16
  %179 = getelementptr inbounds [6 x %struct.nlist], [6 x %struct.nlist]* %16, i64 0, i64 1
  %180 = getelementptr inbounds %struct.nlist, %struct.nlist* %179, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %180, align 8
  %181 = getelementptr inbounds [6 x %struct.nlist], [6 x %struct.nlist]* %16, i64 0, i64 2
  %182 = getelementptr inbounds %struct.nlist, %struct.nlist* %181, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %182, align 16
  %183 = getelementptr inbounds [6 x %struct.nlist], [6 x %struct.nlist]* %16, i64 0, i64 3
  %184 = getelementptr inbounds %struct.nlist, %struct.nlist* %183, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %184, align 8
  %185 = getelementptr inbounds [6 x %struct.nlist], [6 x %struct.nlist]* %16, i64 0, i64 4
  %186 = getelementptr inbounds %struct.nlist, %struct.nlist* %185, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %186, align 16
  %187 = getelementptr inbounds [6 x %struct.nlist], [6 x %struct.nlist]* %16, i64 0, i64 5
  %188 = getelementptr inbounds %struct.nlist, %struct.nlist* %187, i32 0, i32 0
  store i8* null, i8** %188, align 8
  %189 = getelementptr inbounds [2 x %struct.nlist], [2 x %struct.nlist]* %18, i64 0, i64 0
  %190 = getelementptr inbounds %struct.nlist, %struct.nlist* %189, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %190, align 16
  %191 = getelementptr inbounds [2 x %struct.nlist], [2 x %struct.nlist]* %18, i64 0, i64 1
  %192 = getelementptr inbounds %struct.nlist, %struct.nlist* %191, i32 0, i32 0
  store i8* null, i8** %192, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %196, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %199 = call i32 %197(%struct.TYPE_15__* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %176
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_15__* %202, i32 %205, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %5, align 8
  br label %337

207:                                              ; preds = %176
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %209 = getelementptr inbounds [6 x %struct.nlist], [6 x %struct.nlist]* %16, i64 0, i64 0
  %210 = call i64 @kvm_nlist(%struct.TYPE_15__* %208, %struct.nlist* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %232

212:                                              ; preds = %207
  %213 = getelementptr inbounds [6 x %struct.nlist], [6 x %struct.nlist]* %16, i64 0, i64 0
  store %struct.nlist* %213, %struct.nlist** %17, align 8
  br label %214

214:                                              ; preds = %220, %212
  %215 = load %struct.nlist*, %struct.nlist** %17, align 8
  %216 = getelementptr inbounds %struct.nlist, %struct.nlist* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %214
  br label %220

220:                                              ; preds = %219
  %221 = load %struct.nlist*, %struct.nlist** %17, align 8
  %222 = getelementptr inbounds %struct.nlist, %struct.nlist* %221, i32 1
  store %struct.nlist* %222, %struct.nlist** %17, align 8
  br label %214

223:                                              ; preds = %214
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.nlist*, %struct.nlist** %17, align 8
  %229 = getelementptr inbounds %struct.nlist, %struct.nlist* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_15__* %224, i32 %227, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %230)
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %5, align 8
  br label %337

232:                                              ; preds = %207
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %234 = getelementptr inbounds [2 x %struct.nlist], [2 x %struct.nlist]* %18, i64 0, i64 0
  %235 = call i64 @kvm_nlist(%struct.TYPE_15__* %233, %struct.nlist* %234)
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %237 = getelementptr inbounds [6 x %struct.nlist], [6 x %struct.nlist]* %16, i64 0, i64 0
  %238 = getelementptr inbounds %struct.nlist, %struct.nlist* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 16
  %240 = call i64 @KREAD(%struct.TYPE_15__* %236, i32 %239, i32* %12)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %232
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_15__* %243, i32 %246, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %5, align 8
  br label %337

248:                                              ; preds = %232
  %249 = load i32, i32* %7, align 4
  %250 = load i32, i32* @KERN_PROC_ALL, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %257, label %252

252:                                              ; preds = %248
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* @KERN_PROC_INC_THREAD, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %252, %248
  %258 = load i32, i32* %12, align 4
  %259 = mul nsw i32 %258, 10
  store i32 %259, i32* %12, align 4
  br label %260

260:                                              ; preds = %257, %252
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %262 = getelementptr inbounds [6 x %struct.nlist], [6 x %struct.nlist]* %16, i64 0, i64 2
  %263 = getelementptr inbounds %struct.nlist, %struct.nlist* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 16
  %265 = call i64 @KREAD(%struct.TYPE_15__* %261, i32 %264, i32* @ticks)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %260
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_15__* %268, i32 %271, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %5, align 8
  br label %337

273:                                              ; preds = %260
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %275 = getelementptr inbounds [6 x %struct.nlist], [6 x %struct.nlist]* %16, i64 0, i64 3
  %276 = getelementptr inbounds %struct.nlist, %struct.nlist* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = call i64 @KREAD(%struct.TYPE_15__* %274, i32 %277, i32* @hz)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %273
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_15__* %281, i32 %284, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %5, align 8
  br label %337

286:                                              ; preds = %273
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %288 = getelementptr inbounds [6 x %struct.nlist], [6 x %struct.nlist]* %16, i64 0, i64 4
  %289 = getelementptr inbounds %struct.nlist, %struct.nlist* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 16
  %291 = call i64 @KREAD(%struct.TYPE_15__* %287, i32 %290, i32* @cpu_tick_frequency)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %286
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_15__* %294, i32 %297, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %5, align 8
  br label %337

299:                                              ; preds = %286
  %300 = load i32, i32* %12, align 4
  %301 = sext i32 %300 to i64
  %302 = mul i64 %301, 4
  store i64 %302, i64* %13, align 8
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %304 = load i64, i64* %13, align 8
  %305 = call %struct.kinfo_proc* @_kvm_malloc(%struct.TYPE_15__* %303, i64 %304)
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 0
  store %struct.kinfo_proc* %305, %struct.kinfo_proc** %307, align 8
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 0
  %310 = load %struct.kinfo_proc*, %struct.kinfo_proc** %309, align 8
  %311 = icmp eq %struct.kinfo_proc* %310, null
  br i1 %311, label %312, label %313

312:                                              ; preds = %299
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %5, align 8
  br label %337

313:                                              ; preds = %299
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %315 = load i32, i32* %7, align 4
  %316 = load i32, i32* %8, align 4
  %317 = getelementptr inbounds [6 x %struct.nlist], [6 x %struct.nlist]* %16, i64 0, i64 1
  %318 = getelementptr inbounds %struct.nlist, %struct.nlist* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = getelementptr inbounds [2 x %struct.nlist], [2 x %struct.nlist]* %18, i64 0, i64 0
  %321 = getelementptr inbounds %struct.nlist, %struct.nlist* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 16
  %323 = load i32, i32* %12, align 4
  %324 = call i32 @kvm_deadprocs(%struct.TYPE_15__* %314, i32 %315, i32 %316, i32 %319, i32 %322, i32 %323)
  store i32 %324, i32* %12, align 4
  %325 = load i32, i32* %12, align 4
  %326 = icmp sle i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %313
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %329 = call i32 @_kvm_freeprocs(%struct.TYPE_15__* %328)
  store i32 0, i32* %12, align 4
  br label %330

330:                                              ; preds = %327, %313
  br label %331

331:                                              ; preds = %330, %173
  %332 = load i32, i32* %12, align 4
  %333 = load i32*, i32** %9, align 8
  store i32 %332, i32* %333, align 4
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 0
  %336 = load %struct.kinfo_proc*, %struct.kinfo_proc** %335, align 8
  store %struct.kinfo_proc* %336, %struct.kinfo_proc** %5, align 8
  br label %337

337:                                              ; preds = %331, %312, %293, %280, %267, %242, %223, %201, %148, %131, %96, %63
  %338 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  ret %struct.kinfo_proc* %338
}

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ISALIVE(%struct.TYPE_15__*) #1

declare dso_local i32 @sysctl(i32*, i32, %struct.kinfo_proc*, i64*, i32*, i32) #1

declare dso_local i32 @_kvm_syserr(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local %struct.kinfo_proc* @_kvm_malloc(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @_kvm_realloc(%struct.TYPE_15__*, %struct.kinfo_proc*, i64) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i64 @kvm_nlist(%struct.TYPE_15__*, %struct.nlist*) #1

declare dso_local i64 @KREAD(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @kvm_deadprocs(%struct.TYPE_15__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_kvm_freeprocs(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
