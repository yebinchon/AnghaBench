; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_protochain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_protochain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.TYPE_15__, %struct.slist* }
%struct.TYPE_15__ = type { i32 }
%struct.slist = type { %struct.slist*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.slist*, %struct.slist* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"bad protocol applied for 'protochain'\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"'protochain' not supported with variable length headers\00", align 1
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@BPF_LD = common dso_local global i32 0, align 4
@BPF_ABS = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_LDX = common dso_local global i32 0, align 4
@BPF_MSH = common dso_local global i32 0, align 4
@ETHERTYPE_IPV6 = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"unsupported proto to gen_protochain\00", align 1
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@IPPROTO_HOPOPTS = common dso_local global i32 0, align 4
@IPPROTO_DSTOPTS = common dso_local global i32 0, align 4
@IPPROTO_ROUTING = common dso_local global i32 0, align 4
@IPPROTO_FRAGMENT = common dso_local global i32 0, align 4
@BPF_IND = common dso_local global i32 0, align 4
@BPF_ST = common dso_local global i32 0, align 4
@BPF_ALU = common dso_local global i32 0, align 4
@BPF_ADD = common dso_local global i32 0, align 4
@BPF_MUL = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i32 0, align 4
@BPF_MISC = common dso_local global i32 0, align 4
@BPF_TAX = common dso_local global i32 0, align 4
@BPF_MEM = common dso_local global i32 0, align 4
@BPF_JA = common dso_local global i32 0, align 4
@IPPROTO_AH = common dso_local global i32 0, align 4
@BPF_TXA = common dso_local global i32 0, align 4
@IPPROTO_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (%struct.TYPE_16__*, i32, i32, i32)* @gen_protochain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_protochain(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.block*, align 8
  %11 = alloca %struct.block*, align 8
  %12 = alloca [100 x %struct.slist*], align 16
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = call i32 @alloc_reg(%struct.TYPE_16__* %27)
  store i32 %28, i32* %22, align 4
  %29 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 0
  %30 = call i32 @memset(%struct.slist** %29, i32 0, i32 800)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %46 [
    i32 129, label %32
    i32 128, label %32
    i32 130, label %33
  ]

32:                                               ; preds = %4, %4
  br label %49

33:                                               ; preds = %4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.block* @gen_protochain(%struct.TYPE_16__* %34, i32 %35, i32 129, i32 %36)
  store %struct.block* %37, %struct.block** %10, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.block* @gen_protochain(%struct.TYPE_16__* %38, i32 %39, i32 128, i32 %40)
  store %struct.block* %41, %struct.block** %11, align 8
  %42 = load %struct.block*, %struct.block** %10, align 8
  %43 = load %struct.block*, %struct.block** %11, align 8
  %44 = call i32 @gen_or(%struct.block* %42, %struct.block* %43)
  %45 = load %struct.block*, %struct.block** %11, align 8
  store %struct.block* %45, %struct.block** %5, align 8
  br label %997

46:                                               ; preds = %4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = call i32 @bpf_error(%struct.TYPE_16__* %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %32
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = call i32 @bpf_error(%struct.TYPE_16__* %56, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  store i32 0, i32* %20, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %61, i32 0)
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %64
  store %struct.slist* %62, %struct.slist** %65, align 8
  %66 = load i32, i32* %20, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %8, align 4
  switch i32 %68, label %173 [
    i32 129, label %69
    i32 128, label %126
  ]

69:                                               ; preds = %58
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = load i32, i32* @ETHERTYPE_IP, align 4
  %72 = call %struct.block* @gen_linktype(%struct.TYPE_16__* %70, i32 %71)
  store %struct.block* %72, %struct.block** %10, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = load i32, i32* @BPF_LD, align 4
  %75 = load i32, i32* @BPF_ABS, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @BPF_B, align 4
  %78 = or i32 %76, %77
  %79 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %73, i32 %78)
  %80 = load i32, i32* %20, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %81
  store %struct.slist* %79, %struct.slist** %82, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %86, %89
  %91 = add nsw i32 %90, 9
  %92 = load i32, i32* %20, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %93
  %95 = load %struct.slist*, %struct.slist** %94, align 8
  %96 = getelementptr inbounds %struct.slist, %struct.slist* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  store i32 %91, i32* %97, align 8
  %98 = load i32, i32* %20, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %20, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %101 = load i32, i32* @BPF_LDX, align 4
  %102 = load i32, i32* @BPF_MSH, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @BPF_B, align 4
  %105 = or i32 %103, %104
  %106 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %100, i32 %105)
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %108
  store %struct.slist* %106, %struct.slist** %109, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = load i32, i32* %20, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %119
  %121 = load %struct.slist*, %struct.slist** %120, align 8
  %122 = getelementptr inbounds %struct.slist, %struct.slist* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  store i32 %117, i32* %123, align 8
  %124 = load i32, i32* %20, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %20, align 4
  br label %176

126:                                              ; preds = %58
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = load i32, i32* @ETHERTYPE_IPV6, align 4
  %129 = call %struct.block* @gen_linktype(%struct.TYPE_16__* %127, i32 %128)
  store %struct.block* %129, %struct.block** %10, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %131 = load i32, i32* @BPF_LD, align 4
  %132 = load i32, i32* @BPF_ABS, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @BPF_B, align 4
  %135 = or i32 %133, %134
  %136 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %130, i32 %135)
  %137 = load i32, i32* %20, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %138
  store %struct.slist* %136, %struct.slist** %139, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %143, %146
  %148 = add nsw i32 %147, 6
  %149 = load i32, i32* %20, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %150
  %152 = load %struct.slist*, %struct.slist** %151, align 8
  %153 = getelementptr inbounds %struct.slist, %struct.slist* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  store i32 %148, i32* %154, align 8
  %155 = load i32, i32* %20, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %20, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %158 = load i32, i32* @BPF_LDX, align 4
  %159 = load i32, i32* @BPF_IMM, align 4
  %160 = or i32 %158, %159
  %161 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %157, i32 %160)
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %163
  store %struct.slist* %161, %struct.slist** %164, align 8
  %165 = load i32, i32* %20, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %166
  %168 = load %struct.slist*, %struct.slist** %167, align 8
  %169 = getelementptr inbounds %struct.slist, %struct.slist* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  store i32 40, i32* %170, align 8
  %171 = load i32, i32* %20, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %20, align 4
  br label %176

