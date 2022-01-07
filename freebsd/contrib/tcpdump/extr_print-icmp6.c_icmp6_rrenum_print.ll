; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_icmp6_rrenum_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_icmp6_rrenum_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.icmp6_router_renum = type { i32, i64, i32, i32, i64, i64 }
%struct.rr_pco_match = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.rr_pco_use = type { i32, i32, i64, i64, i64, i32, i32, i64 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"router renum: command\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"router renum: result\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"router renum: sequence number reset\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"router renum: code-#%d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c", seq=%u\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%s%s%s%s%s,\00", align 1
@ICMP6_RR_FLAGS_TEST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ICMP6_RR_FLAGS_REQRESULT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@ICMP6_RR_FLAGS_FORCEAPPLY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@ICMP6_RR_FLAGS_SPECSITE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@ICMP6_RR_FLAGS_PREVDONE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"seg=%u,\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"maxdelay=%u\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"rsvd=0x%x\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"match(\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"setglobal\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"#%u\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c",ord=%u\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c",min=%u\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c",max=%u\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c",%s/%u\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c",?/%u\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"use(\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"%s%s,\00", align 1
@ICMP6_RR_PCOUSE_FLAGS_DECRVLTIME = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@ICMP6_RR_PCOUSE_FLAGS_DECRPLTIME = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [11 x i8] c"mask=0x%x,\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"raflags=0x%x,\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"vltime=infty,\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"vltime=%u,\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"pltime=infty,\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"pltime=%u,\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"%s/%u/%u\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"?/%u/%u\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"[|icmp6]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*)* @icmp6_rrenum_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icmp6_rrenum_print(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.icmp6_router_renum*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rr_pco_match*, align 8
  %10 = alloca %struct.rr_pco_use*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32, i32* @NI_MAXHOST, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ult i32* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %14, align 4
  br label %405

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = bitcast i32* %24 to %struct.icmp6_router_renum*
  store %struct.icmp6_router_renum* %25, %struct.icmp6_router_renum** %7, align 8
  %26 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %27 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %26, i64 1
  %28 = bitcast %struct.icmp6_router_renum* %27 to i8*
  store i8* %28, i8** %8, align 8
  %29 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %30 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ND_TCHECK(i64 %31)
  %33 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %34 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %45 [
    i32 133, label %36
    i32 132, label %39
    i32 131, label %42
  ]

36:                                               ; preds = %23
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([22 x i8]* @.str to %struct.TYPE_4__*))
  br label %53

39:                                               ; preds = %23
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([21 x i8]* @.str.1 to %struct.TYPE_4__*))
  br label %53

42:                                               ; preds = %23
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([36 x i8]* @.str.2 to %struct.TYPE_4__*))
  br label %53

45:                                               ; preds = %23
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %48 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to %struct.TYPE_4__*
  %52 = call i32 @ND_PRINT(%struct.TYPE_4__* %51)
  br label %53

53:                                               ; preds = %45, %42, %39, %36
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %56 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %55, i32 0, i32 5
  %57 = call i32 @EXTRACT_32BITS(i64* %56)
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to %struct.TYPE_4__*
  %60 = call i32 @ND_PRINT(%struct.TYPE_4__* %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %151

65:                                               ; preds = %53
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([2 x i8]* @.str.5 to %struct.TYPE_4__*))
  %68 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %69 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %121

72:                                               ; preds = %65
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %75 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @ICMP6_RR_FLAGS_TEST, align 4
  %78 = sext i32 %77 to i64
  %79 = and i64 %76, %78
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %83 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %84 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @ICMP6_RR_FLAGS_REQRESULT, align 4
  %87 = sext i32 %86 to i64
  %88 = and i64 %85, %87
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %92 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %93 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @ICMP6_RR_FLAGS_FORCEAPPLY, align 4
  %96 = sext i32 %95 to i64
  %97 = and i64 %94, %96
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %101 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %102 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @ICMP6_RR_FLAGS_SPECSITE, align 4
  %105 = sext i32 %104 to i64
  %106 = and i64 %103, %105
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %110 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %111 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @ICMP6_RR_FLAGS_PREVDONE, align 4
  %114 = sext i32 %113 to i64
  %115 = and i64 %112, %114
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %119 = bitcast i8* %118 to %struct.TYPE_4__*
  %120 = call i32 @ND_PRINT(%struct.TYPE_4__* %119)
  br label %121

