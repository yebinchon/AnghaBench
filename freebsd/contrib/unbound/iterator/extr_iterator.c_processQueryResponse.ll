; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processQueryResponse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processQueryResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, %struct.TYPE_56__, %struct.TYPE_48__*, %struct.TYPE_54__*, i32*, i32, i32, i32 }
%struct.TYPE_56__ = type { i64, i32 }
%struct.TYPE_48__ = type { i32, %struct.TYPE_55__*, i32*, i32, i32 (%struct.module_qstate*)*, i64 }
%struct.TYPE_55__ = type { i64, i64, i64, i64, i64, i32 }
%struct.TYPE_54__ = type { i32, i32 }
%struct.iter_qstate = type { i64, i32, i64, i32, %struct.TYPE_60__*, i64, %struct.TYPE_52__, i64, i64, i32, i32, i32*, %struct.TYPE_58__*, %struct.TYPE_58__*, i64, i32, %struct.TYPE_50__*, i64, i64, i32, %struct.TYPE_59__, i64, i64, i32 }
%struct.TYPE_60__ = type { i64, i32*, i32, i64 }
%struct.TYPE_52__ = type { i64, i32, i32*, i32 }
%struct.TYPE_58__ = type { %struct.TYPE_57__*, %struct.TYPE_47__ }
%struct.TYPE_57__ = type { i32, i32, i32, %struct.TYPE_53__** }
%struct.TYPE_53__ = type { %struct.TYPE_51__ }
%struct.TYPE_51__ = type { i32*, i32 }
%struct.TYPE_47__ = type { i32, i32, i32, i32 }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_59__ = type { i32 }
%struct.delegpt_addr = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_49__ }
%struct.TYPE_49__ = type { i32* }