173:                                              ; preds = %58
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %175 = call i32 @bpf_error(%struct.TYPE_16__* %174, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %126, %69
  %177 = load i32, i32* %20, align 4
  store i32 %177, i32* %18, align 4
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %179 = load i32, i32* @BPF_JMP, align 4
  %180 = load i32, i32* @BPF_JEQ, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @BPF_K, align 4
  %183 = or i32 %181, %182
  %184 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %178, i32 %183)
  %185 = load i32, i32* %20, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %186
  store %struct.slist* %184, %struct.slist** %187, align 8
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %20, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %190
  %192 = load %struct.slist*, %struct.slist** %191, align 8
  %193 = getelementptr inbounds %struct.slist, %struct.slist* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  store i32 %188, i32* %194, align 8
  %195 = load i32, i32* %20, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %196
  %198 = load %struct.slist*, %struct.slist** %197, align 8
  %199 = getelementptr inbounds %struct.slist, %struct.slist* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  store %struct.slist* null, %struct.slist** %200, align 8
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %202
  %204 = load %struct.slist*, %struct.slist** %203, align 8
  %205 = getelementptr inbounds %struct.slist, %struct.slist* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 2
  store %struct.slist* null, %struct.slist** %206, align 8
  %207 = load i32, i32* %20, align 4
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %20, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %20, align 4
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %211 = load i32, i32* @BPF_JMP, align 4
  %212 = load i32, i32* @BPF_JEQ, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @BPF_K, align 4
  %215 = or i32 %213, %214
  %216 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %210, i32 %215)
  %217 = load i32, i32* %20, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %218
  store %struct.slist* %216, %struct.slist** %219, align 8
  %220 = load i32, i32* %20, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %221
  %223 = load %struct.slist*, %struct.slist** %222, align 8
  %224 = getelementptr inbounds %struct.slist, %struct.slist* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  store %struct.slist* null, %struct.slist** %225, align 8
  %226 = load i32, i32* %20, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %227
  %229 = load %struct.slist*, %struct.slist** %228, align 8
  %230 = getelementptr inbounds %struct.slist, %struct.slist* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 2
  store %struct.slist* null, %struct.slist** %231, align 8
  %232 = load i32, i32* %20, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %233
  %235 = load %struct.slist*, %struct.slist** %234, align 8
  %236 = getelementptr inbounds %struct.slist, %struct.slist* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  store i32 59, i32* %237, align 8
  %238 = load i32, i32* %20, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %239
  %241 = load %struct.slist*, %struct.slist** %240, align 8
  %242 = load i32, i32* %16, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %243
  %245 = load %struct.slist*, %struct.slist** %244, align 8
  %246 = getelementptr inbounds %struct.slist, %struct.slist* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 2
  store %struct.slist* %241, %struct.slist** %247, align 8
  %248 = load i32, i32* %20, align 4
  store i32 %248, i32* %13, align 4
  %249 = load i32, i32* %20, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %20, align 4
  %251 = load i32, i32* %8, align 4
  %252 = icmp eq i32 %251, 128
  br i1 %252, label %253, label %613