121:                                              ; preds = %72, %65
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %123 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %124 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to %struct.TYPE_4__*
  %128 = call i32 @ND_PRINT(%struct.TYPE_4__* %127)
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %130 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %131 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %130, i32 0, i32 2
  %132 = call i32 @EXTRACT_16BITS(i32* %131)
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to %struct.TYPE_4__*
  %135 = call i32 @ND_PRINT(%struct.TYPE_4__* %134)
  %136 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %137 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %121
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %142 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %143 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %142, i32 0, i32 1
  %144 = call i32 @EXTRACT_32BITS(i64* %143)
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to %struct.TYPE_4__*
  %147 = call i32 @ND_PRINT(%struct.TYPE_4__* %146)
  br label %148

148:                                              ; preds = %140, %121
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %150 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([2 x i8]* @.str.16 to %struct.TYPE_4__*))
  br label %151

151:                                              ; preds = %148, %53
  %152 = load %struct.icmp6_router_renum*, %struct.icmp6_router_renum** %7, align 8
  %153 = getelementptr inbounds %struct.icmp6_router_renum, %struct.icmp6_router_renum* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 133
  br i1 %155, label %156, label %401

156:                                              ; preds = %151
  %157 = load i8*, i8** %8, align 8
  %158 = bitcast i8* %157 to %struct.rr_pco_match*
  store %struct.rr_pco_match* %158, %struct.rr_pco_match** %9, align 8
  %159 = load %struct.rr_pco_match*, %struct.rr_pco_match** %9, align 8
  %160 = getelementptr inbounds %struct.rr_pco_match, %struct.rr_pco_match* %159, i64 1
  %161 = bitcast %struct.rr_pco_match* %160 to i8*
  store i8* %161, i8** %8, align 8
  %162 = load %struct.rr_pco_match*, %struct.rr_pco_match** %9, align 8
  %163 = getelementptr inbounds %struct.rr_pco_match, %struct.rr_pco_match* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @ND_TCHECK(i64 %164)
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp sgt i32 %168, 1
  br i1 %169, label %170, label %173

170:                                              ; preds = %156
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %172 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([3 x i8]* @.str.17 to %struct.TYPE_4__*))
  br label %176

173:                                              ; preds = %156
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %175 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([2 x i8]* @.str.18 to %struct.TYPE_4__*))
  br label %176

176:                                              ; preds = %173, %170
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %178 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([7 x i8]* @.str.19 to %struct.TYPE_4__*))
  %179 = load %struct.rr_pco_match*, %struct.rr_pco_match** %9, align 8
  %180 = getelementptr inbounds %struct.rr_pco_match, %struct.rr_pco_match* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  switch i32 %181, label %191 [
    i32 130, label %182
    i32 129, label %185
    i32 128, label %188
  ]

182:                                              ; preds = %176
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %184 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([4 x i8]* @.str.20 to %struct.TYPE_4__*))
  br label %199

185:                                              ; preds = %176
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %187 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([7 x i8]* @.str.21 to %struct.TYPE_4__*))
  br label %199

188:                                              ; preds = %176
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %190 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([10 x i8]* @.str.22 to %struct.TYPE_4__*))
  br label %199

191:                                              ; preds = %176
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %193 = load %struct.rr_pco_match*, %struct.rr_pco_match** %9, align 8
  %194 = getelementptr inbounds %struct.rr_pco_match, %struct.rr_pco_match* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = inttoptr i64 %196 to %struct.TYPE_4__*
  %198 = call i32 @ND_PRINT(%struct.TYPE_4__* %197)
  br label %199

199:                                              ; preds = %191, %188, %185, %182
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %226

204:                                              ; preds = %199
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %206 = load %struct.rr_pco_match*, %struct.rr_pco_match** %9, align 8
  %207 = getelementptr inbounds %struct.rr_pco_match, %struct.rr_pco_match* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = inttoptr i64 %209 to %struct.TYPE_4__*
  %211 = call i32 @ND_PRINT(%struct.TYPE_4__* %210)
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %213 = load %struct.rr_pco_match*, %struct.rr_pco_match** %9, align 8
  %214 = getelementptr inbounds %struct.rr_pco_match, %struct.rr_pco_match* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = inttoptr i64 %216 to %struct.TYPE_4__*
  %218 = call i32 @ND_PRINT(%struct.TYPE_4__* %217)
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %220 = load %struct.rr_pco_match*, %struct.rr_pco_match** %9, align 8
  %221 = getelementptr inbounds %struct.rr_pco_match, %struct.rr_pco_match* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = inttoptr i64 %223 to %struct.TYPE_4__*
  %225 = call i32 @ND_PRINT(%struct.TYPE_4__* %224)
  br label %226

