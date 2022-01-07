; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_load_802_11_header_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_load_802_11_header_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.slist = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.slist*, %struct.slist* }

@BPF_LDX = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i32 0, align 4
@BPF_MISC = common dso_local global i32 0, align 4
@BPF_TXA = common dso_local global i32 0, align 4
@BPF_ALU = common dso_local global i32 0, align 4
@BPF_ADD = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@BPF_ST = common dso_local global i32 0, align 4
@BPF_LD = common dso_local global i32 0, align 4
@BPF_IND = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_JSET = common dso_local global i32 0, align 4
@BPF_MEM = common dso_local global i32 0, align 4
@DLT_IEEE802_11_RADIO = common dso_local global i64 0, align 8
@BPF_ABS = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4
@BPF_AND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slist* (%struct.TYPE_10__*, %struct.slist*, %struct.slist*)* @gen_load_802_11_header_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slist* @gen_load_802_11_header_len(%struct.TYPE_10__* %0, %struct.slist* %1, %struct.slist* %2) #0 {
  %4 = alloca %struct.slist*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.slist*, align 8
  %7 = alloca %struct.slist*, align 8
  %8 = alloca %struct.slist*, align 8
  %9 = alloca %struct.slist*, align 8
  %10 = alloca %struct.slist*, align 8
  %11 = alloca %struct.slist*, align 8
  %12 = alloca %struct.slist*, align 8
  %13 = alloca %struct.slist*, align 8
  %14 = alloca %struct.slist*, align 8
  %15 = alloca %struct.slist*, align 8
  %16 = alloca %struct.slist*, align 8
  %17 = alloca %struct.slist*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.slist* %1, %struct.slist** %6, align 8
  store %struct.slist* %2, %struct.slist** %7, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load %struct.slist*, %struct.slist** %6, align 8
  store %struct.slist* %24, %struct.slist** %4, align 8
  br label %384

25:                                               ; preds = %3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.slist*, %struct.slist** %6, align 8
  %29 = icmp eq %struct.slist* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = load i32, i32* @BPF_LDX, align 4
  %33 = load i32, i32* @BPF_IMM, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %31, i32 %34)
  store %struct.slist* %35, %struct.slist** %6, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.slist*, %struct.slist** %6, align 8
  %41 = getelementptr inbounds %struct.slist, %struct.slist* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  br label %43