253:                                              ; preds = %176
  %254 = load i32, i32* %20, align 4
  store i32 %254, i32* %23, align 4
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %256 = load i32, i32* @BPF_JMP, align 4
  %257 = load i32, i32* @BPF_JEQ, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* @BPF_K, align 4
  %260 = or i32 %258, %259
  %261 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %255, i32 %260)
  %262 = load i32, i32* %20, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %263
  store %struct.slist* %261, %struct.slist** %264, align 8
  %265 = load i32, i32* %20, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %266
  %268 = load %struct.slist*, %struct.slist** %267, align 8
  %269 = getelementptr inbounds %struct.slist, %struct.slist* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 1
  store %struct.slist* null, %struct.slist** %270, align 8
  %271 = load i32, i32* %20, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %272
  %274 = load %struct.slist*, %struct.slist** %273, align 8
  %275 = getelementptr inbounds %struct.slist, %struct.slist* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 2
  store %struct.slist* null, %struct.slist** %276, align 8
  %277 = load i32, i32* @IPPROTO_HOPOPTS, align 4
  %278 = load i32, i32* %20, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %279
  %281 = load %struct.slist*, %struct.slist** %280, align 8
  %282 = getelementptr inbounds %struct.slist, %struct.slist* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 0
  store i32 %277, i32* %283, align 8
  %284 = load i32, i32* %20, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %285
  %287 = load %struct.slist*, %struct.slist** %286, align 8
  %288 = load i32, i32* %13, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %289
  %291 = load %struct.slist*, %struct.slist** %290, align 8
  %292 = getelementptr inbounds %struct.slist, %struct.slist* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 2
  store %struct.slist* %287, %struct.slist** %293, align 8
  %294 = load i32, i32* %20, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %20, align 4
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %297 = load i32, i32* @BPF_JMP, align 4
  %298 = load i32, i32* @BPF_JEQ, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* @BPF_K, align 4
  %301 = or i32 %299, %300
  %302 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %296, i32 %301)
  %303 = load i32, i32* %20, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %304
  store %struct.slist* %302, %struct.slist** %305, align 8
  %306 = load i32, i32* %20, align 4
  %307 = sub nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %308
  %310 = load %struct.slist*, %struct.slist** %309, align 8
  %311 = getelementptr inbounds %struct.slist, %struct.slist* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 2
  store %struct.slist* %302, %struct.slist** %312, align 8
  %313 = load i32, i32* %20, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %314
  %316 = load %struct.slist*, %struct.slist** %315, align 8
  %317 = getelementptr inbounds %struct.slist, %struct.slist* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 1
  store %struct.slist* null, %struct.slist** %318, align 8
  %319 = load i32, i32* %20, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %320
  %322 = load %struct.slist*, %struct.slist** %321, align 8
  %323 = getelementptr inbounds %struct.slist, %struct.slist* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 2
  store %struct.slist* null, %struct.slist** %324, align 8
  %325 = load i32, i32* @IPPROTO_DSTOPTS, align 4
  %326 = load i32, i32* %20, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %327
  %329 = load %struct.slist*, %struct.slist** %328, align 8
  %330 = getelementptr inbounds %struct.slist, %struct.slist* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 0
  store i32 %325, i32* %331, align 8
  %332 = load i32, i32* %20, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %20, align 4
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %335 = load i32, i32* @BPF_JMP, align 4
  %336 = load i32, i32* @BPF_JEQ, align 4
  %337 = or i32 %335, %336
  %338 = load i32, i32* @BPF_K, align 4
  %339 = or i32 %337, %338
  %340 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %334, i32 %339)
  %341 = load i32, i32* %20, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %342
  store %struct.slist* %340, %struct.slist** %343, align 8
  %344 = load i32, i32* %20, align 4
  %345 = sub nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %346
  %348 = load %struct.slist*, %struct.slist** %347, align 8
  %349 = getelementptr inbounds %struct.slist, %struct.slist* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 2
  store %struct.slist* %340, %struct.slist** %350, align 8
  %351 = load i32, i32* %20, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %352
  %354 = load %struct.slist*, %struct.slist** %353, align 8
  %355 = getelementptr inbounds %struct.slist, %struct.slist* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %355, i32 0, i32 1
  store %struct.slist* null, %struct.slist** %356, align 8
  %357 = load i32, i32* %20, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %358
  %360 = load %struct.slist*, %struct.slist** %359, align 8
  %361 = getelementptr inbounds %struct.slist, %struct.slist* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 2
  store %struct.slist* null, %struct.slist** %362, align 8
  %363 = load i32, i32* @IPPROTO_ROUTING, align 4
  %364 = load i32, i32* %20, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %365
  %367 = load %struct.slist*, %struct.slist** %366, align 8
  %368 = getelementptr inbounds %struct.slist, %struct.slist* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 0
  store i32 %363, i32* %369, align 8
  %370 = load i32, i32* %20, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %20, align 4
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %373 = load i32, i32* @BPF_JMP, align 4
  %374 = load i32, i32* @BPF_JEQ, align 4
  %375 = or i32 %373, %374
  %376 = load i32, i32* @BPF_K, align 4
  %377 = or i32 %375, %376
  %378 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %372, i32 %377)
  %379 = load i32, i32* %20, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %380
  store %struct.slist* %378, %struct.slist** %381, align 8
  %382 = load i32, i32* %20, align 4
  %383 = sub nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %384
  %386 = load %struct.slist*, %struct.slist** %385, align 8
  %387 = getelementptr inbounds %struct.slist, %struct.slist* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 2
  store %struct.slist* %378, %struct.slist** %388, align 8
  %389 = load i32, i32* %20, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %390
  %392 = load %struct.slist*, %struct.slist** %391, align 8
  %393 = getelementptr inbounds %struct.slist, %struct.slist* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 1
  store %struct.slist* null, %struct.slist** %394, align 8
  %395 = load i32, i32* %20, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %396
  %398 = load %struct.slist*, %struct.slist** %397, align 8
  %399 = getelementptr inbounds %struct.slist, %struct.slist* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %399, i32 0, i32 2
  store %struct.slist* null, %struct.slist** %400, align 8
  %401 = load i32, i32* @IPPROTO_FRAGMENT, align 4
  %402 = load i32, i32* %20, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %403
  %405 = load %struct.slist*, %struct.slist** %404, align 8
  %406 = getelementptr inbounds %struct.slist, %struct.slist* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 0
  store i32 %401, i32* %407, align 8
  %408 = load i32, i32* %20, align 4
  store i32 %408, i32* %14, align 4
  %409 = load i32, i32* %20, align 4
  store i32 %409, i32* %24, align 4
  %410 = load i32, i32* %20, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %20, align 4
  %412 = load i32, i32* %20, align 4
  store i32 %412, i32* %25, align 4
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %414 = load i32, i32* @BPF_LD, align 4
  %415 = load i32, i32* @BPF_IND, align 4
  %416 = or i32 %414, %415
  %417 = load i32, i32* @BPF_B, align 4
  %418 = or i32 %416, %417
  %419 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %413, i32 %418)
  %420 = load i32, i32* %20, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %421
  store %struct.slist* %419, %struct.slist** %422, align 8
  %423 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %423, i32 0, i32 2
  %425 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = add nsw i32 %426, %429
  %431 = load i32, i32* %20, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %432
  %434 = load %struct.slist*, %struct.slist** %433, align 8
  %435 = getelementptr inbounds %struct.slist, %struct.slist* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %435, i32 0, i32 0
  store i32 %430, i32* %436, align 8
  %437 = load i32, i32* %20, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %20, align 4
  %439 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %440 = load i32, i32* @BPF_ST, align 4
  %441 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %439, i32 %440)
  %442 = load i32, i32* %20, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %443
  store %struct.slist* %441, %struct.slist** %444, align 8
  %445 = load i32, i32* %22, align 4
  %446 = load i32, i32* %20, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %447
  %449 = load %struct.slist*, %struct.slist** %448, align 8
  %450 = getelementptr inbounds %struct.slist, %struct.slist* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 0
  store i32 %445, i32* %451, align 8
  %452 = load i32, i32* %20, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %20, align 4
  %454 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %455 = load i32, i32* @BPF_LD, align 4
  %456 = load i32, i32* @BPF_IND, align 4
  %457 = or i32 %455, %456
  %458 = load i32, i32* @BPF_B, align 4
  %459 = or i32 %457, %458
  %460 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %454, i32 %459)
  %461 = load i32, i32* %20, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %462
  store %struct.slist* %460, %struct.slist** %463, align 8
  %464 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %464, i32 0, i32 2
  %466 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %469 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = add nsw i32 %467, %470
  %472 = add nsw i32 %471, 1
  %473 = load i32, i32* %20, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %474
  %476 = load %struct.slist*, %struct.slist** %475, align 8
  %477 = getelementptr inbounds %struct.slist, %struct.slist* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %477, i32 0, i32 0
  store i32 %472, i32* %478, align 8
  %479 = load i32, i32* %20, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %20, align 4
  %481 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %482 = load i32, i32* @BPF_ALU, align 4
  %483 = load i32, i32* @BPF_ADD, align 4
  %484 = or i32 %482, %483
  %485 = load i32, i32* @BPF_K, align 4
  %486 = or i32 %484, %485
  %487 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %481, i32 %486)
  %488 = load i32, i32* %20, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %489
  store %struct.slist* %487, %struct.slist** %490, align 8
  %491 = load i32, i32* %20, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %492
  %494 = load %struct.slist*, %struct.slist** %493, align 8
  %495 = getelementptr inbounds %struct.slist, %struct.slist* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %495, i32 0, i32 0
  store i32 1, i32* %496, align 8
  %497 = load i32, i32* %20, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %20, align 4
  %499 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %500 = load i32, i32* @BPF_ALU, align 4
  %501 = load i32, i32* @BPF_MUL, align 4
  %502 = or i32 %500, %501
  %503 = load i32, i32* @BPF_K, align 4
  %504 = or i32 %502, %503
  %505 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %499, i32 %504)
  %506 = load i32, i32* %20, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %507
  store %struct.slist* %505, %struct.slist** %508, align 8
  %509 = load i32, i32* %20, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %510
  %512 = load %struct.slist*, %struct.slist** %511, align 8
  %513 = getelementptr inbounds %struct.slist, %struct.slist* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %513, i32 0, i32 0
  store i32 8, i32* %514, align 8
  %515 = load i32, i32* %20, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %20, align 4
  %517 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %518 = load i32, i32* @BPF_ALU, align 4
  %519 = load i32, i32* @BPF_ADD, align 4
  %520 = or i32 %518, %519
  %521 = load i32, i32* @BPF_X, align 4
  %522 = or i32 %520, %521
  %523 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %517, i32 %522)
  %524 = load i32, i32* %20, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %525
  store %struct.slist* %523, %struct.slist** %526, align 8
  %527 = load i32, i32* %20, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %528
  %530 = load %struct.slist*, %struct.slist** %529, align 8
  %531 = getelementptr inbounds %struct.slist, %struct.slist* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %531, i32 0, i32 0
  store i32 0, i32* %532, align 8
  %533 = load i32, i32* %20, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %20, align 4
  %535 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %536 = load i32, i32* @BPF_MISC, align 4
  %537 = load i32, i32* @BPF_TAX, align 4
  %538 = or i32 %536, %537
  %539 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %535, i32 %538)
  %540 = load i32, i32* %20, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %541
  store %struct.slist* %539, %struct.slist** %542, align 8
  %543 = load i32, i32* %20, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %20, align 4
  %545 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %546 = load i32, i32* @BPF_LD, align 4
  %547 = load i32, i32* @BPF_MEM, align 4
  %548 = or i32 %546, %547
  %549 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %545, i32 %548)
  %550 = load i32, i32* %20, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %551
  store %struct.slist* %549, %struct.slist** %552, align 8
  %553 = load i32, i32* %22, align 4
  %554 = load i32, i32* %20, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %555
  %557 = load %struct.slist*, %struct.slist** %556, align 8
  %558 = getelementptr inbounds %struct.slist, %struct.slist* %557, i32 0, i32 1
  %559 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %558, i32 0, i32 0
  store i32 %553, i32* %559, align 8
  %560 = load i32, i32* %20, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %20, align 4
  %562 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %563 = load i32, i32* @BPF_JMP, align 4
  %564 = load i32, i32* @BPF_JA, align 4
  %565 = or i32 %563, %564
  %566 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %562, i32 %565)
  %567 = load i32, i32* %20, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %568
  store %struct.slist* %566, %struct.slist** %569, align 8
  %570 = load i32, i32* %18, align 4
  %571 = load i32, i32* %20, align 4
  %572 = sub nsw i32 %570, %571
  %573 = sub nsw i32 %572, 1
  %574 = load i32, i32* %20, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %575
  %577 = load %struct.slist*, %struct.slist** %576, align 8
  %578 = getelementptr inbounds %struct.slist, %struct.slist* %577, i32 0, i32 1
  %579 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %578, i32 0, i32 0
  store i32 %573, i32* %579, align 8
  %580 = load i32, i32* %20, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %581
  %583 = load %struct.slist*, %struct.slist** %582, align 8
  %584 = load i32, i32* %20, align 4
  %585 = sub nsw i32 %584, 1
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %586
  %588 = load %struct.slist*, %struct.slist** %587, align 8
  %589 = getelementptr inbounds %struct.slist, %struct.slist* %588, i32 0, i32 1
  %590 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %589, i32 0, i32 2
  store %struct.slist* %583, %struct.slist** %590, align 8
  %591 = load i32, i32* %20, align 4
  %592 = add nsw i32 %591, 1
  store i32 %592, i32* %20, align 4
  %593 = load i32, i32* %23, align 4
  store i32 %593, i32* %26, align 4
  br label %594