@.str = private unnamed_addr constant [39 x i8] c"unable to call query_response callback\00", align 1
@SKIP_MINIMISE_STATE = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"query response was timeout\00", align 1
@QUERYTARGETS_STATE = common dso_local global i32 0, align 4
@BIT_RD = common dso_local global i32 0, align 4
@RESPONSE_TYPE_REFERRAL = common dso_local global i32 0, align 4
@RESPONSE_TYPE_ANSWER = common dso_local global i32 0, align 4
@DNSSEC_LAME_DETECT_COUNT = common dso_local global i64 0, align 8
@RESPONSE_TYPE_LAME = common dso_local global i32 0, align 4
@RESPONSE_TYPE_REC_LAME = common dso_local global i32 0, align 4
@RESPONSE_TYPE_THROWAWAY = common dso_local global i32 0, align 4
@RESPONSE_TYPE_UNTYPED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"bad referral, throwaway\00", align 1
@LDNS_RCODE_YXDOMAIN = common dso_local global i64 0, align 8
@RESPONSE_TYPE_CNAME = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DNAME = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_CNAME = common dso_local global i32 0, align 4
@MINIMISE_STATE = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8
@VERB_DETAIL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"query response was %s\00", align 1
@LDNS_RCODE_NXDOMAIN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"NXDOMAIN ANSWER\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ANSWER\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"nodata ANSWER\00", align 1
@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4
@DONOT_MINIMISE_STATE = common dso_local global i64 0, align 8
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"schedule NXDOMAIN validation:\00", align 1
@INIT_REQUEST_STATE = common dso_local global i32 0, align 4
@FINISHED_STATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"could not validate NXDOMAIN response\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"query response was REFERRAL\00", align 1
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@BIT_CD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"found parent-side glue\00", align 1
@INIT_MINIMISE_STATE = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [37 x i8] c"malloc failure, for delegation point\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"malloc failure, copy extra info into delegation point\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"cleared outbound list for next round\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"query response was CNAME\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"cname msg\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"malloc failure, CNAME info\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"cleared outbound list for query restart\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"query response was %sLAME\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"DNSSEC \00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"mark lame: mismatch in qname and dpname\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"mark host lame: out of memory\00", align 1
@.str.23 = private unnamed_addr constant [64 x i8] c"query response REC_LAME: recursive but not authoritative server\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"mark rec_lame: mismatch in qname and dpname\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"mark as REC_LAME\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"query response was THROWAWAY\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"A query response came back with an unknown type: %d\00", align 1
@.str.28 = private unnamed_addr constant [59 x i8] c"auth zone response bad, and no fallback possible, servfail\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"response is bad, no fallback, for auth zone\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"auth zone response was bad, fallback enabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.iter_qstate*, i32)* @processQueryResponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processQueryResponse(%struct.module_qstate* %0, %struct.iter_qstate* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca %struct.iter_qstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.delegpt_addr*, align 8
  %11 = alloca %struct.ub_packed_rrset_key*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.module_qstate*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %5, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %18 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %22 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %21, i32 0, i32 2
  %23 = load %struct.TYPE_48__*, %struct.TYPE_48__** %22, align 8
  %24 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %25 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %26 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %25, i32 0, i32 13
  %27 = load %struct.TYPE_58__*, %struct.TYPE_58__** %26, align 8
  %28 = call i32 @inplace_cb_query_response_call(%struct.TYPE_48__* %23, %struct.module_qstate* %24, %struct.TYPE_58__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %3
  %31 = call i32 @log_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %3
  %33 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %34 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %33, i32 0, i32 13
  %35 = load %struct.TYPE_58__*, %struct.TYPE_58__** %34, align 8
  %36 = icmp eq %struct.TYPE_58__* %35, null
  br i1 %36, label %37, label %64

37:                                               ; preds = %32
  %38 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %39 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %38, i32 0, i32 2
  %40 = load %struct.TYPE_48__*, %struct.TYPE_48__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_55__*, %struct.TYPE_55__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %48 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %47, i32 0, i32 23
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load i64, i64* @SKIP_MINIMISE_STATE, align 8
  %52 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %53 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %46, %37
  %55 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %56 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %55, i32 0, i32 22
  store i64 0, i64* %56, align 8
  %57 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %58 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %57, i32 0, i32 21
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* @VERB_ALGO, align 8
  %60 = call i32 (i64, i8*, ...) @verbose(i64 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %62 = load i32, i32* @QUERYTARGETS_STATE, align 4
  %63 = call i32 @next_state(%struct.iter_qstate* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %1637

64:                                               ; preds = %32
  %65 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %66 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BIT_RD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %73 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %72, i32 0, i32 22
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %71, %64
  %77 = phi i1 [ true, %64 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  %79 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %80 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %79, i32 0, i32 13
  %81 = load %struct.TYPE_58__*, %struct.TYPE_58__** %80, align 8
  %82 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %83 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %82, i32 0, i32 20
  %84 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %85 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %84, i32 0, i32 4
  %86 = load %struct.TYPE_60__*, %struct.TYPE_60__** %85, align 8
  %87 = call i32 @response_type_from_server(i32 %78, %struct.TYPE_58__* %81, %struct.TYPE_59__* %83, %struct.TYPE_60__* %86)
  store i32 %87, i32* %9, align 4
  %88 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %89 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %88, i32 0, i32 22
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @RESPONSE_TYPE_REFERRAL, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %76
  %94 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %95 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @BIT_RD, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %102 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %105, %100, %93, %76
  %108 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %109 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %108, i32 0, i32 2
  %110 = load %struct.TYPE_48__*, %struct.TYPE_48__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_55__*, %struct.TYPE_55__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %206, label %116

116:                                              ; preds = %107
  %117 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %118 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %117, i32 0, i32 14
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %206

121:                                              ; preds = %116
  %122 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %123 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %122, i32 0, i32 21
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %206, label %126

126:                                              ; preds = %121
  %127 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %128 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @BIT_RD, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %206, label %133

133:                                              ; preds = %126
  %134 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %135 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @DNSSEC_LAME_DETECT_COUNT, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %206

139:                                              ; preds = %133
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @RESPONSE_TYPE_LAME, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %206

143:                                              ; preds = %139
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @RESPONSE_TYPE_REC_LAME, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %206

147:                                              ; preds = %143
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @RESPONSE_TYPE_THROWAWAY, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %206

151:                                              ; preds = %147
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @RESPONSE_TYPE_UNTYPED, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %206

155:                                              ; preds = %151
  %156 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %157 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %156, i32 0, i32 13
  %158 = load %struct.TYPE_58__*, %struct.TYPE_58__** %157, align 8
  %159 = call i32 @iter_msg_has_dnssec(%struct.TYPE_58__* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %205, label %161

161:                                              ; preds = %155
  %162 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %163 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %162, i32 0, i32 3
  %164 = load %struct.TYPE_54__*, %struct.TYPE_54__** %163, align 8
  %165 = icmp ne %struct.TYPE_54__* %164, null
  br i1 %165, label %166, label %186

166:                                              ; preds = %161
  %167 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %168 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %167, i32 0, i32 4
  %169 = load %struct.TYPE_60__*, %struct.TYPE_60__** %168, align 8
  %170 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %171 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %170, i32 0, i32 3
  %172 = load %struct.TYPE_54__*, %struct.TYPE_54__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %172, i32 0, i32 1
  %174 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %175 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %174, i32 0, i32 3
  %176 = load %struct.TYPE_54__*, %struct.TYPE_54__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call %struct.delegpt_addr* @delegpt_find_addr(%struct.TYPE_60__* %169, i32* %173, i32 %178)
  store %struct.delegpt_addr* %179, %struct.delegpt_addr** %10, align 8
  %180 = load %struct.delegpt_addr*, %struct.delegpt_addr** %10, align 8
  %181 = icmp ne %struct.delegpt_addr* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %166
  %183 = load %struct.delegpt_addr*, %struct.delegpt_addr** %10, align 8
  %184 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %183, i32 0, i32 0
  store i32 1, i32* %184, align 4
  br label %185

185:                                              ; preds = %182, %166
  br label %186

186:                                              ; preds = %185, %161
  %187 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %188 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %187, i32 0, i32 13
  %189 = load %struct.TYPE_58__*, %struct.TYPE_58__** %188, align 8
  %190 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %191 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %190, i32 0, i32 4
  %192 = load %struct.TYPE_60__*, %struct.TYPE_60__** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %195 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %194, i32 0, i32 6
  %196 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @iter_msg_from_zone(%struct.TYPE_58__* %189, %struct.TYPE_60__* %192, i32 %193, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %186
  %201 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %202 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %201, i32 0, i32 3
  store %struct.TYPE_54__* null, %struct.TYPE_54__** %202, align 8
  br label %203

203:                                              ; preds = %200, %186
  %204 = load i32, i32* @RESPONSE_TYPE_LAME, align 4
  store i32 %204, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %205

205:                                              ; preds = %203, %155
  br label %209

206:                                              ; preds = %151, %147, %143, %139, %133, %126, %121, %116, %107
  %207 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %208 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %207, i32 0, i32 21
  store i64 0, i64* %208, align 8
  br label %209

209:                                              ; preds = %206, %205
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* @RESPONSE_TYPE_REFERRAL, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %300

213:                                              ; preds = %209
  %214 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %215 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %214, i32 0, i32 13
  %216 = load %struct.TYPE_58__*, %struct.TYPE_58__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_57__*, %struct.TYPE_57__** %217, align 8
  %219 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %220 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %219, i32 0, i32 13
  %221 = load %struct.TYPE_58__*, %struct.TYPE_58__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_57__*, %struct.TYPE_57__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %227 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %226, i32 0, i32 13
  %228 = load %struct.TYPE_58__*, %struct.TYPE_58__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_57__*, %struct.TYPE_57__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %234 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %233, i32 0, i32 13
  %235 = load %struct.TYPE_58__*, %struct.TYPE_58__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_57__*, %struct.TYPE_57__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %232, %239
  %241 = call %struct.ub_packed_rrset_key* @find_NS(%struct.TYPE_57__* %218, i32 %225, i32 %240)
  store %struct.ub_packed_rrset_key* %241, %struct.ub_packed_rrset_key** %11, align 8
  %242 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %243 = icmp ne %struct.ub_packed_rrset_key* %242, null
  br i1 %243, label %258, label %244

244:                                              ; preds = %213
  %245 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %246 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %245, i32 0, i32 13
  %247 = load %struct.TYPE_58__*, %struct.TYPE_58__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_57__*, %struct.TYPE_57__** %248, align 8
  %250 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %251 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %250, i32 0, i32 13
  %252 = load %struct.TYPE_58__*, %struct.TYPE_58__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_57__*, %struct.TYPE_57__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call %struct.ub_packed_rrset_key* @find_NS(%struct.TYPE_57__* %249, i32 0, i32 %256)
  store %struct.ub_packed_rrset_key* %257, %struct.ub_packed_rrset_key** %11, align 8
  br label %258

258:                                              ; preds = %244, %213
  %259 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %260 = icmp ne %struct.ub_packed_rrset_key* %259, null
  br i1 %260, label %261, label %284

261:                                              ; preds = %258
  %262 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %263 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %267 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %266, i32 0, i32 4
  %268 = load %struct.TYPE_60__*, %struct.TYPE_60__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = call i32 @dname_strict_subdomain_c(i32* %265, i32* %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %284

273:                                              ; preds = %261
  %274 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %275 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %274, i32 0, i32 6
  %276 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %279 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = call i64 @dname_subdomain_c(i32* %277, i32* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %273, %261, %258
  %285 = load i64, i64* @VERB_ALGO, align 8
  %286 = call i32 (i64, i8*, ...) @verbose(i64 %285, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %287 = load i32, i32* @RESPONSE_TYPE_THROWAWAY, align 4
  store i32 %287, i32* %9, align 4
  br label %299

288:                                              ; preds = %273
  %289 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %290 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %289, i32 0, i32 13
  %291 = load %struct.TYPE_58__*, %struct.TYPE_58__** %290, align 8
  %292 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %293 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %294 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %293, i32 0, i32 4
  %295 = load %struct.TYPE_60__*, %struct.TYPE_60__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = call i32 @iter_scrub_ds(%struct.TYPE_58__* %291, %struct.ub_packed_rrset_key* %292, i32* %297)
  br label %299

299:                                              ; preds = %288, %284
  br label %305

300:                                              ; preds = %209
  %301 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %302 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %301, i32 0, i32 13
  %303 = load %struct.TYPE_58__*, %struct.TYPE_58__** %302, align 8
  %304 = call i32 @iter_scrub_ds(%struct.TYPE_58__* %303, %struct.ub_packed_rrset_key* null, i32* null)
  br label %305

305:                                              ; preds = %300, %299
  %306 = load i32, i32* %9, align 4
  %307 = load i32, i32* @RESPONSE_TYPE_THROWAWAY, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %322

309:                                              ; preds = %305
  %310 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %311 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %310, i32 0, i32 13
  %312 = load %struct.TYPE_58__*, %struct.TYPE_58__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_57__*, %struct.TYPE_57__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = call i64 @FLAGS_GET_RCODE(i32 %316)
  %318 = load i64, i64* @LDNS_RCODE_YXDOMAIN, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %322

320:                                              ; preds = %309
  %321 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  store i32 %321, i32* %9, align 4
  br label %322

322:                                              ; preds = %320, %309, %305
  %323 = load i32, i32* %9, align 4
  %324 = load i32, i32* @RESPONSE_TYPE_CNAME, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %383

326:                                              ; preds = %322
  %327 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %328 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %327, i32 0, i32 13
  %329 = load %struct.TYPE_58__*, %struct.TYPE_58__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_57__*, %struct.TYPE_57__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = icmp sge i32 %333, 1
  br i1 %334, label %335, label %383

335:                                              ; preds = %326
  %336 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %337 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %336, i32 0, i32 13
  %338 = load %struct.TYPE_58__*, %struct.TYPE_58__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_57__*, %struct.TYPE_57__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %340, i32 0, i32 3
  %342 = load %struct.TYPE_53__**, %struct.TYPE_53__*** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_53__*, %struct.TYPE_53__** %342, i64 0
  %344 = load %struct.TYPE_53__*, %struct.TYPE_53__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = call i64 @ntohs(i32 %347)
  %349 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %383

351:                                              ; preds = %335
  store i32* null, i32** %12, align 8
  store i64 0, i64* %13, align 8
  %352 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %353 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %352, i32 0, i32 13
  %354 = load %struct.TYPE_58__*, %struct.TYPE_58__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %354, i32 0, i32 0
  %356 = load %struct.TYPE_57__*, %struct.TYPE_57__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %356, i32 0, i32 3
  %358 = load %struct.TYPE_53__**, %struct.TYPE_53__*** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_53__*, %struct.TYPE_53__** %358, i64 0
  %360 = load %struct.TYPE_53__*, %struct.TYPE_53__** %359, align 8
  %361 = call i32 @get_cname_target(%struct.TYPE_53__* %360, i32** %12, i64* %13)
  %362 = load i64, i64* %13, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %382

364:                                              ; preds = %351
  %365 = load i32*, i32** %12, align 8
  %366 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %367 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %366, i32 0, i32 13
  %368 = load %struct.TYPE_58__*, %struct.TYPE_58__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %368, i32 0, i32 0
  %370 = load %struct.TYPE_57__*, %struct.TYPE_57__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %370, i32 0, i32 3
  %372 = load %struct.TYPE_53__**, %struct.TYPE_53__*** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_53__*, %struct.TYPE_53__** %372, i64 0
  %374 = load %struct.TYPE_53__*, %struct.TYPE_53__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %375, i32 0, i32 0
  %377 = load i32*, i32** %376, align 8
  %378 = call i64 @dname_subdomain_c(i32* %365, i32* %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %364
  %381 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  store i32 %381, i32* %9, align 4
  br label %382

382:                                              ; preds = %380, %364, %351
  br label %414

383:                                              ; preds = %335, %326, %322
  %384 = load i32, i32* %9, align 4
  %385 = load i32, i32* @RESPONSE_TYPE_CNAME, align 4
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %387, label %413

387:                                              ; preds = %383
  %388 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %389 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %388, i32 0, i32 6
  %390 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @LDNS_RR_TYPE_CNAME, align 4
  %393 = icmp eq i32 %391, %392
  br i1 %393, label %394, label %413

394:                                              ; preds = %387
  %395 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %396 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @MINIMISE_STATE, align 8
  %399 = icmp eq i64 %397, %398
  br i1 %399, label %400, label %413

400:                                              ; preds = %394
  %401 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %402 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %401, i32 0, i32 6
  %403 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %402, i32 0, i32 2
  %404 = load i32*, i32** %403, align 8
  %405 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %406 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %405, i32 0, i32 20
  %407 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = call i64 @query_dname_compare(i32* %404, i32 %408)
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %400
  %412 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  store i32 %412, i32* %9, align 4
  br label %413

413:                                              ; preds = %411, %400, %394, %387, %383
  br label %414

414:                                              ; preds = %413, %382
  %415 = load i32, i32* %9, align 4
  %416 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  %417 = icmp eq i32 %415, %416
  br i1 %417, label %418, label %754

418:                                              ; preds = %414
  %419 = load i64, i64* @verbosity, align 8
  %420 = load i64, i64* @VERB_DETAIL, align 8
  %421 = icmp sge i64 %419, %420
  br i1 %421, label %422, label %449

422:                                              ; preds = %418
  %423 = load i64, i64* @VERB_DETAIL, align 8
  %424 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %425 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %424, i32 0, i32 13
  %426 = load %struct.TYPE_58__*, %struct.TYPE_58__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %426, i32 0, i32 0
  %428 = load %struct.TYPE_57__*, %struct.TYPE_57__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = call i64 @FLAGS_GET_RCODE(i32 %430)
  %432 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %433 = icmp eq i64 %431, %432
  br i1 %433, label %434, label %435

434:                                              ; preds = %422
  br label %446

435:                                              ; preds = %422
  %436 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %437 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %436, i32 0, i32 13
  %438 = load %struct.TYPE_58__*, %struct.TYPE_58__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %438, i32 0, i32 0
  %440 = load %struct.TYPE_57__*, %struct.TYPE_57__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = icmp ne i32 %442, 0
  %444 = zext i1 %443 to i64
  %445 = select i1 %443, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)
  br label %446

446:                                              ; preds = %435, %434
  %447 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), %434 ], [ %445, %435 ]
  %448 = call i32 (i64, i8*, ...) @verbose(i64 %423, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %447)
  br label %449

449:                                              ; preds = %446, %418
  %450 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %451 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %450, i32 0, i32 6
  %452 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 8
  %454 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %455 = icmp eq i32 %453, %454
  br i1 %455, label %456, label %511

456:                                              ; preds = %449
  %457 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %458 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %457, i32 0, i32 11
  %459 = load i32*, i32** %458, align 8
  %460 = icmp ne i32* %459, null
  br i1 %460, label %511, label %461

461:                                              ; preds = %456
  %462 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %463 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* @BIT_RD, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %511, label %468

468:                                              ; preds = %461
  %469 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %470 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %469, i32 0, i32 13
  %471 = load %struct.TYPE_58__*, %struct.TYPE_58__** %470, align 8
  %472 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %473 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %472, i32 0, i32 4
  %474 = load %struct.TYPE_60__*, %struct.TYPE_60__** %473, align 8
  %475 = call i64 @iter_ds_toolow(%struct.TYPE_58__* %471, %struct.TYPE_60__* %474)
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %511

477:                                              ; preds = %468
  %478 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %479 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %478, i32 0, i32 6
  %480 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %481 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %480, i32 0, i32 4
  %482 = load %struct.TYPE_60__*, %struct.TYPE_60__** %481, align 8
  %483 = call i64 @iter_dp_cangodown(%struct.TYPE_52__* %479, %struct.TYPE_60__* %482)
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %511

485:                                              ; preds = %477
  %486 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %487 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %486, i32 0, i32 9
  %488 = call i32 @outbound_list_clear(i32* %487)
  %489 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %490 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %489, i32 0, i32 8
  store i64 0, i64* %490, align 8
  %491 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %492 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %491, i32 0, i32 2
  %493 = load %struct.TYPE_48__*, %struct.TYPE_48__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %493, i32 0, i32 4
  %495 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %494, align 8
  %496 = call i32 @fptr_whitelist_modenv_detach_subs(i32 (%struct.module_qstate*)* %495)
  %497 = call i32 @fptr_ok(i32 %496)
  %498 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %499 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %498, i32 0, i32 2
  %500 = load %struct.TYPE_48__*, %struct.TYPE_48__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %500, i32 0, i32 4
  %502 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %501, align 8
  %503 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %504 = call i32 %502(%struct.module_qstate* %503)
  %505 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %506 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %505, i32 0, i32 7
  store i64 0, i64* %506, align 8
  %507 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %508 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %509 = load i32, i32* %7, align 4
  %510 = call i32 @processDSNSFind(%struct.module_qstate* %507, %struct.iter_qstate* %508, i32 %509)
  store i32 %510, i32* %4, align 4
  br label %1637

511:                                              ; preds = %477, %468, %461, %456, %449
  %512 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %513 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %512, i32 0, i32 7
  %514 = load i32, i32* %513, align 8
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %553, label %516

516:                                              ; preds = %511
  %517 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %518 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %517, i32 0, i32 2
  %519 = load %struct.TYPE_48__*, %struct.TYPE_48__** %518, align 8
  %520 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %521 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %520, i32 0, i32 13
  %522 = load %struct.TYPE_58__*, %struct.TYPE_58__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %522, i32 0, i32 1
  %524 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %525 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %524, i32 0, i32 13
  %526 = load %struct.TYPE_58__*, %struct.TYPE_58__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %526, i32 0, i32 0
  %528 = load %struct.TYPE_57__*, %struct.TYPE_57__** %527, align 8
  %529 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %530 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %529, i32 0, i32 6
  %531 = load i32, i32* %530, align 4
  %532 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %533 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %532, i32 0, i32 4
  %534 = load %struct.TYPE_60__*, %struct.TYPE_60__** %533, align 8
  %535 = icmp ne %struct.TYPE_60__* %534, null
  br i1 %535, label %536, label %543

536:                                              ; preds = %516
  %537 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %538 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %537, i32 0, i32 4
  %539 = load %struct.TYPE_60__*, %struct.TYPE_60__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %539, i32 0, i32 3
  %541 = load i64, i64* %540, align 8
  %542 = icmp ne i64 %541, 0
  br label %543

543:                                              ; preds = %536, %516
  %544 = phi i1 [ false, %516 ], [ %542, %536 ]
  %545 = zext i1 %544 to i32
  %546 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %547 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %546, i32 0, i32 4
  %548 = load i32*, i32** %547, align 8
  %549 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %550 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = call i32 @iter_dns_store(%struct.TYPE_48__* %519, %struct.TYPE_47__* %523, %struct.TYPE_57__* %528, i32 0, i32 %531, i32 %545, i32* %548, i32 %551)
  br label %553

553:                                              ; preds = %543, %511
  %554 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %555 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %554, i32 0, i32 9
  %556 = call i32 @outbound_list_clear(i32* %555)
  %557 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %558 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %557, i32 0, i32 8
  store i64 0, i64* %558, align 8
  %559 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %560 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %559, i32 0, i32 2
  %561 = load %struct.TYPE_48__*, %struct.TYPE_48__** %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %561, i32 0, i32 4
  %563 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %562, align 8
  %564 = call i32 @fptr_whitelist_modenv_detach_subs(i32 (%struct.module_qstate*)* %563)
  %565 = call i32 @fptr_ok(i32 %564)
  %566 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %567 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %566, i32 0, i32 2
  %568 = load %struct.TYPE_48__*, %struct.TYPE_48__** %567, align 8
  %569 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %568, i32 0, i32 4
  %570 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %569, align 8
  %571 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %572 = call i32 %570(%struct.module_qstate* %571)
  %573 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %574 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %573, i32 0, i32 7
  store i64 0, i64* %574, align 8
  %575 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %576 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %575, i32 0, i32 3
  %577 = load %struct.TYPE_54__*, %struct.TYPE_54__** %576, align 8
  %578 = icmp ne %struct.TYPE_54__* %577, null
  br i1 %578, label %579, label %595

579:                                              ; preds = %553
  %580 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %581 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %580, i32 0, i32 5
  %582 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %583 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %582, i32 0, i32 3
  %584 = load %struct.TYPE_54__*, %struct.TYPE_54__** %583, align 8
  %585 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %584, i32 0, i32 1
  %586 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %587 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %586, i32 0, i32 3
  %588 = load %struct.TYPE_54__*, %struct.TYPE_54__** %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 4
  %591 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %592 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %591, i32 0, i32 4
  %593 = load i32*, i32** %592, align 8
  %594 = call i32 @sock_list_insert(i32* %581, i32* %585, i32 %590, i32* %593)
  br label %595

595:                                              ; preds = %579, %553
  %596 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %597 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %596, i32 0, i32 0
  %598 = load i64, i64* %597, align 8
  %599 = load i64, i64* @DONOT_MINIMISE_STATE, align 8
  %600 = icmp ne i64 %598, %599
  br i1 %600, label %601, label %751

601:                                              ; preds = %595
  %602 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %603 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %602, i32 0, i32 1
  %604 = load i32, i32* %603, align 8
  %605 = load i32, i32* @BIT_RD, align 4
  %606 = and i32 %604, %605
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %751, label %608

608:                                              ; preds = %601
  %609 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %610 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %609, i32 0, i32 13
  %611 = load %struct.TYPE_58__*, %struct.TYPE_58__** %610, align 8
  %612 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %611, i32 0, i32 0
  %613 = load %struct.TYPE_57__*, %struct.TYPE_57__** %612, align 8
  %614 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %613, i32 0, i32 2
  %615 = load i32, i32* %614, align 8
  %616 = call i64 @FLAGS_GET_RCODE(i32 %615)
  %617 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %618 = icmp ne i64 %616, %617
  br i1 %618, label %619, label %655

619:                                              ; preds = %608
  %620 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %621 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %620, i32 0, i32 2
  %622 = load %struct.TYPE_48__*, %struct.TYPE_48__** %621, align 8
  %623 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %622, i32 0, i32 1
  %624 = load %struct.TYPE_55__*, %struct.TYPE_55__** %623, align 8
  %625 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %624, i32 0, i32 0
  %626 = load i64, i64* %625, align 8
  %627 = icmp ne i64 %626, 0
  br i1 %627, label %628, label %651

628:                                              ; preds = %619
  %629 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %630 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %629, i32 0, i32 13
  %631 = load %struct.TYPE_58__*, %struct.TYPE_58__** %630, align 8
  %632 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %631, i32 0, i32 0
  %633 = load %struct.TYPE_57__*, %struct.TYPE_57__** %632, align 8
  %634 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %633, i32 0, i32 2
  %635 = load i32, i32* %634, align 8
  %636 = call i64 @FLAGS_GET_RCODE(i32 %635)
  %637 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %638 = icmp eq i64 %636, %637
  br i1 %638, label %639, label %646

639:                                              ; preds = %628
  %640 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %641 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %640, i32 0, i32 13
  %642 = load %struct.TYPE_58__*, %struct.TYPE_58__** %641, align 8
  %643 = call i32 @iter_scrub_nxdomain(%struct.TYPE_58__* %642)
  %644 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %645 = call i32 @final_state(%struct.iter_qstate* %644)
  store i32 %645, i32* %4, align 4
  br label %1637

646:                                              ; preds = %628
  %647 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %648 = load i32, i32* %7, align 4
  %649 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %650 = call i32 @error_response(%struct.module_qstate* %647, i32 %648, i32 %649)
  store i32 %650, i32* %4, align 4
  br label %1637

651:                                              ; preds = %619
  %652 = load i64, i64* @DONOT_MINIMISE_STATE, align 8
  %653 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %654 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %653, i32 0, i32 0
  store i64 %652, i64* %654, align 8
  br label %655

655:                                              ; preds = %651, %608
  %656 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %657 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %656, i32 0, i32 13
  %658 = load %struct.TYPE_58__*, %struct.TYPE_58__** %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %658, i32 0, i32 0
  %660 = load %struct.TYPE_57__*, %struct.TYPE_57__** %659, align 8
  %661 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %660, i32 0, i32 2
  %662 = load i32, i32* %661, align 8
  %663 = call i64 @FLAGS_GET_RCODE(i32 %662)
  %664 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %665 = icmp eq i64 %663, %664
  br i1 %665, label %666, label %747

666:                                              ; preds = %655
  %667 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %668 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %667, i32 0, i32 14
  %669 = load i64, i64* %668, align 8
  %670 = icmp ne i64 %669, 0
  br i1 %670, label %671, label %674

671:                                              ; preds = %666
  %672 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %673 = call i32 @final_state(%struct.iter_qstate* %672)
  store i32 %673, i32* %4, align 4
  br label %1637

674:                                              ; preds = %666
  %675 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %676 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %675, i32 0, i32 2
  %677 = load %struct.TYPE_48__*, %struct.TYPE_48__** %676, align 8
  %678 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %677, i32 0, i32 1
  %679 = load %struct.TYPE_55__*, %struct.TYPE_55__** %678, align 8
  %680 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %679, i32 0, i32 4
  %681 = load i64, i64* %680, align 8
  %682 = icmp ne i64 %681, 0
  br i1 %682, label %683, label %746

683:                                              ; preds = %674
  store %struct.module_qstate* null, %struct.module_qstate** %14, align 8
  %684 = load i32, i32* @VERB_QUERY, align 4
  %685 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %686 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %685, i32 0, i32 13
  %687 = load %struct.TYPE_58__*, %struct.TYPE_58__** %686, align 8
  %688 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %687, i32 0, i32 1
  %689 = call i32 @log_query_info(i32 %684, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_47__* %688)
  %690 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %691 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %690, i32 0, i32 13
  %692 = load %struct.TYPE_58__*, %struct.TYPE_58__** %691, align 8
  %693 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %692, i32 0, i32 1
  %694 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %693, i32 0, i32 3
  %695 = load i32, i32* %694, align 4
  %696 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %697 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %696, i32 0, i32 13
  %698 = load %struct.TYPE_58__*, %struct.TYPE_58__** %697, align 8
  %699 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %698, i32 0, i32 1
  %700 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %699, i32 0, i32 2
  %701 = load i32, i32* %700, align 8
  %702 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %703 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %702, i32 0, i32 13
  %704 = load %struct.TYPE_58__*, %struct.TYPE_58__** %703, align 8
  %705 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %704, i32 0, i32 1
  %706 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %705, i32 0, i32 1
  %707 = load i32, i32* %706, align 4
  %708 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %709 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %708, i32 0, i32 13
  %710 = load %struct.TYPE_58__*, %struct.TYPE_58__** %709, align 8
  %711 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %710, i32 0, i32 1
  %712 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %711, i32 0, i32 0
  %713 = load i32, i32* %712, align 8
  %714 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %715 = load i32, i32* %7, align 4
  %716 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %717 = load i32, i32* @INIT_REQUEST_STATE, align 4
  %718 = load i32, i32* @FINISHED_STATE, align 4
  %719 = call i32 @generate_sub_request(i32 %695, i32 %701, i32 %707, i32 %713, %struct.module_qstate* %714, i32 %715, %struct.iter_qstate* %716, i32 %717, i32 %718, %struct.module_qstate** %14, i32 1)
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %724, label %721

721:                                              ; preds = %683
  %722 = load i64, i64* @VERB_ALGO, align 8
  %723 = call i32 (i64, i8*, ...) @verbose(i64 %722, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %724

724:                                              ; preds = %721, %683
  %725 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %726 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %725, i32 0, i32 9
  %727 = call i32 @outbound_list_clear(i32* %726)
  %728 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %729 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %728, i32 0, i32 8
  store i64 0, i64* %729, align 8
  %730 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %731 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %730, i32 0, i32 2
  %732 = load %struct.TYPE_48__*, %struct.TYPE_48__** %731, align 8
  %733 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %732, i32 0, i32 4
  %734 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %733, align 8
  %735 = call i32 @fptr_whitelist_modenv_detach_subs(i32 (%struct.module_qstate*)* %734)
  %736 = call i32 @fptr_ok(i32 %735)
  %737 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %738 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %737, i32 0, i32 2
  %739 = load %struct.TYPE_48__*, %struct.TYPE_48__** %738, align 8
  %740 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %739, i32 0, i32 4
  %741 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %740, align 8
  %742 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %743 = call i32 %741(%struct.module_qstate* %742)
  %744 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %745 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %744, i32 0, i32 7
  store i64 0, i64* %745, align 8
  br label %746

746:                                              ; preds = %724, %674
  br label %747

747:                                              ; preds = %746, %655
  %748 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %749 = load i32, i32* @QUERYTARGETS_STATE, align 4
  %750 = call i32 @next_state(%struct.iter_qstate* %748, i32 %749)
  store i32 %750, i32* %4, align 4
  br label %1637

751:                                              ; preds = %601, %595
  %752 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %753 = call i32 @final_state(%struct.iter_qstate* %752)
  store i32 %753, i32* %4, align 4
  br label %1637

754:                                              ; preds = %414
  %755 = load i32, i32* %9, align 4
  %756 = load i32, i32* @RESPONSE_TYPE_REFERRAL, align 4
  %757 = icmp eq i32 %755, %756
  br i1 %757, label %758, label %1166

758:                                              ; preds = %754
  %759 = load i64, i64* @VERB_DETAIL, align 8
  %760 = call i32 (i64, i8*, ...) @verbose(i64 %759, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %761 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %762 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %761, i32 0, i32 1
  %763 = load i32, i32* %762, align 8
  %764 = load i32, i32* @BIT_RD, align 4
  %765 = and i32 %763, %764
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %795, label %767

767:                                              ; preds = %758
  %768 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %769 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %768, i32 0, i32 19
  %770 = load i32, i32* %769, align 8
  %771 = icmp ne i32 %770, 0
  br i1 %771, label %795, label %772

772:                                              ; preds = %767
  %773 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %774 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %773, i32 0, i32 2
  %775 = load %struct.TYPE_48__*, %struct.TYPE_48__** %774, align 8
  %776 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %775, i32 0, i32 3
  %777 = load i32, i32* %776, align 8
  %778 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %779 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %778, i32 0, i32 4
  %780 = load %struct.TYPE_60__*, %struct.TYPE_60__** %779, align 8
  %781 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %780, i32 0, i32 1
  %782 = load i32*, i32** %781, align 8
  %783 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %784 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %783, i32 0, i32 4
  %785 = load %struct.TYPE_60__*, %struct.TYPE_60__** %784, align 8
  %786 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %785, i32 0, i32 2
  %787 = load i32, i32* %786, align 8
  %788 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %789 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %788, i32 0, i32 2
  %790 = load %struct.TYPE_48__*, %struct.TYPE_48__** %789, align 8
  %791 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %790, i32 0, i32 2
  %792 = load i32*, i32** %791, align 8
  %793 = load i32, i32* %792, align 4
  %794 = call i32 @infra_ratelimit_dec(i32 %777, i32* %782, i32 %787, i32 %793)
  br label %795

795:                                              ; preds = %772, %767, %758
  %796 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %797 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %796, i32 0, i32 7
  %798 = load i32, i32* %797, align 8
  %799 = icmp ne i32 %798, 0
  br i1 %799, label %925, label %800

800:                                              ; preds = %795
  %801 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %802 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %801, i32 0, i32 2
  %803 = load %struct.TYPE_48__*, %struct.TYPE_48__** %802, align 8
  %804 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %803, i32 0, i32 1
  %805 = load %struct.TYPE_55__*, %struct.TYPE_55__** %804, align 8
  %806 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %805, i32 0, i32 2
  %807 = load i64, i64* %806, align 8
  %808 = icmp ne i64 %807, 0
  br i1 %808, label %809, label %872

809:                                              ; preds = %800
  %810 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %811 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %810, i32 0, i32 1
  %812 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %811, i32 0, i32 0
  %813 = load i64, i64* %812, align 8
  %814 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %815 = icmp eq i64 %813, %814
  br i1 %815, label %816, label %925

816:                                              ; preds = %809
  %817 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %818 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %817, i32 0, i32 0
  %819 = load i32, i32* %818, align 8
  %820 = load i32, i32* @BIT_RD, align 4
  %821 = and i32 %819, %820
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %823, label %925

823:                                              ; preds = %816
  %824 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %825 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %824, i32 0, i32 0
  %826 = load i32, i32* %825, align 8
  %827 = load i32, i32* @BIT_CD, align 4
  %828 = and i32 %826, %827
  %829 = icmp ne i32 %828, 0
  br i1 %829, label %925, label %830

830:                                              ; preds = %823
  %831 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %832 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %831, i32 0, i32 13
  %833 = load %struct.TYPE_58__*, %struct.TYPE_58__** %832, align 8
  %834 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %833, i32 0, i32 0
  %835 = load %struct.TYPE_57__*, %struct.TYPE_57__** %834, align 8
  %836 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %837 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %836, i32 0, i32 6
  %838 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %837, i32 0, i32 2
  %839 = load i32*, i32** %838, align 8
  %840 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %841 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %840, i32 0, i32 6
  %842 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %841, i32 0, i32 0
  %843 = load i64, i64* %842, align 8
  %844 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %845 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %846 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %845, i32 0, i32 6
  %847 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %846, i32 0, i32 3
  %848 = load i32, i32* %847, align 8
  %849 = call i64 @reply_find_rrset_section_ns(%struct.TYPE_57__* %835, i32* %839, i64 %843, i64 %844, i32 %848)
  %850 = icmp ne i64 %849, 0
  br i1 %850, label %872, label %851

851:                                              ; preds = %830
  %852 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %853 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %852, i32 0, i32 13
  %854 = load %struct.TYPE_58__*, %struct.TYPE_58__** %853, align 8
  %855 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %854, i32 0, i32 0
  %856 = load %struct.TYPE_57__*, %struct.TYPE_57__** %855, align 8
  %857 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %858 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %857, i32 0, i32 6
  %859 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %858, i32 0, i32 2
  %860 = load i32*, i32** %859, align 8
  %861 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %862 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %861, i32 0, i32 6
  %863 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %862, i32 0, i32 0
  %864 = load i64, i64* %863, align 8
  %865 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %866 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %867 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %866, i32 0, i32 6
  %868 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %867, i32 0, i32 3
  %869 = load i32, i32* %868, align 8
  %870 = call i64 @reply_find_rrset_section_an(%struct.TYPE_57__* %856, i32* %860, i64 %864, i64 %865, i32 %869)
  %871 = icmp ne i64 %870, 0
  br i1 %871, label %872, label %925

872:                                              ; preds = %851, %830, %800
  %873 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %874 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %873, i32 0, i32 2
  %875 = load %struct.TYPE_48__*, %struct.TYPE_48__** %874, align 8
  %876 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %877 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %876, i32 0, i32 13
  %878 = load %struct.TYPE_58__*, %struct.TYPE_58__** %877, align 8
  %879 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %878, i32 0, i32 1
  %880 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %881 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %880, i32 0, i32 13
  %882 = load %struct.TYPE_58__*, %struct.TYPE_58__** %881, align 8
  %883 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %882, i32 0, i32 0
  %884 = load %struct.TYPE_57__*, %struct.TYPE_57__** %883, align 8
  %885 = call i32 @iter_dns_store(%struct.TYPE_48__* %875, %struct.TYPE_47__* %879, %struct.TYPE_57__* %884, i32 1, i32 0, i32 0, i32* null, i32 0)
  %886 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %887 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %886, i32 0, i32 16
  %888 = load %struct.TYPE_50__*, %struct.TYPE_50__** %887, align 8
  %889 = icmp ne %struct.TYPE_50__* %888, null
  br i1 %889, label %890, label %900

890:                                              ; preds = %872
  %891 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %892 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %891, i32 0, i32 2
  %893 = load %struct.TYPE_48__*, %struct.TYPE_48__** %892, align 8
  %894 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %895 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %894, i32 0, i32 13
  %896 = load %struct.TYPE_58__*, %struct.TYPE_58__** %895, align 8
  %897 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %896, i32 0, i32 0
  %898 = load %struct.TYPE_57__*, %struct.TYPE_57__** %897, align 8
  %899 = call i32 @iter_store_parentside_NS(%struct.TYPE_48__* %893, %struct.TYPE_57__* %898)
  br label %900

900:                                              ; preds = %890, %872
  %901 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %902 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %901, i32 0, i32 2
  %903 = load %struct.TYPE_48__*, %struct.TYPE_48__** %902, align 8
  %904 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %903, i32 0, i32 5
  %905 = load i64, i64* %904, align 8
  %906 = icmp ne i64 %905, 0
  br i1 %906, label %907, label %924

907:                                              ; preds = %900
  %908 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %909 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %908, i32 0, i32 2
  %910 = load %struct.TYPE_48__*, %struct.TYPE_48__** %909, align 8
  %911 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %910, i32 0, i32 5
  %912 = load i64, i64* %911, align 8
  %913 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %914 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %913, i32 0, i32 13
  %915 = load %struct.TYPE_58__*, %struct.TYPE_58__** %914, align 8
  %916 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %915, i32 0, i32 0
  %917 = load %struct.TYPE_57__*, %struct.TYPE_57__** %916, align 8
  %918 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %919 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %918, i32 0, i32 4
  %920 = load %struct.TYPE_60__*, %struct.TYPE_60__** %919, align 8
  %921 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %920, i32 0, i32 1
  %922 = load i32*, i32** %921, align 8
  %923 = call i32 @val_neg_addreferral(i64 %912, %struct.TYPE_57__* %917, i32* %922)
  br label %924

924:                                              ; preds = %907, %900
  br label %925

925:                                              ; preds = %924, %851, %823, %816, %809, %795
  %926 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %927 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %926, i32 0, i32 7
  %928 = load i32, i32* %927, align 8
  %929 = icmp ne i32 %928, 0
  br i1 %929, label %983, label %930

930:                                              ; preds = %925
  %931 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %932 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %931, i32 0, i32 18
  %933 = load i64, i64* %932, align 8
  %934 = icmp ne i64 %933, 0
  br i1 %934, label %935, label %983

935:                                              ; preds = %930
  %936 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %937 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %936, i32 0, i32 17
  %938 = load i64, i64* %937, align 8
  %939 = icmp ne i64 %938, 0
  br i1 %939, label %983, label %940

940:                                              ; preds = %935
  %941 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %942 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %941, i32 0, i32 13
  %943 = load %struct.TYPE_58__*, %struct.TYPE_58__** %942, align 8
  %944 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %943, i32 0, i32 0
  %945 = load %struct.TYPE_57__*, %struct.TYPE_57__** %944, align 8
  %946 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %947 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %946, i32 0, i32 6
  %948 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %947, i32 0, i32 2
  %949 = load i32*, i32** %948, align 8
  %950 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %951 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %950, i32 0, i32 6
  %952 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %951, i32 0, i32 0
  %953 = load i64, i64* %952, align 8
  %954 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %955 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %954, i32 0, i32 6
  %956 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %955, i32 0, i32 1
  %957 = load i32, i32* %956, align 8
  %958 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %959 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %958, i32 0, i32 6
  %960 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %959, i32 0, i32 3
  %961 = load i32, i32* %960, align 8
  %962 = call i64 @reply_find_rrset(%struct.TYPE_57__* %945, i32* %949, i64 %953, i32 %957, i32 %961)
  %963 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %964 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %963, i32 0, i32 17
  store i64 %962, i64* %964, align 8
  %965 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %966 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %965, i32 0, i32 17
  %967 = load i64, i64* %966, align 8
  %968 = icmp ne i64 %967, 0
  br i1 %968, label %969, label %982

969:                                              ; preds = %940
  %970 = load i64, i64* @VERB_ALGO, align 8
  %971 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %972 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %971, i32 0, i32 17
  %973 = load i64, i64* %972, align 8
  %974 = call i32 @log_rrset_key(i64 %970, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i64 %973)
  %975 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %976 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %975, i32 0, i32 2
  %977 = load %struct.TYPE_48__*, %struct.TYPE_48__** %976, align 8
  %978 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %979 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %978, i32 0, i32 17
  %980 = load i64, i64* %979, align 8
  %981 = call i32 @iter_store_parentside_rrset(%struct.TYPE_48__* %977, i64 %980)
  br label %982

982:                                              ; preds = %969, %940
  br label %983

983:                                              ; preds = %982, %935, %930, %925
  %984 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %985 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %984, i32 0, i32 13
  %986 = load %struct.TYPE_58__*, %struct.TYPE_58__** %985, align 8
  %987 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %988 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %987, i32 0, i32 12
  store %struct.TYPE_58__* %986, %struct.TYPE_58__** %988, align 8
  %989 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %990 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %989, i32 0, i32 13
  %991 = load %struct.TYPE_58__*, %struct.TYPE_58__** %990, align 8
  %992 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %993 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %992, i32 0, i32 4
  %994 = load i32*, i32** %993, align 8
  %995 = call %struct.TYPE_60__* @delegpt_from_message(%struct.TYPE_58__* %991, i32* %994)
  %996 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %997 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %996, i32 0, i32 4
  store %struct.TYPE_60__* %995, %struct.TYPE_60__** %997, align 8
  %998 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %999 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %998, i32 0, i32 2
  %1000 = load %struct.TYPE_48__*, %struct.TYPE_48__** %999, align 8
  %1001 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1000, i32 0, i32 1
  %1002 = load %struct.TYPE_55__*, %struct.TYPE_55__** %1001, align 8
  %1003 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1002, i32 0, i32 1
  %1004 = load i64, i64* %1003, align 8
  %1005 = icmp ne i64 %1004, 0
  br i1 %1005, label %1006, label %1011

1006:                                             ; preds = %983
  %1007 = load i8*, i8** @INIT_MINIMISE_STATE, align 8
  %1008 = ptrtoint i8* %1007 to i64
  %1009 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1010 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1009, i32 0, i32 0
  store i64 %1008, i64* %1010, align 8
  br label %1011

1011:                                             ; preds = %1006, %983
  %1012 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1013 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1012, i32 0, i32 4
  %1014 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1013, align 8
  %1015 = icmp ne %struct.TYPE_60__* %1014, null
  br i1 %1015, label %1023, label %1016

1016:                                             ; preds = %1011
  %1017 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1018 = call i32 @errinf(%struct.module_qstate* %1017, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  %1019 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1020 = load i32, i32* %7, align 4
  %1021 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %1022 = call i32 @error_response(%struct.module_qstate* %1019, i32 %1020, i32 %1021)
  store i32 %1022, i32* %4, align 4
  br label %1637

1023:                                             ; preds = %1011
  %1024 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1025 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1024, i32 0, i32 2
  %1026 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1025, align 8
  %1027 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1028 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1027, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1028, i32 0, i32 3
  %1030 = load i32, i32* %1029, align 8
  %1031 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1032 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1031, i32 0, i32 4
  %1033 = load i32*, i32** %1032, align 8
  %1034 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1035 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1034, i32 0, i32 4
  %1036 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1035, align 8
  %1037 = call i32 @cache_fill_missing(%struct.TYPE_48__* %1026, i32 %1030, i32* %1033, %struct.TYPE_60__* %1036)
  %1038 = icmp ne i32 %1037, 0
  br i1 %1038, label %1046, label %1039

1039:                                             ; preds = %1023
  %1040 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1041 = call i32 @errinf(%struct.module_qstate* %1040, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0))
  %1042 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1043 = load i32, i32* %7, align 4
  %1044 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %1045 = call i32 @error_response(%struct.module_qstate* %1042, i32 %1043, i32 %1044)
  store i32 %1045, i32* %4, align 4
  br label %1637

1046:                                             ; preds = %1023
  %1047 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1048 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1047, i32 0, i32 16
  %1049 = load %struct.TYPE_50__*, %struct.TYPE_50__** %1048, align 8
  %1050 = icmp ne %struct.TYPE_50__* %1049, null
  br i1 %1050, label %1051, label %1072

1051:                                             ; preds = %1046
  %1052 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1053 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1052, i32 0, i32 4
  %1054 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1053, align 8
  %1055 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1054, i32 0, i32 1
  %1056 = load i32*, i32** %1055, align 8
  %1057 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1058 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1057, i32 0, i32 16
  %1059 = load %struct.TYPE_50__*, %struct.TYPE_50__** %1058, align 8
  %1060 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %1059, i32 0, i32 0
  %1061 = load i32, i32* %1060, align 4
  %1062 = call i64 @query_dname_compare(i32* %1056, i32 %1061)
  %1063 = icmp eq i64 %1062, 0
  br i1 %1063, label %1064, label %1072

1064:                                             ; preds = %1051
  %1065 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1066 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1065, i32 0, i32 4
  %1067 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1066, align 8
  %1068 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1069 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1068, i32 0, i32 16
  %1070 = load %struct.TYPE_50__*, %struct.TYPE_50__** %1069, align 8
  %1071 = call i32 @iter_merge_retry_counts(%struct.TYPE_60__* %1067, %struct.TYPE_50__* %1070)
  br label %1072

1072:                                             ; preds = %1064, %1051, %1046
  %1073 = load i64, i64* @VERB_ALGO, align 8
  %1074 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1075 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1074, i32 0, i32 4
  %1076 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1075, align 8
  %1077 = call i32 @delegpt_log(i64 %1073, %struct.TYPE_60__* %1076)
  %1078 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1079 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1078, i32 0, i32 15
  %1080 = load i32, i32* %1079, align 8
  %1081 = add nsw i32 %1080, 1
  store i32 %1081, i32* %1079, align 8
  %1082 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1083 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1082, i32 0, i32 2
  store i64 0, i64* %1083, align 8
  %1084 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1085 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1084, i32 0, i32 2
  %1086 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1085, align 8
  %1087 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1088 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1087, i32 0, i32 4
  %1089 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1088, align 8
  %1090 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1091 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1090, i32 0, i32 13
  %1092 = load %struct.TYPE_58__*, %struct.TYPE_58__** %1091, align 8
  %1093 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1094 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1093, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1094, i32 0, i32 3
  %1096 = load i32, i32* %1095, align 8
  %1097 = call i64 @iter_indicates_dnssec(%struct.TYPE_48__* %1086, %struct.TYPE_60__* %1089, %struct.TYPE_58__* %1092, i32 %1096)
  %1098 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1099 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1098, i32 0, i32 14
  store i64 %1097, i64* %1099, align 8
  %1100 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1101 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1100, i32 0, i32 14
  %1102 = load i64, i64* %1101, align 8
  %1103 = icmp ne i64 %1102, 0
  br i1 %1103, label %1104, label %1125

1104:                                             ; preds = %1072
  %1105 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1106 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1105, i32 0, i32 2
  %1107 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1106, align 8
  %1108 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1107, i32 0, i32 1
  %1109 = load %struct.TYPE_55__*, %struct.TYPE_55__** %1108, align 8
  %1110 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1109, i32 0, i32 3
  %1111 = load i64, i64* %1110, align 8
  %1112 = icmp ne i64 %1111, 0
  br i1 %1112, label %1113, label %1125

1113:                                             ; preds = %1104
  %1114 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1115 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1114, i32 0, i32 0
  %1116 = load i32, i32* %1115, align 8
  %1117 = load i32, i32* @BIT_CD, align 4
  %1118 = and i32 %1116, %1117
  %1119 = icmp ne i32 %1118, 0
  br i1 %1119, label %1125, label %1120

1120:                                             ; preds = %1113
  %1121 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1122 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1123 = load i32, i32* %7, align 4
  %1124 = call i32 @generate_dnskey_prefetch(%struct.module_qstate* %1121, %struct.iter_qstate* %1122, i32 %1123)
  br label %1125

1125:                                             ; preds = %1120, %1113, %1104, %1072
  %1126 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1127 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1126, i32 0, i32 2
  %1128 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1127, align 8
  %1129 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1128, i32 0, i32 1
  %1130 = load %struct.TYPE_55__*, %struct.TYPE_55__** %1129, align 8
  %1131 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1130, i32 0, i32 2
  %1132 = load i64, i64* %1131, align 8
  %1133 = icmp ne i64 %1132, 0
  br i1 %1133, label %1134, label %1139

1134:                                             ; preds = %1125
  %1135 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1136 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1137 = load i32, i32* %7, align 4
  %1138 = call i32 @generate_ns_check(%struct.module_qstate* %1135, %struct.iter_qstate* %1136, i32 %1137)
  br label %1139

1139:                                             ; preds = %1134, %1125
  %1140 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1141 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1140, i32 0, i32 9
  %1142 = call i32 @outbound_list_clear(i32* %1141)
  %1143 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1144 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1143, i32 0, i32 8
  store i64 0, i64* %1144, align 8
  %1145 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1146 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1145, i32 0, i32 2
  %1147 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1146, align 8
  %1148 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1147, i32 0, i32 4
  %1149 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %1148, align 8
  %1150 = call i32 @fptr_whitelist_modenv_detach_subs(i32 (%struct.module_qstate*)* %1149)
  %1151 = call i32 @fptr_ok(i32 %1150)
  %1152 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1153 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1152, i32 0, i32 2
  %1154 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1153, align 8
  %1155 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1154, i32 0, i32 4
  %1156 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %1155, align 8
  %1157 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1158 = call i32 %1156(%struct.module_qstate* %1157)
  %1159 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1160 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1159, i32 0, i32 7
  store i64 0, i64* %1160, align 8
  %1161 = load i64, i64* @VERB_ALGO, align 8
  %1162 = call i32 (i64, i8*, ...) @verbose(i64 %1161, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %1163 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1164 = load i32, i32* @QUERYTARGETS_STATE, align 4
  %1165 = call i32 @next_state(%struct.iter_qstate* %1163, i32 %1164)
  store i32 %1165, i32* %4, align 4
  br label %1637

1166:                                             ; preds = %754
  %1167 = load i32, i32* %9, align 4
  %1168 = load i32, i32* @RESPONSE_TYPE_CNAME, align 4
  %1169 = icmp eq i32 %1167, %1168
  br i1 %1169, label %1170, label %1394

1170:                                             ; preds = %1166
  store i32* null, i32** %15, align 8
  store i64 0, i64* %16, align 8
  %1171 = load i64, i64* @VERB_DETAIL, align 8
  %1172 = call i32 (i64, i8*, ...) @verbose(i64 %1171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %1173 = load i64, i64* @verbosity, align 8
  %1174 = load i64, i64* @VERB_ALGO, align 8
  %1175 = icmp sge i64 %1173, %1174
  br i1 %1175, label %1176, label %1187

1176:                                             ; preds = %1170
  %1177 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1178 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1177, i32 0, i32 13
  %1179 = load %struct.TYPE_58__*, %struct.TYPE_58__** %1178, align 8
  %1180 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %1179, i32 0, i32 1
  %1181 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1182 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1181, i32 0, i32 13
  %1183 = load %struct.TYPE_58__*, %struct.TYPE_58__** %1182, align 8
  %1184 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %1183, i32 0, i32 0
  %1185 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1184, align 8
  %1186 = call i32 @log_dns_msg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), %struct.TYPE_47__* %1180, %struct.TYPE_57__* %1185)
  br label %1187

1187:                                             ; preds = %1176, %1170
  %1188 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1189 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1188, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1189, i32 0, i32 1
  %1191 = load i32, i32* %1190, align 8
  %1192 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %1193 = icmp eq i32 %1191, %1192
  br i1 %1193, label %1194, label %1249

1194:                                             ; preds = %1187
  %1195 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1196 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1195, i32 0, i32 11
  %1197 = load i32*, i32** %1196, align 8
  %1198 = icmp ne i32* %1197, null
  br i1 %1198, label %1249, label %1199

1199:                                             ; preds = %1194
  %1200 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1201 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1200, i32 0, i32 1
  %1202 = load i32, i32* %1201, align 8
  %1203 = load i32, i32* @BIT_RD, align 4
  %1204 = and i32 %1202, %1203
  %1205 = icmp ne i32 %1204, 0
  br i1 %1205, label %1249, label %1206

1206:                                             ; preds = %1199
  %1207 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1208 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1207, i32 0, i32 13
  %1209 = load %struct.TYPE_58__*, %struct.TYPE_58__** %1208, align 8
  %1210 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1211 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1210, i32 0, i32 4
  %1212 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1211, align 8
  %1213 = call i64 @iter_ds_toolow(%struct.TYPE_58__* %1209, %struct.TYPE_60__* %1212)
  %1214 = icmp ne i64 %1213, 0
  br i1 %1214, label %1215, label %1249

1215:                                             ; preds = %1206
  %1216 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1217 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1216, i32 0, i32 6
  %1218 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1219 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1218, i32 0, i32 4
  %1220 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1219, align 8
  %1221 = call i64 @iter_dp_cangodown(%struct.TYPE_52__* %1217, %struct.TYPE_60__* %1220)
  %1222 = icmp ne i64 %1221, 0
  br i1 %1222, label %1223, label %1249

1223:                                             ; preds = %1215
  %1224 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1225 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1224, i32 0, i32 9
  %1226 = call i32 @outbound_list_clear(i32* %1225)
  %1227 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1228 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1227, i32 0, i32 8
  store i64 0, i64* %1228, align 8
  %1229 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1230 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1229, i32 0, i32 2
  %1231 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1230, align 8
  %1232 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1231, i32 0, i32 4
  %1233 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %1232, align 8
  %1234 = call i32 @fptr_whitelist_modenv_detach_subs(i32 (%struct.module_qstate*)* %1233)
  %1235 = call i32 @fptr_ok(i32 %1234)
  %1236 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1237 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1236, i32 0, i32 2
  %1238 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1237, align 8
  %1239 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1238, i32 0, i32 4
  %1240 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %1239, align 8
  %1241 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1242 = call i32 %1240(%struct.module_qstate* %1241)
  %1243 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1244 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1243, i32 0, i32 7
  store i64 0, i64* %1244, align 8
  %1245 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1246 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1247 = load i32, i32* %7, align 4
  %1248 = call i32 @processDSNSFind(%struct.module_qstate* %1245, %struct.iter_qstate* %1246, i32 %1247)
  store i32 %1248, i32* %4, align 4
  br label %1637

1249:                                             ; preds = %1215, %1206, %1199, %1194, %1187
  %1250 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1251 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1252 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1253 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1252, i32 0, i32 13
  %1254 = load %struct.TYPE_58__*, %struct.TYPE_58__** %1253, align 8
  %1255 = call i32 @handle_cname_response(%struct.module_qstate* %1250, %struct.iter_qstate* %1251, %struct.TYPE_58__* %1254, i32** %15, i64* %16)
  %1256 = icmp ne i32 %1255, 0
  br i1 %1256, label %1264, label %1257

1257:                                             ; preds = %1249
  %1258 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1259 = call i32 @errinf(%struct.module_qstate* %1258, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  %1260 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1261 = load i32, i32* %7, align 4
  %1262 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %1263 = call i32 @error_response(%struct.module_qstate* %1260, i32 %1261, i32 %1262)
  store i32 %1263, i32* %4, align 4
  br label %1637

1264:                                             ; preds = %1249
  %1265 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1266 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1265, i32 0, i32 7
  %1267 = load i32, i32* %1266, align 8
  %1268 = icmp ne i32 %1267, 0
  br i1 %1268, label %1303, label %1269

1269:                                             ; preds = %1264
  %1270 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1271 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1270, i32 0, i32 2
  %1272 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1271, align 8
  %1273 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1274 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1273, i32 0, i32 13
  %1275 = load %struct.TYPE_58__*, %struct.TYPE_58__** %1274, align 8
  %1276 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %1275, i32 0, i32 1
  %1277 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1278 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1277, i32 0, i32 13
  %1279 = load %struct.TYPE_58__*, %struct.TYPE_58__** %1278, align 8
  %1280 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %1279, i32 0, i32 0
  %1281 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1280, align 8
  %1282 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1283 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1282, i32 0, i32 6
  %1284 = load i32, i32* %1283, align 4
  %1285 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1286 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1285, i32 0, i32 4
  %1287 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1286, align 8
  %1288 = icmp ne %struct.TYPE_60__* %1287, null
  br i1 %1288, label %1289, label %1296

1289:                                             ; preds = %1269
  %1290 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1291 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1290, i32 0, i32 4
  %1292 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1291, align 8
  %1293 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1292, i32 0, i32 3
  %1294 = load i64, i64* %1293, align 8
  %1295 = icmp ne i64 %1294, 0
  br label %1296

1296:                                             ; preds = %1289, %1269
  %1297 = phi i1 [ false, %1269 ], [ %1295, %1289 ]
  %1298 = zext i1 %1297 to i32
  %1299 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1300 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1299, i32 0, i32 0
  %1301 = load i32, i32* %1300, align 8
  %1302 = call i32 @iter_dns_store(%struct.TYPE_48__* %1272, %struct.TYPE_47__* %1276, %struct.TYPE_57__* %1281, i32 1, i32 %1284, i32 %1298, i32* null, i32 %1301)
  br label %1303

1303:                                             ; preds = %1296, %1264
  %1304 = load i32*, i32** %15, align 8
  %1305 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1306 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1305, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1306, i32 0, i32 2
  store i32* %1304, i32** %1307, align 8
  %1308 = load i64, i64* %16, align 8
  %1309 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1310 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1309, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1310, i32 0, i32 0
  store i64 %1308, i64* %1311, align 8
  %1312 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1313 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1312, i32 0, i32 12
  store %struct.TYPE_58__* null, %struct.TYPE_58__** %1313, align 8
  %1314 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1315 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1314, i32 0, i32 4
  store %struct.TYPE_60__* null, %struct.TYPE_60__** %1315, align 8
  %1316 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1317 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1316, i32 0, i32 11
  store i32* null, i32** %1317, align 8
  %1318 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1319 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1318, i32 0, i32 5
  store i64 0, i64* %1319, align 8
  %1320 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1321 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1320, i32 0, i32 2
  store i64 0, i64* %1321, align 8
  %1322 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1323 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1322, i32 0, i32 0
  %1324 = load i64, i64* %1323, align 8
  %1325 = load i64, i64* @MINIMISE_STATE, align 8
  %1326 = icmp ne i64 %1324, %1325
  br i1 %1326, label %1327, label %1332

1327:                                             ; preds = %1303
  %1328 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1329 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1328, i32 0, i32 10
  %1330 = load i32, i32* %1329, align 4
  %1331 = add nsw i32 %1330, 1
  store i32 %1331, i32* %1329, align 4
  br label %1332

1332:                                             ; preds = %1327, %1303
  %1333 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1334 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1333, i32 0, i32 2
  %1335 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1334, align 8
  %1336 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1335, i32 0, i32 1
  %1337 = load %struct.TYPE_55__*, %struct.TYPE_55__** %1336, align 8
  %1338 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1337, i32 0, i32 1
  %1339 = load i64, i64* %1338, align 8
  %1340 = icmp ne i64 %1339, 0
  br i1 %1340, label %1341, label %1346

1341:                                             ; preds = %1332
  %1342 = load i8*, i8** @INIT_MINIMISE_STATE, align 8
  %1343 = ptrtoint i8* %1342 to i64
  %1344 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1345 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1344, i32 0, i32 0
  store i64 %1343, i64* %1345, align 8
  br label %1346

1346:                                             ; preds = %1341, %1332
  %1347 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1348 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1347, i32 0, i32 9
  %1349 = call i32 @outbound_list_clear(i32* %1348)
  %1350 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1351 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1350, i32 0, i32 8
  store i64 0, i64* %1351, align 8
  %1352 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1353 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1352, i32 0, i32 2
  %1354 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1353, align 8
  %1355 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1354, i32 0, i32 4
  %1356 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %1355, align 8
  %1357 = call i32 @fptr_whitelist_modenv_detach_subs(i32 (%struct.module_qstate*)* %1356)
  %1358 = call i32 @fptr_ok(i32 %1357)
  %1359 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1360 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1359, i32 0, i32 2
  %1361 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1360, align 8
  %1362 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1361, i32 0, i32 4
  %1363 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %1362, align 8
  %1364 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1365 = call i32 %1363(%struct.module_qstate* %1364)
  %1366 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1367 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1366, i32 0, i32 7
  store i64 0, i64* %1367, align 8
  %1368 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1369 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1368, i32 0, i32 3
  %1370 = load %struct.TYPE_54__*, %struct.TYPE_54__** %1369, align 8
  %1371 = icmp ne %struct.TYPE_54__* %1370, null
  br i1 %1371, label %1372, label %1388

1372:                                             ; preds = %1346
  %1373 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1374 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1373, i32 0, i32 5
  %1375 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1376 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1375, i32 0, i32 3
  %1377 = load %struct.TYPE_54__*, %struct.TYPE_54__** %1376, align 8
  %1378 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1377, i32 0, i32 1
  %1379 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1380 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1379, i32 0, i32 3
  %1381 = load %struct.TYPE_54__*, %struct.TYPE_54__** %1380, align 8
  %1382 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1381, i32 0, i32 0
  %1383 = load i32, i32* %1382, align 4
  %1384 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1385 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1384, i32 0, i32 4
  %1386 = load i32*, i32** %1385, align 8
  %1387 = call i32 @sock_list_insert(i32* %1374, i32* %1378, i32 %1383, i32* %1386)
  br label %1388

1388:                                             ; preds = %1372, %1346
  %1389 = load i64, i64* @VERB_ALGO, align 8
  %1390 = call i32 (i64, i8*, ...) @verbose(i64 %1389, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0))
  %1391 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1392 = load i32, i32* @INIT_REQUEST_STATE, align 4
  %1393 = call i32 @next_state(%struct.iter_qstate* %1391, i32 %1392)
  store i32 %1393, i32* %4, align 4
  br label %1637

1394:                                             ; preds = %1166
  %1395 = load i32, i32* %9, align 4
  %1396 = load i32, i32* @RESPONSE_TYPE_LAME, align 4
  %1397 = icmp eq i32 %1395, %1396
  br i1 %1397, label %1398, label %1466

1398:                                             ; preds = %1394
  %1399 = load i64, i64* @VERB_DETAIL, align 8
  %1400 = load i32, i32* %8, align 4
  %1401 = icmp ne i32 %1400, 0
  %1402 = zext i1 %1401 to i64
  %1403 = select i1 %1401, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)
  %1404 = call i32 (i64, i8*, ...) @verbose(i64 %1399, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i8* %1403)
  %1405 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1406 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1405, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1406, i32 0, i32 2
  %1408 = load i32*, i32** %1407, align 8
  %1409 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1410 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1409, i32 0, i32 4
  %1411 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1410, align 8
  %1412 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1411, i32 0, i32 1
  %1413 = load i32*, i32** %1412, align 8
  %1414 = call i64 @dname_subdomain_c(i32* %1408, i32* %1413)
  %1415 = icmp ne i64 %1414, 0
  br i1 %1415, label %1418, label %1416

1416:                                             ; preds = %1398
  %1417 = call i32 @log_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0))
  br label %1465

1418:                                             ; preds = %1398
  %1419 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1420 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1419, i32 0, i32 3
  %1421 = load %struct.TYPE_54__*, %struct.TYPE_54__** %1420, align 8
  %1422 = icmp ne %struct.TYPE_54__* %1421, null
  br i1 %1422, label %1423, label %1464

1423:                                             ; preds = %1418
  %1424 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1425 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1424, i32 0, i32 2
  %1426 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1425, align 8
  %1427 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1426, i32 0, i32 3
  %1428 = load i32, i32* %1427, align 8
  %1429 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1430 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1429, i32 0, i32 3
  %1431 = load %struct.TYPE_54__*, %struct.TYPE_54__** %1430, align 8
  %1432 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1431, i32 0, i32 1
  %1433 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1434 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1433, i32 0, i32 3
  %1435 = load %struct.TYPE_54__*, %struct.TYPE_54__** %1434, align 8
  %1436 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1435, i32 0, i32 0
  %1437 = load i32, i32* %1436, align 4
  %1438 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1439 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1438, i32 0, i32 4
  %1440 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1439, align 8
  %1441 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1440, i32 0, i32 1
  %1442 = load i32*, i32** %1441, align 8
  %1443 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1444 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1443, i32 0, i32 4
  %1445 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1444, align 8
  %1446 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1445, i32 0, i32 2
  %1447 = load i32, i32* %1446, align 8
  %1448 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1449 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1448, i32 0, i32 2
  %1450 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1449, align 8
  %1451 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1450, i32 0, i32 2
  %1452 = load i32*, i32** %1451, align 8
  %1453 = load i32, i32* %1452, align 4
  %1454 = load i32, i32* %8, align 4
  %1455 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1456 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1455, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1456, i32 0, i32 1
  %1458 = load i32, i32* %1457, align 8
  %1459 = call i32 @infra_set_lame(i32 %1428, i32* %1432, i32 %1437, i32* %1442, i32 %1447, i32 %1453, i32 %1454, i32 0, i32 %1458)
  %1460 = icmp ne i32 %1459, 0
  br i1 %1460, label %1463, label %1461

1461:                                             ; preds = %1423
  %1462 = call i32 @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0))
  br label %1463

1463:                                             ; preds = %1461, %1423
  br label %1464

1464:                                             ; preds = %1463, %1418
  br label %1465

1465:                                             ; preds = %1464, %1416
  br label %1547

1466:                                             ; preds = %1394
  %1467 = load i32, i32* %9, align 4
  %1468 = load i32, i32* @RESPONSE_TYPE_REC_LAME, align 4
  %1469 = icmp eq i32 %1467, %1468
  br i1 %1469, label %1470, label %1535

1470:                                             ; preds = %1466
  %1471 = load i64, i64* @VERB_DETAIL, align 8
  %1472 = call i32 (i64, i8*, ...) @verbose(i64 %1471, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.23, i64 0, i64 0))
  %1473 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1474 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1473, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1474, i32 0, i32 2
  %1476 = load i32*, i32** %1475, align 8
  %1477 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1478 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1477, i32 0, i32 4
  %1479 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1478, align 8
  %1480 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1479, i32 0, i32 1
  %1481 = load i32*, i32** %1480, align 8
  %1482 = call i64 @dname_subdomain_c(i32* %1476, i32* %1481)
  %1483 = icmp ne i64 %1482, 0
  br i1 %1483, label %1486, label %1484

1484:                                             ; preds = %1470
  %1485 = call i32 @log_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0))
  br label %1534

1486:                                             ; preds = %1470
  %1487 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1488 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1487, i32 0, i32 3
  %1489 = load %struct.TYPE_54__*, %struct.TYPE_54__** %1488, align 8
  %1490 = icmp ne %struct.TYPE_54__* %1489, null
  br i1 %1490, label %1491, label %1533

1491:                                             ; preds = %1486
  %1492 = load i64, i64* @VERB_DETAIL, align 8
  %1493 = call i32 (i64, i8*, ...) @verbose(i64 %1492, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  %1494 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1495 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1494, i32 0, i32 2
  %1496 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1495, align 8
  %1497 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1496, i32 0, i32 3
  %1498 = load i32, i32* %1497, align 8
  %1499 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1500 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1499, i32 0, i32 3
  %1501 = load %struct.TYPE_54__*, %struct.TYPE_54__** %1500, align 8
  %1502 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1501, i32 0, i32 1
  %1503 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1504 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1503, i32 0, i32 3
  %1505 = load %struct.TYPE_54__*, %struct.TYPE_54__** %1504, align 8
  %1506 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1505, i32 0, i32 0
  %1507 = load i32, i32* %1506, align 4
  %1508 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1509 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1508, i32 0, i32 4
  %1510 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1509, align 8
  %1511 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1510, i32 0, i32 1
  %1512 = load i32*, i32** %1511, align 8
  %1513 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1514 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1513, i32 0, i32 4
  %1515 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1514, align 8
  %1516 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1515, i32 0, i32 2
  %1517 = load i32, i32* %1516, align 8
  %1518 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1519 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1518, i32 0, i32 2
  %1520 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1519, align 8
  %1521 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1520, i32 0, i32 2
  %1522 = load i32*, i32** %1521, align 8
  %1523 = load i32, i32* %1522, align 4
  %1524 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1525 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1524, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1525, i32 0, i32 1
  %1527 = load i32, i32* %1526, align 8
  %1528 = call i32 @infra_set_lame(i32 %1498, i32* %1502, i32 %1507, i32* %1512, i32 %1517, i32 %1523, i32 0, i32 1, i32 %1527)
  %1529 = icmp ne i32 %1528, 0
  br i1 %1529, label %1532, label %1530

1530:                                             ; preds = %1491
  %1531 = call i32 @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0))
  br label %1532