43:                                               ; preds = %30, %25
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = load i32, i32* @BPF_MISC, align 4
  %46 = load i32, i32* @BPF_TXA, align 4
  %47 = or i32 %45, %46
  %48 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %44, i32 %47)
  store %struct.slist* %48, %struct.slist** %8, align 8
  %49 = load %struct.slist*, %struct.slist** %6, align 8
  %50 = load %struct.slist*, %struct.slist** %8, align 8
  %51 = call i32 @sappend(%struct.slist* %49, %struct.slist* %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = load i32, i32* @BPF_ALU, align 4
  %54 = load i32, i32* @BPF_ADD, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @BPF_K, align 4
  %57 = or i32 %55, %56
  %58 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %52, i32 %57)
  store %struct.slist* %58, %struct.slist** %8, align 8
  %59 = load %struct.slist*, %struct.slist** %8, align 8
  %60 = getelementptr inbounds %struct.slist, %struct.slist* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32 24, i32* %61, align 8
  %62 = load %struct.slist*, %struct.slist** %6, align 8
  %63 = load %struct.slist*, %struct.slist** %8, align 8
  %64 = call i32 @sappend(%struct.slist* %62, %struct.slist* %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = load i32, i32* @BPF_ST, align 4
  %67 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %65, i32 %66)
  store %struct.slist* %67, %struct.slist** %8, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.slist*, %struct.slist** %8, align 8
  %73 = getelementptr inbounds %struct.slist, %struct.slist* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.slist*, %struct.slist** %6, align 8
  %76 = load %struct.slist*, %struct.slist** %8, align 8
  %77 = call i32 @sappend(%struct.slist* %75, %struct.slist* %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = load i32, i32* @BPF_LD, align 4
  %80 = load i32, i32* @BPF_IND, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @BPF_B, align 4
  %83 = or i32 %81, %82
  %84 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %78, i32 %83)
  store %struct.slist* %84, %struct.slist** %8, align 8
  %85 = load %struct.slist*, %struct.slist** %8, align 8
  %86 = getelementptr inbounds %struct.slist, %struct.slist* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.slist*, %struct.slist** %6, align 8
  %89 = load %struct.slist*, %struct.slist** %8, align 8
  %90 = call i32 @sappend(%struct.slist* %88, %struct.slist* %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = load i32, i32* @BPF_JSET, align 4
  %93 = call i32 @JMP(i32 %92)
  %94 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %91, i32 %93)
  store %struct.slist* %94, %struct.slist** %9, align 8
  %95 = load %struct.slist*, %struct.slist** %9, align 8
  %96 = getelementptr inbounds %struct.slist, %struct.slist* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i32 8, i32* %97, align 8
  %98 = load %struct.slist*, %struct.slist** %6, align 8
  %99 = load %struct.slist*, %struct.slist** %9, align 8
  %100 = call i32 @sappend(%struct.slist* %98, %struct.slist* %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = load i32, i32* @BPF_JSET, align 4
  %103 = call i32 @JMP(i32 %102)
  %104 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %101, i32 %103)
  store %struct.slist* %104, %struct.slist** %10, align 8
  %105 = load %struct.slist*, %struct.slist** %9, align 8
  %106 = getelementptr inbounds %struct.slist, %struct.slist* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  store %struct.slist* %104, %struct.slist** %107, align 8
  %108 = load %struct.slist*, %struct.slist** %10, align 8
  %109 = getelementptr inbounds %struct.slist, %struct.slist* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  store i32 4, i32* %110, align 8
  %111 = load %struct.slist*, %struct.slist** %6, align 8
  %112 = load %struct.slist*, %struct.slist** %10, align 8
  %113 = call i32 @sappend(%struct.slist* %111, %struct.slist* %112)
  %114 = load %struct.slist*, %struct.slist** %7, align 8
  %115 = load %struct.slist*, %struct.slist** %9, align 8
  %116 = getelementptr inbounds %struct.slist, %struct.slist* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  store %struct.slist* %114, %struct.slist** %117, align 8
  %118 = load %struct.slist*, %struct.slist** %7, align 8
  %119 = load %struct.slist*, %struct.slist** %10, align 8
  %120 = getelementptr inbounds %struct.slist, %struct.slist* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  store %struct.slist* %118, %struct.slist** %121, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = load i32, i32* @BPF_JSET, align 4
  %124 = call i32 @JMP(i32 %123)
  %125 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %122, i32 %124)
  store %struct.slist* %125, %struct.slist** %11, align 8
  %126 = load %struct.slist*, %struct.slist** %10, align 8
  %127 = getelementptr inbounds %struct.slist, %struct.slist* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  store %struct.slist* %125, %struct.slist** %128, align 8
  %129 = load %struct.slist*, %struct.slist** %11, align 8
  %130 = getelementptr inbounds %struct.slist, %struct.slist* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32 128, i32* %131, align 8
  %132 = load %struct.slist*, %struct.slist** %6, align 8
  %133 = load %struct.slist*, %struct.slist** %11, align 8
  %134 = call i32 @sappend(%struct.slist* %132, %struct.slist* %133)
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %136 = load i32, i32* @BPF_LD, align 4
  %137 = load i32, i32* @BPF_MEM, align 4
  %138 = or i32 %136, %137
  %139 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %135, i32 %138)
  store %struct.slist* %139, %struct.slist** %8, align 8
  %140 = load %struct.slist*, %struct.slist** %11, align 8
  %141 = getelementptr inbounds %struct.slist, %struct.slist* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  store %struct.slist* %139, %struct.slist** %142, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.slist*, %struct.slist** %8, align 8
  %148 = getelementptr inbounds %struct.slist, %struct.slist* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  %150 = load %struct.slist*, %struct.slist** %6, align 8
  %151 = load %struct.slist*, %struct.slist** %8, align 8
  %152 = call i32 @sappend(%struct.slist* %150, %struct.slist* %151)
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %154 = load i32, i32* @BPF_ALU, align 4
  %155 = load i32, i32* @BPF_ADD, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @BPF_IMM, align 4
  %158 = or i32 %156, %157
  %159 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %153, i32 %158)
  store %struct.slist* %159, %struct.slist** %8, align 8
  %160 = load %struct.slist*, %struct.slist** %8, align 8
  %161 = getelementptr inbounds %struct.slist, %struct.slist* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  store i32 2, i32* %162, align 8
  %163 = load %struct.slist*, %struct.slist** %6, align 8
  %164 = load %struct.slist*, %struct.slist** %8, align 8
  %165 = call i32 @sappend(%struct.slist* %163, %struct.slist* %164)
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %167 = load i32, i32* @BPF_ST, align 4
  %168 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %166, i32 %167)
  store %struct.slist* %168, %struct.slist** %8, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.slist*, %struct.slist** %8, align 8
  %174 = getelementptr inbounds %struct.slist, %struct.slist* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 8
  %176 = load %struct.slist*, %struct.slist** %6, align 8
  %177 = load %struct.slist*, %struct.slist** %8, align 8
  %178 = call i32 @sappend(%struct.slist* %176, %struct.slist* %177)
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @DLT_IEEE802_11_RADIO, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %377

