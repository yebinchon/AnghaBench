; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pfsync.c_print_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pfsync.c_print_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.pfsync_state = type { i64, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32, i32, %struct.pfsync_state_key*, %struct.pfsync_state_peer, %struct.pfsync_state_peer }
%struct.pfsync_state_key = type { i64*, i32* }
%struct.pfsync_state_peer = type { i32 }

@PF_OUT = common dso_local global i64 0, align 8
@PF_SK_STACK = common dso_local global i64 0, align 8
@PF_SK_WIRE = common dso_local global i64 0, align 8
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\09%s \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"proto %u \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" <- \00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"\0A\09age %.2u:%.2u:%.2u\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c", expires in %.2u:%.2u:%.2u\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c", %ju:%ju pkts, %ju:%ju bytes\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c", anchor %u\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c", rule %u\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"\0A\09id: %016jx creatorid: %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.pfsync_state*)* @print_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_state(%struct.TYPE_6__* %0, %struct.pfsync_state* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.pfsync_state*, align 8
  %5 = alloca %struct.pfsync_state_peer*, align 8
  %6 = alloca %struct.pfsync_state_peer*, align 8
  %7 = alloca %struct.pfsync_state_key*, align 8
  %8 = alloca %struct.pfsync_state_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.pfsync_state* %1, %struct.pfsync_state** %4, align 8
  %16 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %17 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PF_OUT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %2
  %22 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %23 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %22, i32 0, i32 13
  store %struct.pfsync_state_peer* %23, %struct.pfsync_state_peer** %5, align 8
  %24 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %25 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %24, i32 0, i32 14
  store %struct.pfsync_state_peer* %25, %struct.pfsync_state_peer** %6, align 8
  %26 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %27 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %26, i32 0, i32 12
  %28 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %27, align 8
  %29 = load i64, i64* @PF_SK_STACK, align 8
  %30 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %28, i64 %29
  store %struct.pfsync_state_key* %30, %struct.pfsync_state_key** %7, align 8
  %31 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %32 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %31, i32 0, i32 12
  %33 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %32, align 8
  %34 = load i64, i64* @PF_SK_WIRE, align 8
  %35 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %33, i64 %34
  store %struct.pfsync_state_key* %35, %struct.pfsync_state_key** %8, align 8
  %36 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %37 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IPPROTO_ICMP, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %21
  %42 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %43 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41, %21
  %48 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %8, align 8
  %49 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %7, align 8
  %54 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  store i64 %52, i64* %56, align 8
  br label %57

57:                                               ; preds = %47, %41
  br label %95

58:                                               ; preds = %2
  %59 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %60 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %59, i32 0, i32 14
  store %struct.pfsync_state_peer* %60, %struct.pfsync_state_peer** %5, align 8
  %61 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %62 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %61, i32 0, i32 13
  store %struct.pfsync_state_peer* %62, %struct.pfsync_state_peer** %6, align 8
  %63 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %64 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %63, i32 0, i32 12
  %65 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %64, align 8
  %66 = load i64, i64* @PF_SK_WIRE, align 8
  %67 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %65, i64 %66
  store %struct.pfsync_state_key* %67, %struct.pfsync_state_key** %7, align 8
  %68 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %69 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %68, i32 0, i32 12
  %70 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %69, align 8
  %71 = load i64, i64* @PF_SK_STACK, align 8
  %72 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %70, i64 %71
  store %struct.pfsync_state_key* %72, %struct.pfsync_state_key** %8, align 8
  %73 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %74 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IPPROTO_ICMP, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %58
  %79 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %80 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %78, %58
  %85 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %8, align 8
  %86 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %7, align 8
  %91 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  store i64 %89, i64* %93, align 8
  br label %94

94:                                               ; preds = %84, %78
  br label %95

95:                                               ; preds = %94, %57
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %98 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %97, i32 0, i32 11
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to %struct.TYPE_6__*
  %102 = call i32 @ND_PRINT(%struct.TYPE_6__* %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %105 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to %struct.TYPE_6__*
  %109 = call i32 @ND_PRINT(%struct.TYPE_6__* %108)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %8, align 8
  %112 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %8, align 8
  %116 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %121 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %120, i32 0, i32 10
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @print_host(%struct.TYPE_6__* %110, i32* %114, i64 %119, i32 %122, i32* null)
  %124 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %8, align 8
  %125 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %7, align 8
  %129 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %133 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @PF_ANEQ(i32* %127, i32* %131, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %149, label %137

137:                                              ; preds = %95
  %138 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %8, align 8
  %139 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %7, align 8
  %144 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %142, %147
  br i1 %148, label %149, label %168

149:                                              ; preds = %137, %95
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %151 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([3 x i8]* @.str.2 to %struct.TYPE_6__*))
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %153 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %7, align 8
  %154 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %7, align 8
  %158 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %163 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %162, i32 0, i32 10
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @print_host(%struct.TYPE_6__* %152, i32* %156, i64 %161, i32 %164, i32* null)
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %167 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([2 x i8]* @.str.3 to %struct.TYPE_6__*))
  br label %168

168:                                              ; preds = %149, %137
  %169 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %170 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @PF_OUT, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %176 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([5 x i8]* @.str.4 to %struct.TYPE_6__*))
  br label %180