1532:                                             ; preds = %1530, %1491
  br label %1533

1533:                                             ; preds = %1532, %1486
  br label %1534

1534:                                             ; preds = %1533, %1484
  br label %1546

1535:                                             ; preds = %1466
  %1536 = load i32, i32* %9, align 4
  %1537 = load i32, i32* @RESPONSE_TYPE_THROWAWAY, align 4
  %1538 = icmp eq i32 %1536, %1537
  br i1 %1538, label %1539, label %1542

1539:                                             ; preds = %1535
  %1540 = load i64, i64* @VERB_DETAIL, align 8
  %1541 = call i32 (i64, i8*, ...) @verbose(i64 %1540, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0))
  br label %1545

1542:                                             ; preds = %1535
  %1543 = load i32, i32* %9, align 4
  %1544 = call i32 @log_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i64 0, i64 0), i32 %1543)
  br label %1545

1545:                                             ; preds = %1542, %1539
  br label %1546

1546:                                             ; preds = %1545, %1534
  br label %1547

1547:                                             ; preds = %1546, %1465
  br label %1548

1548:                                             ; preds = %1547
  br label %1549

1549:                                             ; preds = %1548
  br label %1550

1550:                                             ; preds = %1549
  %1551 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1552 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1551, i32 0, i32 2
  %1553 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1552, align 8
  %1554 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1553, i32 0, i32 1
  %1555 = load %struct.TYPE_55__*, %struct.TYPE_55__** %1554, align 8
  %1556 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1555, i32 0, i32 1
  %1557 = load i64, i64* %1556, align 8
  %1558 = icmp ne i64 %1557, 0
  br i1 %1558, label %1559, label %1572