184:                                              ; preds = %43
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %186 = load i32, i32* @BPF_LD, align 4
  %187 = load i32, i32* @BPF_ABS, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @BPF_W, align 4
  %190 = or i32 %188, %189
  %191 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %185, i32 %190)
  store %struct.slist* %191, %struct.slist** %8, align 8
  %192 = load %struct.slist*, %struct.slist** %11, align 8
  %193 = getelementptr inbounds %struct.slist, %struct.slist* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  store %struct.slist* %191, %struct.slist** %194, align 8
  %195 = load %struct.slist*, %struct.slist** %8, align 8
  %196 = getelementptr inbounds %struct.slist, %struct.slist* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  store i32 4, i32* %197, align 8
  %198 = load %struct.slist*, %struct.slist** %6, align 8
  %199 = load %struct.slist*, %struct.slist** %8, align 8
  %200 = call i32 @sappend(%struct.slist* %198, %struct.slist* %199)
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %202 = load i32, i32* @BPF_JSET, align 4
  %203 = call i32 @JMP(i32 %202)
  %204 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %201, i32 %203)
  store %struct.slist* %204, %struct.slist** %12, align 8
  %205 = call i8* @SWAPLONG(i32 2)
  %206 = ptrtoint i8* %205 to i32
  %207 = load %struct.slist*, %struct.slist** %12, align 8
  %208 = getelementptr inbounds %struct.slist, %struct.slist* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  store i32 %206, i32* %209, align 8
  %210 = load %struct.slist*, %struct.slist** %6, align 8
  %211 = load %struct.slist*, %struct.slist** %12, align 8
  %212 = call i32 @sappend(%struct.slist* %210, %struct.slist* %211)
  %213 = load %struct.slist*, %struct.slist** %7, align 8
  %214 = load %struct.slist*, %struct.slist** %12, align 8
  %215 = getelementptr inbounds %struct.slist, %struct.slist* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 1
  store %struct.slist* %213, %struct.slist** %216, align 8
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %218 = load i32, i32* @BPF_JSET, align 4
  %219 = call i32 @JMP(i32 %218)
  %220 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %217, i32 %219)
  store %struct.slist* %220, %struct.slist** %13, align 8
  %221 = call i8* @SWAPLONG(i32 -2147483648)
  %222 = ptrtoint i8* %221 to i32
  %223 = load %struct.slist*, %struct.slist** %13, align 8
  %224 = getelementptr inbounds %struct.slist, %struct.slist* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  store i32 %222, i32* %225, align 8
  %226 = load %struct.slist*, %struct.slist** %6, align 8
  %227 = load %struct.slist*, %struct.slist** %13, align 8
  %228 = call i32 @sappend(%struct.slist* %226, %struct.slist* %227)
  %229 = load %struct.slist*, %struct.slist** %13, align 8
  %230 = load %struct.slist*, %struct.slist** %12, align 8
  %231 = getelementptr inbounds %struct.slist, %struct.slist* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 2
  store %struct.slist* %229, %struct.slist** %232, align 8
  %233 = load %struct.slist*, %struct.slist** %7, align 8
  %234 = load %struct.slist*, %struct.slist** %13, align 8
  %235 = getelementptr inbounds %struct.slist, %struct.slist* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 2
  store %struct.slist* %233, %struct.slist** %236, align 8
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %238 = load i32, i32* @BPF_JSET, align 4
  %239 = call i32 @JMP(i32 %238)
  %240 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %237, i32 %239)
  store %struct.slist* %240, %struct.slist** %14, align 8
  %241 = call i8* @SWAPLONG(i32 1)
  %242 = ptrtoint i8* %241 to i32
  %243 = load %struct.slist*, %struct.slist** %14, align 8
  %244 = getelementptr inbounds %struct.slist, %struct.slist* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  store i32 %242, i32* %245, align 8
  %246 = load %struct.slist*, %struct.slist** %6, align 8
  %247 = load %struct.slist*, %struct.slist** %14, align 8
  %248 = call i32 @sappend(%struct.slist* %246, %struct.slist* %247)
  %249 = load %struct.slist*, %struct.slist** %14, align 8
  %250 = load %struct.slist*, %struct.slist** %13, align 8
  %251 = getelementptr inbounds %struct.slist, %struct.slist* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 1
  store %struct.slist* %249, %struct.slist** %252, align 8
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %254 = load i32, i32* @BPF_LD, align 4
  %255 = load i32, i32* @BPF_ABS, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @BPF_B, align 4
  %258 = or i32 %256, %257
  %259 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %253, i32 %258)
  store %struct.slist* %259, %struct.slist** %8, align 8
  %260 = load %struct.slist*, %struct.slist** %8, align 8
  %261 = getelementptr inbounds %struct.slist, %struct.slist* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  store i32 16, i32* %262, align 8
  %263 = load %struct.slist*, %struct.slist** %6, align 8
  %264 = load %struct.slist*, %struct.slist** %8, align 8
  %265 = call i32 @sappend(%struct.slist* %263, %struct.slist* %264)
  %266 = load %struct.slist*, %struct.slist** %8, align 8
  %267 = load %struct.slist*, %struct.slist** %14, align 8
  %268 = getelementptr inbounds %struct.slist, %struct.slist* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 2
  store %struct.slist* %266, %struct.slist** %269, align 8
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %271 = load i32, i32* @BPF_JSET, align 4
  %272 = call i32 @JMP(i32 %271)
  %273 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %270, i32 %272)
  store %struct.slist* %273, %struct.slist** %15, align 8
  %274 = load %struct.slist*, %struct.slist** %15, align 8
  %275 = getelementptr inbounds %struct.slist, %struct.slist* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  store i32 32, i32* %276, align 8
  %277 = load %struct.slist*, %struct.slist** %6, align 8
  %278 = load %struct.slist*, %struct.slist** %15, align 8
  %279 = call i32 @sappend(%struct.slist* %277, %struct.slist* %278)
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %281 = load i32, i32* @BPF_LD, align 4
  %282 = load i32, i32* @BPF_ABS, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* @BPF_B, align 4
  %285 = or i32 %283, %284
  %286 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %280, i32 %285)
  store %struct.slist* %286, %struct.slist** %8, align 8
  %287 = load %struct.slist*, %struct.slist** %8, align 8
  %288 = getelementptr inbounds %struct.slist, %struct.slist* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 0
  store i32 8, i32* %289, align 8
  %290 = load %struct.slist*, %struct.slist** %6, align 8
  %291 = load %struct.slist*, %struct.slist** %8, align 8
  %292 = call i32 @sappend(%struct.slist* %290, %struct.slist* %291)
  %293 = load %struct.slist*, %struct.slist** %8, align 8
  %294 = load %struct.slist*, %struct.slist** %14, align 8
  %295 = getelementptr inbounds %struct.slist, %struct.slist* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 1
  store %struct.slist* %293, %struct.slist** %296, align 8
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %298 = load i32, i32* @BPF_JSET, align 4
  %299 = call i32 @JMP(i32 %298)
  %300 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %297, i32 %299)
  store %struct.slist* %300, %struct.slist** %16, align 8
  %301 = load %struct.slist*, %struct.slist** %16, align 8
  %302 = getelementptr inbounds %struct.slist, %struct.slist* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 0
  store i32 32, i32* %303, align 8
  %304 = load %struct.slist*, %struct.slist** %6, align 8
  %305 = load %struct.slist*, %struct.slist** %16, align 8
  %306 = call i32 @sappend(%struct.slist* %304, %struct.slist* %305)
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %308 = load i32, i32* @BPF_LD, align 4
  %309 = load i32, i32* @BPF_MEM, align 4
  %310 = or i32 %308, %309
  %311 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %307, i32 %310)
  store %struct.slist* %311, %struct.slist** %17, align 8
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.slist*, %struct.slist** %17, align 8
  %317 = getelementptr inbounds %struct.slist, %struct.slist* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  store i32 %315, i32* %318, align 8
  %319 = load %struct.slist*, %struct.slist** %6, align 8
  %320 = load %struct.slist*, %struct.slist** %17, align 8
  %321 = call i32 @sappend(%struct.slist* %319, %struct.slist* %320)
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %323 = load i32, i32* @BPF_ALU, align 4
  %324 = load i32, i32* @BPF_ADD, align 4
  %325 = or i32 %323, %324
  %326 = load i32, i32* @BPF_IMM, align 4
  %327 = or i32 %325, %326
  %328 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %322, i32 %327)
  store %struct.slist* %328, %struct.slist** %8, align 8
  %329 = load %struct.slist*, %struct.slist** %8, align 8
  %330 = getelementptr inbounds %struct.slist, %struct.slist* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 0
  store i32 3, i32* %331, align 8
  %332 = load %struct.slist*, %struct.slist** %6, align 8
  %333 = load %struct.slist*, %struct.slist** %8, align 8
  %334 = call i32 @sappend(%struct.slist* %332, %struct.slist* %333)
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %336 = load i32, i32* @BPF_ALU, align 4
  %337 = load i32, i32* @BPF_AND, align 4
  %338 = or i32 %336, %337
  %339 = load i32, i32* @BPF_IMM, align 4
  %340 = or i32 %338, %339
  %341 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %335, i32 %340)
  store %struct.slist* %341, %struct.slist** %8, align 8
  %342 = load %struct.slist*, %struct.slist** %8, align 8
  %343 = getelementptr inbounds %struct.slist, %struct.slist* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 0
  store i32 -4, i32* %344, align 8
  %345 = load %struct.slist*, %struct.slist** %6, align 8
  %346 = load %struct.slist*, %struct.slist** %8, align 8
  %347 = call i32 @sappend(%struct.slist* %345, %struct.slist* %346)
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %349 = load i32, i32* @BPF_ST, align 4
  %350 = call %struct.slist* @new_stmt(%struct.TYPE_10__* %348, i32 %349)
  store %struct.slist* %350, %struct.slist** %8, align 8
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.slist*, %struct.slist** %8, align 8
  %356 = getelementptr inbounds %struct.slist, %struct.slist* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 0
  store i32 %354, i32* %357, align 8
  %358 = load %struct.slist*, %struct.slist** %6, align 8
  %359 = load %struct.slist*, %struct.slist** %8, align 8
  %360 = call i32 @sappend(%struct.slist* %358, %struct.slist* %359)
  %361 = load %struct.slist*, %struct.slist** %17, align 8
  %362 = load %struct.slist*, %struct.slist** %15, align 8
  %363 = getelementptr inbounds %struct.slist, %struct.slist* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 2
  store %struct.slist* %361, %struct.slist** %364, align 8
  %365 = load %struct.slist*, %struct.slist** %7, align 8
  %366 = load %struct.slist*, %struct.slist** %15, align 8
  %367 = getelementptr inbounds %struct.slist, %struct.slist* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 1
  store %struct.slist* %365, %struct.slist** %368, align 8
  %369 = load %struct.slist*, %struct.slist** %17, align 8
  %370 = load %struct.slist*, %struct.slist** %16, align 8
  %371 = getelementptr inbounds %struct.slist, %struct.slist* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 2
  store %struct.slist* %369, %struct.slist** %372, align 8
  %373 = load %struct.slist*, %struct.slist** %7, align 8
  %374 = load %struct.slist*, %struct.slist** %16, align 8
  %375 = getelementptr inbounds %struct.slist, %struct.slist* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 1
  store %struct.slist* %373, %struct.slist** %376, align 8
  br label %382

377:                                              ; preds = %43
  %378 = load %struct.slist*, %struct.slist** %7, align 8
  %379 = load %struct.slist*, %struct.slist** %11, align 8
  %380 = getelementptr inbounds %struct.slist, %struct.slist* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 1
  store %struct.slist* %378, %struct.slist** %381, align 8
  br label %382

382:                                              ; preds = %377, %184
  %383 = load %struct.slist*, %struct.slist** %6, align 8
  store %struct.slist* %383, %struct.slist** %4, align 8
  br label %384

384:                                              ; preds = %382, %23
  %385 = load %struct.slist*, %struct.slist** %4, align 8
  ret %struct.slist* %385
}

declare dso_local %struct.slist* @new_stmt(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

declare dso_local i32 @JMP(i32) #1

declare dso_local i8* @SWAPLONG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