177:                                              ; preds = %168
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %179 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([5 x i8]* @.str.5 to %struct.TYPE_6__*))
  br label %180

180:                                              ; preds = %177, %174
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %182 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %8, align 8
  %183 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %8, align 8
  %187 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %192 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %191, i32 0, i32 10
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @print_host(%struct.TYPE_6__* %181, i32* %185, i64 %190, i32 %193, i32* null)
  %195 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %8, align 8
  %196 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %7, align 8
  %200 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %204 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %203, i32 0, i32 10
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @PF_ANEQ(i32* %198, i32* %202, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %180
  %209 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %8, align 8
  %210 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %209, i32 0, i32 0
  %211 = load i64*, i64** %210, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %7, align 8
  %215 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %214, i32 0, i32 0
  %216 = load i64*, i64** %215, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %213, %218
  br i1 %219, label %220, label %239

220:                                              ; preds = %208, %180
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %222 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([3 x i8]* @.str.2 to %struct.TYPE_6__*))
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %224 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %7, align 8
  %225 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load %struct.pfsync_state_key*, %struct.pfsync_state_key** %7, align 8
  %229 = getelementptr inbounds %struct.pfsync_state_key, %struct.pfsync_state_key* %228, i32 0, i32 0
  %230 = load i64*, i64** %229, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %234 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %233, i32 0, i32 10
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @print_host(%struct.TYPE_6__* %223, i32* %227, i64 %232, i32 %235, i32* null)
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %238 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([2 x i8]* @.str.3 to %struct.TYPE_6__*))
  br label %239

239:                                              ; preds = %220, %208
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %241 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %5, align 8
  %242 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %6, align 8
  %243 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %244 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %243, i32 0, i32 9
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @print_src_dst(%struct.TYPE_6__* %240, %struct.pfsync_state_peer* %241, %struct.pfsync_state_peer* %242, i32 %245)
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp sgt i32 %249, 1
  br i1 %250, label %251, label %363