1559:                                             ; preds = %1550
  %1560 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1561 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1560, i32 0, i32 2
  %1562 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1561, align 8
  %1563 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1562, i32 0, i32 1
  %1564 = load %struct.TYPE_55__*, %struct.TYPE_55__** %1563, align 8
  %1565 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1564, i32 0, i32 0
  %1566 = load i64, i64* %1565, align 8
  %1567 = icmp ne i64 %1566, 0
  br i1 %1567, label %1572, label %1568

1568:                                             ; preds = %1559
  %1569 = load i64, i64* @DONOT_MINIMISE_STATE, align 8
  %1570 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1571 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1570, i32 0, i32 0
  store i64 %1569, i64* %1571, align 8
  br label %1572

1572:                                             ; preds = %1568, %1559, %1550
  %1573 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1574 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1573, i32 0, i32 5
  %1575 = load i64, i64* %1574, align 8
  %1576 = icmp ne i64 %1575, 0
  br i1 %1576, label %1577, label %1633

1577:                                             ; preds = %1572
  %1578 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1579 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1578, i32 0, i32 5
  store i64 0, i64* %1579, align 8
  %1580 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1581 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1580, i32 0, i32 2
  %1582 = load %struct.TYPE_48__*, %struct.TYPE_48__** %1581, align 8
  %1583 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1582, i32 0, i32 0
  %1584 = load i32, i32* %1583, align 8
  %1585 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1586 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1585, i32 0, i32 4
  %1587 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1586, align 8
  %1588 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1587, i32 0, i32 1
  %1589 = load i32*, i32** %1588, align 8
  %1590 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1591 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1590, i32 0, i32 4
  %1592 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1591, align 8
  %1593 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1592, i32 0, i32 2
  %1594 = load i32, i32* %1593, align 8
  %1595 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1596 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %1595, i32 0, i32 1
  %1597 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1596, i32 0, i32 1
  %1598 = load i32, i32* %1597, align 8
  %1599 = call i32 @auth_zones_can_fallback(i32 %1584, i32* %1589, i32 %1594, i32 %1598)
  %1600 = icmp ne i32 %1599, 0
  br i1 %1600, label %1615, label %1601