594:                                              ; preds = %609, %253
  %595 = load i32, i32* %26, align 4
  %596 = load i32, i32* %24, align 4
  %597 = icmp sle i32 %595, %596
  br i1 %597, label %598, label %612

598:                                              ; preds = %594
  %599 = load i32, i32* %25, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %600
  %602 = load %struct.slist*, %struct.slist** %601, align 8
  %603 = load i32, i32* %26, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %604
  %606 = load %struct.slist*, %struct.slist** %605, align 8
  %607 = getelementptr inbounds %struct.slist, %struct.slist* %606, i32 0, i32 1
  %608 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %607, i32 0, i32 1
  store %struct.slist* %602, %struct.slist** %608, align 8
  br label %609

609:                                              ; preds = %598
  %610 = load i32, i32* %26, align 4
  %611 = add nsw i32 %610, 1
  store i32 %611, i32* %26, align 4
  br label %594

612:                                              ; preds = %594
  br label %642

613:                                              ; preds = %176
  %614 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %615 = load i32, i32* @BPF_ALU, align 4
  %616 = load i32, i32* @BPF_ADD, align 4
  %617 = or i32 %615, %616
  %618 = load i32, i32* @BPF_K, align 4
  %619 = or i32 %617, %618
  %620 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %614, i32 %619)
  %621 = load i32, i32* %20, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %622
  store %struct.slist* %620, %struct.slist** %623, align 8
  %624 = load i32, i32* %20, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %625
  %627 = load %struct.slist*, %struct.slist** %626, align 8
  %628 = getelementptr inbounds %struct.slist, %struct.slist* %627, i32 0, i32 1
  %629 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %628, i32 0, i32 0
  store i32 0, i32* %629, align 8
  %630 = load i32, i32* %20, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %631
  %633 = load %struct.slist*, %struct.slist** %632, align 8
  %634 = load i32, i32* %13, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %635
  %637 = load %struct.slist*, %struct.slist** %636, align 8
  %638 = getelementptr inbounds %struct.slist, %struct.slist* %637, i32 0, i32 1
  %639 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %638, i32 0, i32 2
  store %struct.slist* %633, %struct.slist** %639, align 8
  %640 = load i32, i32* %20, align 4
  %641 = add nsw i32 %640, 1
  store i32 %641, i32* %20, align 4
  br label %642