226:                                              ; preds = %204, %199
  %227 = load %struct.rr_pco_match*, %struct.rr_pco_match** %9, align 8
  %228 = getelementptr inbounds %struct.rr_pco_match, %struct.rr_pco_match* %227, i32 0, i32 3
  %229 = trunc i64 %16 to i32
  %230 = call i64 @addrtostr6(i64* %228, i8* %18, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %226
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %234 = load %struct.rr_pco_match*, %struct.rr_pco_match** %9, align 8
  %235 = getelementptr inbounds %struct.rr_pco_match, %struct.rr_pco_match* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = inttoptr i64 %237 to %struct.TYPE_4__*
  %239 = call i32 @ND_PRINT(%struct.TYPE_4__* %238)
  br label %248

240:                                              ; preds = %226
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %242 = load %struct.rr_pco_match*, %struct.rr_pco_match** %9, align 8
  %243 = getelementptr inbounds %struct.rr_pco_match, %struct.rr_pco_match* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = inttoptr i64 %245 to %struct.TYPE_4__*
  %247 = call i32 @ND_PRINT(%struct.TYPE_4__* %246)
  br label %248

248:                                              ; preds = %240, %232
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %250 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([2 x i8]* @.str.29 to %struct.TYPE_4__*))
  %251 = load %struct.rr_pco_match*, %struct.rr_pco_match** %9, align 8
  %252 = getelementptr inbounds %struct.rr_pco_match, %struct.rr_pco_match* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = sub nsw i32 %253, 3
  store i32 %254, i32* %13, align 4
  %255 = load i32, i32* %13, align 4
  %256 = srem i32 %255, 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %248
  br label %402

259:                                              ; preds = %248
  %260 = load i32, i32* %13, align 4
  %261 = sdiv i32 %260, 4
  store i32 %261, i32* %13, align 4
  br label %262

262:                                              ; preds = %397, %259
  %263 = load i32, i32* %13, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %13, align 4
  %265 = icmp sgt i32 %263, 0
  br i1 %265, label %266, label %400

266:                                              ; preds = %262
  %267 = load i8*, i8** %8, align 8
  %268 = bitcast i8* %267 to %struct.rr_pco_use*
  store %struct.rr_pco_use* %268, %struct.rr_pco_use** %10, align 8
  %269 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %270 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %269, i64 1
  %271 = bitcast %struct.rr_pco_use* %270 to i8*
  store i8* %271, i8** %8, align 8
  %272 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %273 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @ND_TCHECK(i64 %274)
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = icmp sgt i32 %278, 1
  br i1 %279, label %280, label %283

280:                                              ; preds = %266
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %282 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([3 x i8]* @.str.17 to %struct.TYPE_4__*))
  br label %286

283:                                              ; preds = %266
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %285 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([2 x i8]* @.str.18 to %struct.TYPE_4__*))
  br label %286

286:                                              ; preds = %283, %280
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %288 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([5 x i8]* @.str.30 to %struct.TYPE_4__*))
  %289 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %290 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %289, i32 0, i32 7
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %315

293:                                              ; preds = %286
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %295 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %296 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %295, i32 0, i32 7
  %297 = load i64, i64* %296, align 8
  %298 = load i32, i32* @ICMP6_RR_PCOUSE_FLAGS_DECRVLTIME, align 4
  %299 = sext i32 %298 to i64
  %300 = and i64 %297, %299
  %301 = icmp ne i64 %300, 0
  %302 = zext i1 %301 to i64
  %303 = select i1 %301, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %304 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %305 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %304, i32 0, i32 7
  %306 = load i64, i64* %305, align 8
  %307 = load i32, i32* @ICMP6_RR_PCOUSE_FLAGS_DECRPLTIME, align 4
  %308 = sext i32 %307 to i64
  %309 = and i64 %306, %308
  %310 = icmp ne i64 %309, 0
  %311 = zext i1 %310 to i64
  %312 = select i1 %310, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %313 = bitcast i8* %312 to %struct.TYPE_4__*
  %314 = call i32 @ND_PRINT(%struct.TYPE_4__* %313)
  br label %315