1601:                                             ; preds = %1577
  %1602 = load i64, i64* @VERB_ALGO, align 8
  %1603 = call i32 (i64, i8*, ...) @verbose(i64 %1602, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.28, i64 0, i64 0))
  %1604 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1605 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1606 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1605, i32 0, i32 4
  %1607 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1606, align 8
  %1608 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1607, i32 0, i32 1
  %1609 = load i32*, i32** %1608, align 8
  %1610 = call i32 @errinf_dname(%struct.module_qstate* %1604, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.29, i64 0, i64 0), i32* %1609)
  %1611 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %1612 = load i32, i32* %7, align 4
  %1613 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %1614 = call i32 @error_response(%struct.module_qstate* %1611, i32 %1612, i32 %1613)
  store i32 %1614, i32* %4, align 4
  br label %1637

1615:                                             ; preds = %1577
  %1616 = load i64, i64* @VERB_ALGO, align 8
  %1617 = call i32 (i64, i8*, ...) @verbose(i64 %1616, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0))
  %1618 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1619 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1618, i32 0, i32 3
  store i32 1, i32* %1619, align 8
  %1620 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1621 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1620, i32 0, i32 4
  %1622 = load %struct.TYPE_60__*, %struct.TYPE_60__** %1621, align 8
  %1623 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1622, i32 0, i32 0
  %1624 = load i64, i64* %1623, align 8
  %1625 = icmp ne i64 %1624, 0
  br i1 %1625, label %1626, label %1632