642:                                              ; preds = %613, %612
  %643 = load i32, i32* %20, align 4
  store i32 %643, i32* %17, align 4
  %644 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %645 = load i32, i32* @BPF_JMP, align 4
  %646 = load i32, i32* @BPF_JEQ, align 4
  %647 = or i32 %645, %646
  %648 = load i32, i32* @BPF_K, align 4
  %649 = or i32 %647, %648
  %650 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %644, i32 %649)
  %651 = load i32, i32* %20, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %652
  store %struct.slist* %650, %struct.slist** %653, align 8
  %654 = load i32, i32* %20, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %655
  %657 = load %struct.slist*, %struct.slist** %656, align 8
  %658 = getelementptr inbounds %struct.slist, %struct.slist* %657, i32 0, i32 1
  %659 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %658, i32 0, i32 1
  store %struct.slist* null, %struct.slist** %659, align 8
  %660 = load i32, i32* %20, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %661
  %663 = load %struct.slist*, %struct.slist** %662, align 8
  %664 = getelementptr inbounds %struct.slist, %struct.slist* %663, i32 0, i32 1
  %665 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %664, i32 0, i32 2
  store %struct.slist* null, %struct.slist** %665, align 8
  %666 = load i32, i32* @IPPROTO_AH, align 4
  %667 = load i32, i32* %20, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %668
  %670 = load %struct.slist*, %struct.slist** %669, align 8
  %671 = getelementptr inbounds %struct.slist, %struct.slist* %670, i32 0, i32 1
  %672 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %671, i32 0, i32 0
  store i32 %666, i32* %672, align 8
  %673 = load i32, i32* %14, align 4
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %686

675:                                              ; preds = %642
  %676 = load i32, i32* %17, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %677
  %679 = load %struct.slist*, %struct.slist** %678, align 8
  %680 = load i32, i32* %14, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %681
  %683 = load %struct.slist*, %struct.slist** %682, align 8
  %684 = getelementptr inbounds %struct.slist, %struct.slist* %683, i32 0, i32 1
  %685 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %684, i32 0, i32 2
  store %struct.slist* %679, %struct.slist** %685, align 8
  br label %686