251:                                              ; preds = %239
  %252 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %253 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @ntohl(i32 %254)
  store i32 %255, i32* %13, align 4
  %256 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %257 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @ntohl(i32 %258)
  store i32 %259, i32* %14, align 4
  %260 = load i32, i32* %13, align 4
  %261 = srem i32 %260, 60
  store i32 %261, i32* %10, align 4
  %262 = load i32, i32* %13, align 4
  %263 = sdiv i32 %262, 60
  store i32 %263, i32* %13, align 4
  %264 = load i32, i32* %13, align 4
  %265 = srem i32 %264, 60
  store i32 %265, i32* %9, align 4
  %266 = load i32, i32* %13, align 4
  %267 = sdiv i32 %266, 60
  store i32 %267, i32* %13, align 4
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* %9, align 4
  %271 = load i32, i32* %10, align 4
  %272 = sext i32 %271 to i64
  %273 = inttoptr i64 %272 to %struct.TYPE_6__*
  %274 = call i32 @ND_PRINT(%struct.TYPE_6__* %273)
  %275 = load i32, i32* %14, align 4
  %276 = srem i32 %275, 60
  store i32 %276, i32* %10, align 4
  %277 = load i32, i32* %14, align 4
  %278 = sdiv i32 %277, 60
  store i32 %278, i32* %14, align 4
  %279 = load i32, i32* %14, align 4
  %280 = srem i32 %279, 60
  store i32 %280, i32* %9, align 4
  %281 = load i32, i32* %14, align 4
  %282 = sdiv i32 %281, 60
  store i32 %282, i32* %14, align 4
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %284 = load i32, i32* %14, align 4
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* %10, align 4
  %287 = sext i32 %286 to i64
  %288 = inttoptr i64 %287 to %struct.TYPE_6__*
  %289 = call i32 @ND_PRINT(%struct.TYPE_6__* %288)
  %290 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %291 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %290, i32 0, i32 8
  %292 = load i32**, i32*** %291, align 8
  %293 = getelementptr inbounds i32*, i32** %292, i64 0
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %296 = call i32 @bcopy(i32* %294, i32* %295, i32 4)
  %297 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %298 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %297, i32 0, i32 8
  %299 = load i32**, i32*** %298, align 8
  %300 = getelementptr inbounds i32*, i32** %299, i64 1
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %303 = call i32 @bcopy(i32* %301, i32* %302, i32 4)
  %304 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %305 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %304, i32 0, i32 7
  %306 = load i32**, i32*** %305, align 8
  %307 = getelementptr inbounds i32*, i32** %306, i64 0
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %310 = call i32 @bcopy(i32* %308, i32* %309, i32 4)
  %311 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %312 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %311, i32 0, i32 7
  %313 = load i32**, i32*** %312, align 8
  %314 = getelementptr inbounds i32*, i32** %313, i64 1
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %317 = call i32 @bcopy(i32* %315, i32* %316, i32 4)
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %319 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %320 = load i32, i32* %319, align 4
  %321 = call i64 @be64toh(i32 %320)
  %322 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %323 = load i32, i32* %322, align 4
  %324 = call i64 @be64toh(i32 %323)
  %325 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %326 = load i32, i32* %325, align 4
  %327 = call i64 @be64toh(i32 %326)
  %328 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %329 = load i32, i32* %328, align 4
  %330 = call i64 @be64toh(i32 %329)
  %331 = inttoptr i64 %330 to %struct.TYPE_6__*
  %332 = call i32 @ND_PRINT(%struct.TYPE_6__* %331)
  %333 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %334 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @ntohl(i32 -1)
  %337 = icmp ne i32 %335, %336
  br i1 %337, label %338, label %347

338:                                              ; preds = %251
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %340 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %341 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @ntohl(i32 %342)
  %344 = sext i32 %343 to i64
  %345 = inttoptr i64 %344 to %struct.TYPE_6__*
  %346 = call i32 @ND_PRINT(%struct.TYPE_6__* %345)
  br label %347

347:                                              ; preds = %338, %251
  %348 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %349 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @ntohl(i32 -1)
  %352 = icmp ne i32 %350, %351
  br i1 %352, label %353, label %362

353:                                              ; preds = %347
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %355 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %356 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %355, i32 0, i32 4
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @ntohl(i32 %357)
  %359 = sext i32 %358 to i64
  %360 = inttoptr i64 %359 to %struct.TYPE_6__*
  %361 = call i32 @ND_PRINT(%struct.TYPE_6__* %360)
  br label %362

362:                                              ; preds = %353, %347
  br label %363

363:                                              ; preds = %362, %239
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = icmp sgt i32 %366, 1
  br i1 %367, label %368, label %383

368:                                              ; preds = %363
  %369 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %370 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %369, i32 0, i32 6
  %371 = call i32 @bcopy(i32* %370, i32* %15, i32 4)
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %373 = load i32, i32* %15, align 4
  %374 = call i64 @be64toh(i32 %373)
  %375 = trunc i64 %374 to i32
  %376 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %377 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %376, i32 0, i32 5
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @ntohl(i32 %378)
  %380 = sext i32 %379 to i64
  %381 = inttoptr i64 %380 to %struct.TYPE_6__*
  %382 = call i32 @ND_PRINT(%struct.TYPE_6__* %381)
  br label %383

383:                                              ; preds = %368, %363
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @print_host(%struct.TYPE_6__*, i32*, i64, i32, i32*) #1

declare dso_local i64 @PF_ANEQ(i32*, i32*, i32) #1

declare dso_local i32 @print_src_dst(%struct.TYPE_6__*, %struct.pfsync_state_peer*, %struct.pfsync_state_peer*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i64 @be64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