1626:                                             ; preds = %1615
  %1627 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1628 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %1627, i32 0, i32 4
  store %struct.TYPE_60__* null, %struct.TYPE_60__** %1628, align 8
  %1629 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1630 = load i32, i32* @INIT_REQUEST_STATE, align 4
  %1631 = call i32 @next_state(%struct.iter_qstate* %1629, i32 %1630)
  store i32 %1631, i32* %4, align 4
  br label %1637

1632:                                             ; preds = %1615
  br label %1633

1633:                                             ; preds = %1632, %1572
  %1634 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %1635 = load i32, i32* @QUERYTARGETS_STATE, align 4
  %1636 = call i32 @next_state(%struct.iter_qstate* %1634, i32 %1635)
  store i32 %1636, i32* %4, align 4
  br label %1637

1637:                                             ; preds = %1633, %1626, %1601, %1388, %1257, %1223, %1139, %1039, %1016, %751, %747, %671, %646, %639, %485, %54
  %1638 = load i32, i32* %4, align 4
  ret i32 %1638
}

declare dso_local i32 @inplace_cb_query_response_call(%struct.TYPE_48__*, %struct.module_qstate*, %struct.TYPE_58__*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @verbose(i64, i8*, ...) #1

declare dso_local i32 @next_state(%struct.iter_qstate*, i32) #1

declare dso_local i32 @response_type_from_server(i32, %struct.TYPE_58__*, %struct.TYPE_59__*, %struct.TYPE_60__*) #1

declare dso_local i32 @iter_msg_has_dnssec(%struct.TYPE_58__*) #1

declare dso_local %struct.delegpt_addr* @delegpt_find_addr(%struct.TYPE_60__*, i32*, i32) #1

declare dso_local i32 @iter_msg_from_zone(%struct.TYPE_58__*, %struct.TYPE_60__*, i32, i32) #1

declare dso_local %struct.ub_packed_rrset_key* @find_NS(%struct.TYPE_57__*, i32, i32) #1

declare dso_local i32 @dname_strict_subdomain_c(i32*, i32*) #1

declare dso_local i64 @dname_subdomain_c(i32*, i32*) #1

declare dso_local i32 @iter_scrub_ds(%struct.TYPE_58__*, %struct.ub_packed_rrset_key*, i32*) #1

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @get_cname_target(%struct.TYPE_53__*, i32**, i64*) #1

declare dso_local i64 @query_dname_compare(i32*, i32) #1

declare dso_local i64 @iter_ds_toolow(%struct.TYPE_58__*, %struct.TYPE_60__*) #1

declare dso_local i64 @iter_dp_cangodown(%struct.TYPE_52__*, %struct.TYPE_60__*) #1

declare dso_local i32 @outbound_list_clear(i32*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_modenv_detach_subs(i32 (%struct.module_qstate*)*) #1

declare dso_local i32 @processDSNSFind(%struct.module_qstate*, %struct.iter_qstate*, i32) #1

declare dso_local i32 @iter_dns_store(%struct.TYPE_48__*, %struct.TYPE_47__*, %struct.TYPE_57__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_list_insert(i32*, i32*, i32, i32*) #1

declare dso_local i32 @iter_scrub_nxdomain(%struct.TYPE_58__*) #1

declare dso_local i32 @final_state(%struct.iter_qstate*) #1

declare dso_local i32 @error_response(%struct.module_qstate*, i32, i32) #1

declare dso_local i32 @log_query_info(i32, i8*, %struct.TYPE_47__*) #1

declare dso_local i32 @generate_sub_request(i32, i32, i32, i32, %struct.module_qstate*, i32, %struct.iter_qstate*, i32, i32, %struct.module_qstate**, i32) #1

declare dso_local i32 @infra_ratelimit_dec(i32, i32*, i32, i32) #1

declare dso_local i64 @reply_find_rrset_section_ns(%struct.TYPE_57__*, i32*, i64, i64, i32) #1

declare dso_local i64 @reply_find_rrset_section_an(%struct.TYPE_57__*, i32*, i64, i64, i32) #1

declare dso_local i32 @iter_store_parentside_NS(%struct.TYPE_48__*, %struct.TYPE_57__*) #1

declare dso_local i32 @val_neg_addreferral(i64, %struct.TYPE_57__*, i32*) #1

declare dso_local i64 @reply_find_rrset(%struct.TYPE_57__*, i32*, i64, i32, i32) #1

declare dso_local i32 @log_rrset_key(i64, i8*, i64) #1

declare dso_local i32 @iter_store_parentside_rrset(%struct.TYPE_48__*, i64) #1

declare dso_local %struct.TYPE_60__* @delegpt_from_message(%struct.TYPE_58__*, i32*) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @cache_fill_missing(%struct.TYPE_48__*, i32, i32*, %struct.TYPE_60__*) #1

declare dso_local i32 @iter_merge_retry_counts(%struct.TYPE_60__*, %struct.TYPE_50__*) #1

declare dso_local i32 @delegpt_log(i64, %struct.TYPE_60__*) #1

declare dso_local i64 @iter_indicates_dnssec(%struct.TYPE_48__*, %struct.TYPE_60__*, %struct.TYPE_58__*, i32) #1

declare dso_local i32 @generate_dnskey_prefetch(%struct.module_qstate*, %struct.iter_qstate*, i32) #1

declare dso_local i32 @generate_ns_check(%struct.module_qstate*, %struct.iter_qstate*, i32) #1

declare dso_local i32 @log_dns_msg(i8*, %struct.TYPE_47__*, %struct.TYPE_57__*) #1

declare dso_local i32 @handle_cname_response(%struct.module_qstate*, %struct.iter_qstate*, %struct.TYPE_58__*, i32**, i64*) #1

declare dso_local i32 @infra_set_lame(i32, i32*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_warn(i8*, i32) #1

declare dso_local i32 @auth_zones_can_fallback(i32, i32*, i32, i32) #1

declare dso_local i32 @errinf_dname(%struct.module_qstate*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