686:                                              ; preds = %675, %642
  %687 = load i32, i32* %20, align 4
  store i32 %687, i32* %15, align 4
  %688 = load i32, i32* %20, align 4
  %689 = add nsw i32 %688, 1
  store i32 %689, i32* %20, align 4
  %690 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %691 = load i32, i32* @BPF_MISC, align 4
  %692 = load i32, i32* @BPF_TXA, align 4
  %693 = or i32 %691, %692
  %694 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %690, i32 %693)
  %695 = load i32, i32* %20, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %696
  store %struct.slist* %694, %struct.slist** %697, align 8
  %698 = load i32, i32* %20, align 4
  %699 = sub nsw i32 %698, 1
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %700
  %702 = load %struct.slist*, %struct.slist** %701, align 8
  %703 = getelementptr inbounds %struct.slist, %struct.slist* %702, i32 0, i32 1
  %704 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %703, i32 0, i32 1
  store %struct.slist* %694, %struct.slist** %704, align 8
  %705 = load i32, i32* %20, align 4
  %706 = add nsw i32 %705, 1
  store i32 %706, i32* %20, align 4
  %707 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %708 = load i32, i32* @BPF_LD, align 4
  %709 = load i32, i32* @BPF_IND, align 4
  %710 = or i32 %708, %709
  %711 = load i32, i32* @BPF_B, align 4
  %712 = or i32 %710, %711
  %713 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %707, i32 %712)
  %714 = load i32, i32* %20, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %715
  store %struct.slist* %713, %struct.slist** %716, align 8
  %717 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %718 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %717, i32 0, i32 2
  %719 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %718, i32 0, i32 0
  %720 = load i32, i32* %719, align 8
  %721 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %722 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %721, i32 0, i32 1
  %723 = load i32, i32* %722, align 4
  %724 = add nsw i32 %720, %723
  %725 = load i32, i32* %20, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %726
  %728 = load %struct.slist*, %struct.slist** %727, align 8
  %729 = getelementptr inbounds %struct.slist, %struct.slist* %728, i32 0, i32 1
  %730 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %729, i32 0, i32 0
  store i32 %724, i32* %730, align 8
  %731 = load i32, i32* %20, align 4
  %732 = add nsw i32 %731, 1
  store i32 %732, i32* %20, align 4
  %733 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %734 = load i32, i32* @BPF_ST, align 4
  %735 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %733, i32 %734)
  %736 = load i32, i32* %20, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %737
  store %struct.slist* %735, %struct.slist** %738, align 8
  %739 = load i32, i32* %22, align 4
  %740 = load i32, i32* %20, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %741
  %743 = load %struct.slist*, %struct.slist** %742, align 8
  %744 = getelementptr inbounds %struct.slist, %struct.slist* %743, i32 0, i32 1
  %745 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %744, i32 0, i32 0
  store i32 %739, i32* %745, align 8
  %746 = load i32, i32* %20, align 4
  %747 = add nsw i32 %746, 1
  store i32 %747, i32* %20, align 4
  %748 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %749 = load i32, i32* @BPF_MISC, align 4
  %750 = load i32, i32* @BPF_TXA, align 4
  %751 = or i32 %749, %750
  %752 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %748, i32 %751)
  %753 = load i32, i32* %20, align 4
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %754
  store %struct.slist* %752, %struct.slist** %755, align 8
  %756 = load i32, i32* %20, align 4
  %757 = sub nsw i32 %756, 1
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %758
  %760 = load %struct.slist*, %struct.slist** %759, align 8
  %761 = getelementptr inbounds %struct.slist, %struct.slist* %760, i32 0, i32 1
  %762 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %761, i32 0, i32 1
  store %struct.slist* %752, %struct.slist** %762, align 8
  %763 = load i32, i32* %20, align 4
  %764 = add nsw i32 %763, 1
  store i32 %764, i32* %20, align 4
  %765 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %766 = load i32, i32* @BPF_ALU, align 4
  %767 = load i32, i32* @BPF_ADD, align 4
  %768 = or i32 %766, %767
  %769 = load i32, i32* @BPF_K, align 4
  %770 = or i32 %768, %769
  %771 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %765, i32 %770)
  %772 = load i32, i32* %20, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %773
  store %struct.slist* %771, %struct.slist** %774, align 8
  %775 = load i32, i32* %20, align 4
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %776
  %778 = load %struct.slist*, %struct.slist** %777, align 8
  %779 = getelementptr inbounds %struct.slist, %struct.slist* %778, i32 0, i32 1
  %780 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %779, i32 0, i32 0
  store i32 1, i32* %780, align 8
  %781 = load i32, i32* %20, align 4
  %782 = add nsw i32 %781, 1
  store i32 %782, i32* %20, align 4
  %783 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %784 = load i32, i32* @BPF_MISC, align 4
  %785 = load i32, i32* @BPF_TAX, align 4
  %786 = or i32 %784, %785
  %787 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %783, i32 %786)
  %788 = load i32, i32* %20, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %789
  store %struct.slist* %787, %struct.slist** %790, align 8
  %791 = load i32, i32* %20, align 4
  %792 = add nsw i32 %791, 1
  store i32 %792, i32* %20, align 4
  %793 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %794 = load i32, i32* @BPF_LD, align 4
  %795 = load i32, i32* @BPF_IND, align 4
  %796 = or i32 %794, %795
  %797 = load i32, i32* @BPF_B, align 4
  %798 = or i32 %796, %797
  %799 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %793, i32 %798)
  %800 = load i32, i32* %20, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %801
  store %struct.slist* %799, %struct.slist** %802, align 8
  %803 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %804 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %803, i32 0, i32 2
  %805 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %804, i32 0, i32 0
  %806 = load i32, i32* %805, align 8
  %807 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %808 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %807, i32 0, i32 1
  %809 = load i32, i32* %808, align 4
  %810 = add nsw i32 %806, %809
  %811 = load i32, i32* %20, align 4
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %812
  %814 = load %struct.slist*, %struct.slist** %813, align 8
  %815 = getelementptr inbounds %struct.slist, %struct.slist* %814, i32 0, i32 1
  %816 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %815, i32 0, i32 0
  store i32 %810, i32* %816, align 8
  %817 = load i32, i32* %20, align 4
  %818 = add nsw i32 %817, 1
  store i32 %818, i32* %20, align 4
  %819 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %820 = load i32, i32* @BPF_ALU, align 4
  %821 = load i32, i32* @BPF_ADD, align 4
  %822 = or i32 %820, %821
  %823 = load i32, i32* @BPF_K, align 4
  %824 = or i32 %822, %823
  %825 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %819, i32 %824)
  %826 = load i32, i32* %20, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %827
  store %struct.slist* %825, %struct.slist** %828, align 8
  %829 = load i32, i32* %20, align 4
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %830
  %832 = load %struct.slist*, %struct.slist** %831, align 8
  %833 = getelementptr inbounds %struct.slist, %struct.slist* %832, i32 0, i32 1
  %834 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %833, i32 0, i32 0
  store i32 2, i32* %834, align 8
  %835 = load i32, i32* %20, align 4
  %836 = add nsw i32 %835, 1
  store i32 %836, i32* %20, align 4
  %837 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %838 = load i32, i32* @BPF_ALU, align 4
  %839 = load i32, i32* @BPF_MUL, align 4
  %840 = or i32 %838, %839
  %841 = load i32, i32* @BPF_K, align 4
  %842 = or i32 %840, %841
  %843 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %837, i32 %842)
  %844 = load i32, i32* %20, align 4
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %845
  store %struct.slist* %843, %struct.slist** %846, align 8
  %847 = load i32, i32* %20, align 4
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %848
  %850 = load %struct.slist*, %struct.slist** %849, align 8
  %851 = getelementptr inbounds %struct.slist, %struct.slist* %850, i32 0, i32 1
  %852 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %851, i32 0, i32 0
  store i32 4, i32* %852, align 8
  %853 = load i32, i32* %20, align 4
  %854 = add nsw i32 %853, 1
  store i32 %854, i32* %20, align 4
  %855 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %856 = load i32, i32* @BPF_MISC, align 4
  %857 = load i32, i32* @BPF_TAX, align 4
  %858 = or i32 %856, %857
  %859 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %855, i32 %858)
  %860 = load i32, i32* %20, align 4
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %861
  store %struct.slist* %859, %struct.slist** %862, align 8
  %863 = load i32, i32* %20, align 4
  %864 = add nsw i32 %863, 1
  store i32 %864, i32* %20, align 4
  %865 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %866 = load i32, i32* @BPF_LD, align 4
  %867 = load i32, i32* @BPF_MEM, align 4
  %868 = or i32 %866, %867
  %869 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %865, i32 %868)
  %870 = load i32, i32* %20, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %871
  store %struct.slist* %869, %struct.slist** %872, align 8
  %873 = load i32, i32* %22, align 4
  %874 = load i32, i32* %20, align 4
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %875
  %877 = load %struct.slist*, %struct.slist** %876, align 8
  %878 = getelementptr inbounds %struct.slist, %struct.slist* %877, i32 0, i32 1
  %879 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %878, i32 0, i32 0
  store i32 %873, i32* %879, align 8
  %880 = load i32, i32* %20, align 4
  %881 = add nsw i32 %880, 1
  store i32 %881, i32* %20, align 4
  %882 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %883 = load i32, i32* @BPF_JMP, align 4
  %884 = load i32, i32* @BPF_JA, align 4
  %885 = or i32 %883, %884
  %886 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %882, i32 %885)
  %887 = load i32, i32* %20, align 4
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %888
  store %struct.slist* %886, %struct.slist** %889, align 8
  %890 = load i32, i32* %18, align 4
  %891 = load i32, i32* %20, align 4
  %892 = sub nsw i32 %890, %891
  %893 = sub nsw i32 %892, 1
  %894 = load i32, i32* %20, align 4
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %895
  %897 = load %struct.slist*, %struct.slist** %896, align 8
  %898 = getelementptr inbounds %struct.slist, %struct.slist* %897, i32 0, i32 1
  %899 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %898, i32 0, i32 0
  store i32 %893, i32* %899, align 8
  %900 = load i32, i32* %20, align 4
  %901 = add nsw i32 %900, 1
  store i32 %901, i32* %20, align 4
  %902 = load i32, i32* %20, align 4
  store i32 %902, i32* %19, align 4
  %903 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %904 = load i32, i32* @BPF_ALU, align 4
  %905 = load i32, i32* @BPF_ADD, align 4
  %906 = or i32 %904, %905
  %907 = load i32, i32* @BPF_K, align 4
  %908 = or i32 %906, %907
  %909 = call %struct.slist* @new_stmt(%struct.TYPE_16__* %903, i32 %908)
  %910 = load i32, i32* %20, align 4
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %911
  store %struct.slist* %909, %struct.slist** %912, align 8
  %913 = load i32, i32* %20, align 4
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %914
  %916 = load %struct.slist*, %struct.slist** %915, align 8
  %917 = getelementptr inbounds %struct.slist, %struct.slist* %916, i32 0, i32 1
  %918 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %917, i32 0, i32 0
  store i32 0, i32* %918, align 8
  %919 = load i32, i32* %19, align 4
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %920
  %922 = load %struct.slist*, %struct.slist** %921, align 8
  %923 = load i32, i32* %13, align 4
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %924
  %926 = load %struct.slist*, %struct.slist** %925, align 8
  %927 = getelementptr inbounds %struct.slist, %struct.slist* %926, i32 0, i32 1
  %928 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %927, i32 0, i32 1
  store %struct.slist* %922, %struct.slist** %928, align 8
  %929 = load i32, i32* %19, align 4
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %930
  %932 = load %struct.slist*, %struct.slist** %931, align 8
  %933 = load i32, i32* %15, align 4
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %934
  %936 = load %struct.slist*, %struct.slist** %935, align 8
  %937 = getelementptr inbounds %struct.slist, %struct.slist* %936, i32 0, i32 1
  %938 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %937, i32 0, i32 2
  store %struct.slist* %932, %struct.slist** %938, align 8
  %939 = load i32, i32* %19, align 4
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %940
  %942 = load %struct.slist*, %struct.slist** %941, align 8
  %943 = load i32, i32* %16, align 4
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %944
  %946 = load %struct.slist*, %struct.slist** %945, align 8
  %947 = getelementptr inbounds %struct.slist, %struct.slist* %946, i32 0, i32 1
  %948 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %947, i32 0, i32 1
  store %struct.slist* %942, %struct.slist** %948, align 8
  %949 = load i32, i32* %20, align 4
  %950 = add nsw i32 %949, 1
  store i32 %950, i32* %20, align 4
  %951 = load i32, i32* %20, align 4
  store i32 %951, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %952

