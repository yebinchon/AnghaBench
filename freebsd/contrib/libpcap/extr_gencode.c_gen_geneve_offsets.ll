; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_geneve_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_geneve_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slist = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.slist*, %struct.slist* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i32 }

@BPF_ALU = common dso_local global i32 0, align 4
@BPF_ADD = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@BPF_MISC = common dso_local global i32 0, align 4
@BPF_TAX = common dso_local global i32 0, align 4
@BPF_ST = common dso_local global i32 0, align 4
@BPF_LD = common dso_local global i32 0, align 4
@BPF_IND = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_AND = common dso_local global i32 0, align 4
@BPF_MUL = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i32 0, align 4
@DLT_EN10MB = common dso_local global i32 0, align 4
@BPF_H = common dso_local global i32 0, align 4
@BPF_LDX = common dso_local global i32 0, align 4
@BPF_MEM = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@ETHERTYPE_TEB = common dso_local global i32 0, align 4
@BPF_TXA = common dso_local global i32 0, align 4
@BPF_STX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slist* (%struct.TYPE_14__*)* @gen_geneve_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slist* @gen_geneve_offsets(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.slist*, align 8
  %4 = alloca %struct.slist*, align 8
  %5 = alloca %struct.slist*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = load i32, i32* @BPF_ALU, align 4
  %8 = load i32, i32* @BPF_ADD, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @BPF_K, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %6, i32 %11)
  store %struct.slist* %12, %struct.slist** %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %16, %19
  %21 = add nsw i32 %20, 8
  %22 = load %struct.slist*, %struct.slist** %3, align 8
  %23 = getelementptr inbounds %struct.slist, %struct.slist* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = load i32, i32* @BPF_MISC, align 4
  %27 = load i32, i32* @BPF_TAX, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %25, i32 %28)
  store %struct.slist* %29, %struct.slist** %4, align 8
  %30 = load %struct.slist*, %struct.slist** %3, align 8
  %31 = load %struct.slist*, %struct.slist** %4, align 8
  %32 = call i32 @sappend(%struct.slist* %30, %struct.slist* %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %34 = load i32, i32* @BPF_ALU, align 4
  %35 = load i32, i32* @BPF_ADD, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @BPF_K, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %33, i32 %38)
  store %struct.slist* %39, %struct.slist** %4, align 8
  %40 = load %struct.slist*, %struct.slist** %4, align 8
  %41 = getelementptr inbounds %struct.slist, %struct.slist* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  store i32 2, i32* %42, align 8
  %43 = load %struct.slist*, %struct.slist** %3, align 8
  %44 = load %struct.slist*, %struct.slist** %4, align 8
  %45 = call i32 @sappend(%struct.slist* %43, %struct.slist* %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = call i8* @alloc_reg(%struct.TYPE_14__* %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %59 = load i32, i32* @BPF_ST, align 4
  %60 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %58, i32 %59)
  store %struct.slist* %60, %struct.slist** %4, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.slist*, %struct.slist** %4, align 8
  %66 = getelementptr inbounds %struct.slist, %struct.slist* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.slist*, %struct.slist** %3, align 8
  %69 = load %struct.slist*, %struct.slist** %4, align 8
  %70 = call i32 @sappend(%struct.slist* %68, %struct.slist* %69)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %72 = load i32, i32* @BPF_LD, align 4
  %73 = load i32, i32* @BPF_IND, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @BPF_B, align 4
  %76 = or i32 %74, %75
  %77 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %71, i32 %76)
  store %struct.slist* %77, %struct.slist** %4, align 8
  %78 = load %struct.slist*, %struct.slist** %4, align 8
  %79 = getelementptr inbounds %struct.slist, %struct.slist* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load %struct.slist*, %struct.slist** %3, align 8
  %82 = load %struct.slist*, %struct.slist** %4, align 8
  %83 = call i32 @sappend(%struct.slist* %81, %struct.slist* %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %85 = load i32, i32* @BPF_ALU, align 4
  %86 = load i32, i32* @BPF_AND, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @BPF_K, align 4
  %89 = or i32 %87, %88
  %90 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %84, i32 %89)
  store %struct.slist* %90, %struct.slist** %4, align 8
  %91 = load %struct.slist*, %struct.slist** %4, align 8
  %92 = getelementptr inbounds %struct.slist, %struct.slist* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i32 63, i32* %93, align 8
  %94 = load %struct.slist*, %struct.slist** %3, align 8
  %95 = load %struct.slist*, %struct.slist** %4, align 8
  %96 = call i32 @sappend(%struct.slist* %94, %struct.slist* %95)
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %98 = load i32, i32* @BPF_ALU, align 4
  %99 = load i32, i32* @BPF_MUL, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @BPF_K, align 4
  %102 = or i32 %100, %101
  %103 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %97, i32 %102)
  store %struct.slist* %103, %struct.slist** %4, align 8
  %104 = load %struct.slist*, %struct.slist** %4, align 8
  %105 = getelementptr inbounds %struct.slist, %struct.slist* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  store i32 4, i32* %106, align 8
  %107 = load %struct.slist*, %struct.slist** %3, align 8
  %108 = load %struct.slist*, %struct.slist** %4, align 8
  %109 = call i32 @sappend(%struct.slist* %107, %struct.slist* %108)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %111 = load i32, i32* @BPF_ALU, align 4
  %112 = load i32, i32* @BPF_ADD, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @BPF_K, align 4
  %115 = or i32 %113, %114
  %116 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %110, i32 %115)
  store %struct.slist* %116, %struct.slist** %4, align 8
  %117 = load %struct.slist*, %struct.slist** %4, align 8
  %118 = getelementptr inbounds %struct.slist, %struct.slist* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  store i32 8, i32* %119, align 8
  %120 = load %struct.slist*, %struct.slist** %3, align 8
  %121 = load %struct.slist*, %struct.slist** %4, align 8
  %122 = call i32 @sappend(%struct.slist* %120, %struct.slist* %121)
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %124 = load i32, i32* @BPF_ALU, align 4
  %125 = load i32, i32* @BPF_ADD, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @BPF_X, align 4
  %128 = or i32 %126, %127
  %129 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %123, i32 %128)
  store %struct.slist* %129, %struct.slist** %4, align 8
  %130 = load %struct.slist*, %struct.slist** %4, align 8
  %131 = getelementptr inbounds %struct.slist, %struct.slist* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load %struct.slist*, %struct.slist** %3, align 8
  %134 = load %struct.slist*, %struct.slist** %4, align 8
  %135 = call i32 @sappend(%struct.slist* %133, %struct.slist* %134)
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %137 = load i32, i32* @DLT_EN10MB, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %139 = call i8* @alloc_reg(%struct.TYPE_14__* %138)
  %140 = call i32 @PUSH_LINKHDR(%struct.TYPE_14__* %136, i32 %137, i32 1, i32 0, i8* %139)
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %142 = load i32, i32* @BPF_ST, align 4
  %143 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %141, i32 %142)
  store %struct.slist* %143, %struct.slist** %4, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.slist*, %struct.slist** %4, align 8
  %149 = getelementptr inbounds %struct.slist, %struct.slist* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.slist*, %struct.slist** %3, align 8
  %152 = load %struct.slist*, %struct.slist** %4, align 8
  %153 = call i32 @sappend(%struct.slist* %151, %struct.slist* %152)
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  store i32 1, i32* %155, align 4
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %157 = load i32, i32* @BPF_LD, align 4
  %158 = load i32, i32* @BPF_IND, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @BPF_H, align 4
  %161 = or i32 %159, %160
  %162 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %156, i32 %161)
  store %struct.slist* %162, %struct.slist** %4, align 8
  %163 = load %struct.slist*, %struct.slist** %4, align 8
  %164 = getelementptr inbounds %struct.slist, %struct.slist* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  store i32 2, i32* %165, align 8
  %166 = load %struct.slist*, %struct.slist** %3, align 8
  %167 = load %struct.slist*, %struct.slist** %4, align 8
  %168 = call i32 @sappend(%struct.slist* %166, %struct.slist* %167)
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %170 = load i32, i32* @BPF_LDX, align 4
  %171 = load i32, i32* @BPF_MEM, align 4
  %172 = or i32 %170, %171
  %173 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %169, i32 %172)
  store %struct.slist* %173, %struct.slist** %4, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.slist*, %struct.slist** %4, align 8
  %179 = getelementptr inbounds %struct.slist, %struct.slist* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 8
  %181 = load %struct.slist*, %struct.slist** %3, align 8
  %182 = load %struct.slist*, %struct.slist** %4, align 8
  %183 = call i32 @sappend(%struct.slist* %181, %struct.slist* %182)
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %185 = load i32, i32* @BPF_JEQ, align 4
  %186 = call i32 @JMP(i32 %185)
  %187 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %184, i32 %186)
  store %struct.slist* %187, %struct.slist** %5, align 8
  %188 = load i32, i32* @ETHERTYPE_TEB, align 4
  %189 = load %struct.slist*, %struct.slist** %5, align 8
  %190 = getelementptr inbounds %struct.slist, %struct.slist* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  store i32 %188, i32* %191, align 8
  %192 = load %struct.slist*, %struct.slist** %3, align 8
  %193 = load %struct.slist*, %struct.slist** %5, align 8
  %194 = call i32 @sappend(%struct.slist* %192, %struct.slist* %193)
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %196 = load i32, i32* @BPF_MISC, align 4
  %197 = load i32, i32* @BPF_TXA, align 4
  %198 = or i32 %196, %197
  %199 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %195, i32 %198)
  store %struct.slist* %199, %struct.slist** %4, align 8
  %200 = load %struct.slist*, %struct.slist** %3, align 8
  %201 = load %struct.slist*, %struct.slist** %4, align 8
  %202 = call i32 @sappend(%struct.slist* %200, %struct.slist* %201)
  %203 = load %struct.slist*, %struct.slist** %4, align 8
  %204 = load %struct.slist*, %struct.slist** %5, align 8
  %205 = getelementptr inbounds %struct.slist, %struct.slist* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 2
  store %struct.slist* %203, %struct.slist** %206, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %208 = load i32, i32* @BPF_ALU, align 4
  %209 = load i32, i32* @BPF_ADD, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @BPF_K, align 4
  %212 = or i32 %210, %211
  %213 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %207, i32 %212)
  store %struct.slist* %213, %struct.slist** %4, align 8
  %214 = load %struct.slist*, %struct.slist** %4, align 8
  %215 = getelementptr inbounds %struct.slist, %struct.slist* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  store i32 12, i32* %216, align 8
  %217 = load %struct.slist*, %struct.slist** %3, align 8
  %218 = load %struct.slist*, %struct.slist** %4, align 8
  %219 = call i32 @sappend(%struct.slist* %217, %struct.slist* %218)
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %221 = load i32, i32* @BPF_ST, align 4
  %222 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %220, i32 %221)
  store %struct.slist* %222, %struct.slist** %4, align 8
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.slist*, %struct.slist** %4, align 8
  %228 = getelementptr inbounds %struct.slist, %struct.slist* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  store i32 %226, i32* %229, align 8
  %230 = load %struct.slist*, %struct.slist** %3, align 8
  %231 = load %struct.slist*, %struct.slist** %4, align 8
  %232 = call i32 @sappend(%struct.slist* %230, %struct.slist* %231)
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %234 = load i32, i32* @BPF_ALU, align 4
  %235 = load i32, i32* @BPF_ADD, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @BPF_K, align 4
  %238 = or i32 %236, %237
  %239 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %233, i32 %238)
  store %struct.slist* %239, %struct.slist** %4, align 8
  %240 = load %struct.slist*, %struct.slist** %4, align 8
  %241 = getelementptr inbounds %struct.slist, %struct.slist* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  store i32 2, i32* %242, align 8
  %243 = load %struct.slist*, %struct.slist** %3, align 8
  %244 = load %struct.slist*, %struct.slist** %4, align 8
  %245 = call i32 @sappend(%struct.slist* %243, %struct.slist* %244)
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %247 = load i32, i32* @BPF_MISC, align 4
  %248 = load i32, i32* @BPF_TAX, align 4
  %249 = or i32 %247, %248
  %250 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %246, i32 %249)
  store %struct.slist* %250, %struct.slist** %4, align 8
  %251 = load %struct.slist*, %struct.slist** %3, align 8
  %252 = load %struct.slist*, %struct.slist** %4, align 8
  %253 = call i32 @sappend(%struct.slist* %251, %struct.slist* %252)
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %255 = call i8* @alloc_reg(%struct.TYPE_14__* %254)
  %256 = ptrtoint i8* %255 to i32
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 1
  store i32 %256, i32* %259, align 4
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 2
  store i32 1, i32* %262, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  store i32 0, i32* %265, align 8
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %267 = load i32, i32* @BPF_STX, align 4
  %268 = call %struct.slist* @new_stmt(%struct.TYPE_14__* %266, i32 %267)
  store %struct.slist* %268, %struct.slist** %4, align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.slist*, %struct.slist** %4, align 8
  %274 = getelementptr inbounds %struct.slist, %struct.slist* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  store i32 %272, i32* %275, align 8
  %276 = load %struct.slist*, %struct.slist** %3, align 8
  %277 = load %struct.slist*, %struct.slist** %4, align 8
  %278 = call i32 @sappend(%struct.slist* %276, %struct.slist* %277)
  %279 = load %struct.slist*, %struct.slist** %4, align 8
  %280 = load %struct.slist*, %struct.slist** %5, align 8
  %281 = getelementptr inbounds %struct.slist, %struct.slist* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 1
  store %struct.slist* %279, %struct.slist** %282, align 8
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 0
  store i32 0, i32* %284, align 8
  %285 = load %struct.slist*, %struct.slist** %3, align 8
  ret %struct.slist* %285
}

declare dso_local %struct.slist* @new_stmt(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

declare dso_local i8* @alloc_reg(%struct.TYPE_14__*) #1

declare dso_local i32 @PUSH_LINKHDR(%struct.TYPE_14__*, i32, i32, i32, i8*) #1

declare dso_local i32 @JMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