315:                                              ; preds = %293, %286
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %369

320:                                              ; preds = %315
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %322 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %323 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %322, i32 0, i32 6
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = inttoptr i64 %325 to %struct.TYPE_4__*
  %327 = call i32 @ND_PRINT(%struct.TYPE_4__* %326)
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %329 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %330 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %329, i32 0, i32 5
  %331 = load i32, i32* %330, align 8
  %332 = sext i32 %331 to i64
  %333 = inttoptr i64 %332 to %struct.TYPE_4__*
  %334 = call i32 @ND_PRINT(%struct.TYPE_4__* %333)
  %335 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %336 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %335, i32 0, i32 4
  %337 = load i64, i64* %336, align 8
  %338 = xor i64 %337, -1
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %320
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %342 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([14 x i8]* @.str.35 to %struct.TYPE_4__*))
  br label %351

343:                                              ; preds = %320
  %344 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %345 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %346 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %345, i32 0, i32 4
  %347 = call i32 @EXTRACT_32BITS(i64* %346)
  %348 = sext i32 %347 to i64
  %349 = inttoptr i64 %348 to %struct.TYPE_4__*
  %350 = call i32 @ND_PRINT(%struct.TYPE_4__* %349)
  br label %351

351:                                              ; preds = %343, %340
  %352 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %353 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %352, i32 0, i32 3
  %354 = load i64, i64* %353, align 8
  %355 = xor i64 %354, -1
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %351
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %359 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([14 x i8]* @.str.37 to %struct.TYPE_4__*))
  br label %368

360:                                              ; preds = %351
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %362 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %363 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %362, i32 0, i32 3
  %364 = call i32 @EXTRACT_32BITS(i64* %363)
  %365 = sext i32 %364 to i64
  %366 = inttoptr i64 %365 to %struct.TYPE_4__*
  %367 = call i32 @ND_PRINT(%struct.TYPE_4__* %366)
  br label %368

368:                                              ; preds = %360, %357
  br label %369

369:                                              ; preds = %368, %315
  %370 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %371 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %370, i32 0, i32 2
  %372 = trunc i64 %16 to i32
  %373 = call i64 @addrtostr6(i64* %371, i8* %18, i32 %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %386

375:                                              ; preds = %369
  %376 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %377 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %378 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %381 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = sext i32 %382 to i64
  %384 = inttoptr i64 %383 to %struct.TYPE_4__*
  %385 = call i32 @ND_PRINT(%struct.TYPE_4__* %384)
  br label %397

386:                                              ; preds = %369
  %387 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %388 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %389 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.rr_pco_use*, %struct.rr_pco_use** %10, align 8
  %392 = getelementptr inbounds %struct.rr_pco_use, %struct.rr_pco_use* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = sext i32 %393 to i64
  %395 = inttoptr i64 %394 to %struct.TYPE_4__*
  %396 = call i32 @ND_PRINT(%struct.TYPE_4__* %395)
  br label %397

397:                                              ; preds = %386, %375
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %399 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([2 x i8]* @.str.29 to %struct.TYPE_4__*))
  br label %262

400:                                              ; preds = %262
  br label %401

401:                                              ; preds = %400, %151
  store i32 1, i32* %14, align 4
  br label %405

402:                                              ; preds = %258
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %404 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([9 x i8]* @.str.41 to %struct.TYPE_4__*))
  store i32 0, i32* %14, align 4
  br label %405

405:                                              ; preds = %402, %401, %22
  %406 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %406)
  %407 = load i32, i32* %14, align 4
  switch i32 %407, label %409 [
    i32 0, label %408
    i32 1, label %408
  ]

408:                                              ; preds = %405, %405
  ret void

409:                                              ; preds = %405
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ND_TCHECK(i64) #2

declare dso_local i32 @ND_PRINT(%struct.TYPE_4__*) #2

declare dso_local i32 @EXTRACT_32BITS(i64*) #2

declare dso_local i32 @EXTRACT_16BITS(i32*) #2

declare dso_local i64 @addrtostr6(i64*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