952:                                              ; preds = %968, %686
  %953 = load i32, i32* %20, align 4
  %954 = load i32, i32* %21, align 4
  %955 = sub nsw i32 %954, 1
  %956 = icmp slt i32 %953, %955
  br i1 %956, label %957, label %971

957:                                              ; preds = %952
  %958 = load i32, i32* %20, align 4
  %959 = add nsw i32 %958, 1
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %960
  %962 = load %struct.slist*, %struct.slist** %961, align 8
  %963 = load i32, i32* %20, align 4
  %964 = sext i32 %963 to i64
  %965 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %964
  %966 = load %struct.slist*, %struct.slist** %965, align 8
  %967 = getelementptr inbounds %struct.slist, %struct.slist* %966, i32 0, i32 0
  store %struct.slist* %962, %struct.slist** %967, align 8
  br label %968

968:                                              ; preds = %957
  %969 = load i32, i32* %20, align 4
  %970 = add nsw i32 %969, 1
  store i32 %970, i32* %20, align 4
  br label %952

971:                                              ; preds = %952
  %972 = load i32, i32* %21, align 4
  %973 = sub nsw i32 %972, 1
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 %974
  %976 = load %struct.slist*, %struct.slist** %975, align 8
  %977 = getelementptr inbounds %struct.slist, %struct.slist* %976, i32 0, i32 0
  store %struct.slist* null, %struct.slist** %977, align 8
  %978 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %979 = load i32, i32* @BPF_JEQ, align 4
  %980 = call i32 @JMP(i32 %979)
  %981 = call %struct.block* @new_block(%struct.TYPE_16__* %978, i32 %980)
  store %struct.block* %981, %struct.block** %11, align 8
  %982 = getelementptr inbounds [100 x %struct.slist*], [100 x %struct.slist*]* %12, i64 0, i64 1
  %983 = load %struct.slist*, %struct.slist** %982, align 8
  %984 = load %struct.block*, %struct.block** %11, align 8
  %985 = getelementptr inbounds %struct.block, %struct.block* %984, i32 0, i32 1
  store %struct.slist* %983, %struct.slist** %985, align 8
  %986 = load i32, i32* %7, align 4
  %987 = load %struct.block*, %struct.block** %11, align 8
  %988 = getelementptr inbounds %struct.block, %struct.block* %987, i32 0, i32 0
  %989 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %988, i32 0, i32 0
  store i32 %986, i32* %989, align 8
  %990 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %991 = load i32, i32* %22, align 4
  %992 = call i32 @free_reg(%struct.TYPE_16__* %990, i32 %991)
  %993 = load %struct.block*, %struct.block** %10, align 8
  %994 = load %struct.block*, %struct.block** %11, align 8
  %995 = call i32 @gen_and(%struct.block* %993, %struct.block* %994)
  %996 = load %struct.block*, %struct.block** %11, align 8
  store %struct.block* %996, %struct.block** %5, align 8
  br label %997

997:                                              ; preds = %971, %33
  %998 = load %struct.block*, %struct.block** %5, align 8
  ret %struct.block* %998
}

declare dso_local i32 @alloc_reg(%struct.TYPE_16__*) #1

declare dso_local i32 @memset(%struct.slist**, i32, i32) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

declare dso_local i32 @bpf_error(%struct.TYPE_16__*, i8*) #1

declare dso_local %struct.slist* @new_stmt(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.block* @gen_linktype(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.block* @new_block(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @JMP(i32) #1

declare dso_local i32 @free_reg(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
