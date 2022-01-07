; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i64*, i64, i64 }
%struct.uni_setup = type { %struct.TYPE_134__, %struct.TYPE_132__, %struct.TYPE_130__, %struct.TYPE_128__*, %struct.TYPE_126__, %struct.TYPE_123__, %struct.TYPE_121__, %struct.TYPE_119__, %struct.TYPE_117__, %struct.TYPE_115__, %struct.TYPE_112__, %struct.TYPE_110__, %struct.TYPE_108__, %struct.TYPE_106__, %struct.TYPE_104__*, %struct.TYPE_101__, %struct.TYPE_99__, %struct.TYPE_97__, %struct.TYPE_95__, %struct.TYPE_93__*, %struct.TYPE_90__, %struct.TYPE_88__, %struct.TYPE_86__, %struct.TYPE_84__, %struct.TYPE_82__, %struct.TYPE_79__*, %struct.TYPE_77__, %struct.TYPE_75__*, %struct.TYPE_73__, %struct.TYPE_71__*, %struct.TYPE_139__, %struct.TYPE_136__, %struct.TYPE_114__, %struct.TYPE_92__, %struct.TYPE_137__, i32 }
%struct.TYPE_134__ = type { %struct.TYPE_133__ }
%struct.TYPE_133__ = type { i32 }
%struct.TYPE_132__ = type { %struct.TYPE_131__ }
%struct.TYPE_131__ = type { i32 }
%struct.TYPE_130__ = type { %struct.TYPE_129__ }
%struct.TYPE_129__ = type { i32 }
%struct.TYPE_128__ = type { %struct.TYPE_127__ }
%struct.TYPE_127__ = type { i32 }
%struct.TYPE_126__ = type { %struct.TYPE_124__ }
%struct.TYPE_124__ = type { i32 }
%struct.TYPE_123__ = type { %struct.TYPE_122__ }
%struct.TYPE_122__ = type { i32 }
%struct.TYPE_121__ = type { %struct.TYPE_120__ }
%struct.TYPE_120__ = type { i32 }
%struct.TYPE_119__ = type { %struct.TYPE_118__ }
%struct.TYPE_118__ = type { i32 }
%struct.TYPE_117__ = type { %struct.TYPE_116__ }
%struct.TYPE_116__ = type { i32 }
%struct.TYPE_115__ = type { %struct.TYPE_113__ }
%struct.TYPE_113__ = type { i32 }
%struct.TYPE_112__ = type { %struct.TYPE_111__ }
%struct.TYPE_111__ = type { i32 }
%struct.TYPE_110__ = type { %struct.TYPE_109__ }
%struct.TYPE_109__ = type { i32 }
%struct.TYPE_108__ = type { %struct.TYPE_107__ }
%struct.TYPE_107__ = type { i32 }
%struct.TYPE_106__ = type { %struct.TYPE_105__ }
%struct.TYPE_105__ = type { i32 }
%struct.TYPE_104__ = type { %struct.TYPE_102__ }
%struct.TYPE_102__ = type { i32 }
%struct.TYPE_101__ = type { %struct.TYPE_100__ }
%struct.TYPE_100__ = type { i32 }
%struct.TYPE_99__ = type { %struct.TYPE_98__ }
%struct.TYPE_98__ = type { i32 }
%struct.TYPE_97__ = type { %struct.TYPE_96__ }
%struct.TYPE_96__ = type { i32 }
%struct.TYPE_95__ = type { %struct.TYPE_94__ }
%struct.TYPE_94__ = type { i32 }
%struct.TYPE_93__ = type { %struct.TYPE_91__ }
%struct.TYPE_91__ = type { i32 }
%struct.TYPE_90__ = type { %struct.TYPE_89__ }
%struct.TYPE_89__ = type { i32 }
%struct.TYPE_88__ = type { %struct.TYPE_87__ }
%struct.TYPE_87__ = type { i32 }
%struct.TYPE_86__ = type { %struct.TYPE_85__ }
%struct.TYPE_85__ = type { i32 }
%struct.TYPE_84__ = type { %struct.TYPE_83__ }
%struct.TYPE_83__ = type { i32 }
%struct.TYPE_82__ = type { %struct.TYPE_80__ }
%struct.TYPE_80__ = type { i32 }
%struct.TYPE_79__ = type { %struct.TYPE_78__ }
%struct.TYPE_78__ = type { i32 }
%struct.TYPE_77__ = type { %struct.TYPE_76__ }
%struct.TYPE_76__ = type { i32 }
%struct.TYPE_75__ = type { %struct.TYPE_74__ }
%struct.TYPE_74__ = type { i32 }
%struct.TYPE_73__ = type { %struct.TYPE_72__ }
%struct.TYPE_72__ = type { i32 }
%struct.TYPE_71__ = type { %struct.TYPE_140__ }
%struct.TYPE_140__ = type { i32 }
%struct.TYPE_139__ = type { %struct.TYPE_138__ }
%struct.TYPE_138__ = type { i32 }
%struct.TYPE_136__ = type { %struct.TYPE_125__ }
%struct.TYPE_125__ = type { i32 }
%struct.TYPE_114__ = type { %struct.TYPE_103__ }
%struct.TYPE_103__ = type { i32 }
%struct.TYPE_92__ = type { %struct.TYPE_81__ }
%struct.TYPE_81__ = type { i32 }
%struct.TYPE_137__ = type { %struct.TYPE_135__ }
%struct.TYPE_135__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_SETUP = common dso_local global i32 0, align 4
@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_AAL = common dso_local global i32 0, align 4
@UNI_IE_TRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_BEARER = common dso_local global i32 0, align 4
@UNI_IE_BHLI = common dso_local global i32 0, align 4
@UNI_IE_BLLI = common dso_local global i32 0, align 4
@UNI_NUM_IE_BLLI = common dso_local global i64 0, align 8
@UNI_IE_CALLED = common dso_local global i32 0, align 4
@UNI_NUM_IE_CALLEDSUB = common dso_local global i64 0, align 8
@UNI_IE_CALLEDSUB = common dso_local global i32 0, align 4
@UNI_IE_CALLING = common dso_local global i32 0, align 4
@UNI_NUM_IE_CALLINGSUB = common dso_local global i64 0, align 8
@UNI_IE_CALLINGSUB = common dso_local global i32 0, align 4
@UNI_IE_CONNID = common dso_local global i32 0, align 4
@UNI_IE_QOS = common dso_local global i32 0, align 4
@UNI_IE_EETD = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_IE_SCOMPL = common dso_local global i32 0, align 4
@UNI_NUM_IE_TNS = common dso_local global i64 0, align 8
@UNI_IE_TNS = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_ATRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_MINTRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_LIJ_CALLID = common dso_local global i32 0, align 4
@UNI_IE_LIJ_PARAM = common dso_local global i32 0, align 4
@UNI_IE_LIJ_SEQNO = common dso_local global i32 0, align 4
@UNI_IE_EXQOS = common dso_local global i32 0, align 4
@UNI_IE_ABRSETUP = common dso_local global i32 0, align 4
@UNI_IE_ABRADD = common dso_local global i32 0, align 4
@UNI_IE_CSCOPE = common dso_local global i32 0, align 4
@UNI_IE_CALLING_SOFT = common dso_local global i32 0, align 4
@UNI_IE_CALLED_SOFT = common dso_local global i32 0, align 4
@UNI_IE_DTL = common dso_local global i32 0, align 4
@UNI_NUM_IE_DTL = common dso_local global i64 0, align 8
@UNI_IE_REPORT = common dso_local global i32 0, align 4
@UNI_IE_MDCR = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_msg*, %struct.uni_setup*, %struct.unicx*)* @encode_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_setup(%struct.uni_msg* %0, %struct.uni_setup* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_setup*, align 8
  %7 = alloca %struct.unicx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_setup* %1, %struct.uni_setup** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %10 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %11 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %12 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %11, i32 0, i32 35
  %13 = load i32, i32* @UNI_SETUP, align 4
  %14 = load %struct.unicx*, %struct.unicx** %7, align 8
  %15 = call i64 @uni_encode_msg_hdr(%struct.uni_msg* %10, i32* %12, i32 %13, %struct.unicx* %14, i64* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %875

18:                                               ; preds = %3
  %19 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %20 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %19, i32 0, i32 34
  %21 = getelementptr inbounds %struct.TYPE_137__, %struct.TYPE_137__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_135__, %struct.TYPE_135__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @UNI_IE_PRESENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load i32, i32* @UNI_IE_AAL, align 4
  %29 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %30 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %31 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %30, i32 0, i32 34
  %32 = bitcast %struct.TYPE_137__* %31 to %union.uni_ieall*
  %33 = load %struct.unicx*, %struct.unicx** %7, align 8
  %34 = call i64 @uni_encode_ie(i32 %28, %struct.uni_msg* %29, %union.uni_ieall* %32, %struct.unicx* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @UNI_IE_AAL, align 4
  store i32 %37, i32* %4, align 4
  br label %875

38:                                               ; preds = %27, %18
  %39 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %40 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %39, i32 0, i32 33
  %41 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UNI_IE_PRESENT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %38
  %48 = load i32, i32* @UNI_IE_TRAFFIC, align 4
  %49 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %50 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %51 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %50, i32 0, i32 33
  %52 = bitcast %struct.TYPE_92__* %51 to %union.uni_ieall*
  %53 = load %struct.unicx*, %struct.unicx** %7, align 8
  %54 = call i64 @uni_encode_ie(i32 %48, %struct.uni_msg* %49, %union.uni_ieall* %52, %struct.unicx* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @UNI_IE_TRAFFIC, align 4
  store i32 %57, i32* %4, align 4
  br label %875

58:                                               ; preds = %47, %38
  %59 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %60 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %59, i32 0, i32 32
  %61 = getelementptr inbounds %struct.TYPE_114__, %struct.TYPE_114__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @UNI_IE_PRESENT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %58
  %68 = load i32, i32* @UNI_IE_BEARER, align 4
  %69 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %70 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %71 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %70, i32 0, i32 32
  %72 = bitcast %struct.TYPE_114__* %71 to %union.uni_ieall*
  %73 = load %struct.unicx*, %struct.unicx** %7, align 8
  %74 = call i64 @uni_encode_ie(i32 %68, %struct.uni_msg* %69, %union.uni_ieall* %72, %struct.unicx* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @UNI_IE_BEARER, align 4
  store i32 %77, i32* %4, align 4
  br label %875

78:                                               ; preds = %67, %58
  %79 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %80 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %79, i32 0, i32 31
  %81 = getelementptr inbounds %struct.TYPE_136__, %struct.TYPE_136__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_125__, %struct.TYPE_125__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @UNI_IE_PRESENT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %78
  %88 = load i32, i32* @UNI_IE_BHLI, align 4
  %89 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %90 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %91 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %90, i32 0, i32 31
  %92 = bitcast %struct.TYPE_136__* %91 to %union.uni_ieall*
  %93 = load %struct.unicx*, %struct.unicx** %7, align 8
  %94 = call i64 @uni_encode_ie(i32 %88, %struct.uni_msg* %89, %union.uni_ieall* %92, %struct.unicx* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @UNI_IE_BHLI, align 4
  store i32 %97, i32* %4, align 4
  br label %875

98:                                               ; preds = %87, %78
  %99 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %100 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %99, i32 0, i32 30
  %101 = getelementptr inbounds %struct.TYPE_139__, %struct.TYPE_139__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_138__, %struct.TYPE_138__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @UNI_IE_PRESENT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %98
  %108 = load i32, i32* @UNI_IE_BLLI, align 4
  %109 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %110 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %111 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %110, i32 0, i32 30
  %112 = bitcast %struct.TYPE_139__* %111 to %union.uni_ieall*
  %113 = load %struct.unicx*, %struct.unicx** %7, align 8
  %114 = call i64 @uni_encode_ie(i32 %108, %struct.uni_msg* %109, %union.uni_ieall* %112, %struct.unicx* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* @UNI_IE_BLLI, align 4
  %118 = add nsw i32 268435456, %117
  store i32 %118, i32* %4, align 4
  br label %875

119:                                              ; preds = %107, %98
  store i64 0, i64* %9, align 8
  br label %120

120:                                              ; preds = %156, %119
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* @UNI_NUM_IE_BLLI, align 8
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %124, label %159

124:                                              ; preds = %120
  %125 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %126 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %125, i32 0, i32 29
  %127 = load %struct.TYPE_71__*, %struct.TYPE_71__** %126, align 8
  %128 = load i64, i64* %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_140__, %struct.TYPE_140__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @UNI_IE_PRESENT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %124
  %137 = load i32, i32* @UNI_IE_BLLI, align 4
  %138 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %139 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %140 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %139, i32 0, i32 29
  %141 = load %struct.TYPE_71__*, %struct.TYPE_71__** %140, align 8
  %142 = load i64, i64* %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %141, i64 %142
  %144 = bitcast %struct.TYPE_71__* %143 to %union.uni_ieall*
  %145 = load %struct.unicx*, %struct.unicx** %7, align 8
  %146 = call i64 @uni_encode_ie(i32 %137, %struct.uni_msg* %138, %union.uni_ieall* %144, %struct.unicx* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %136
  %149 = load i64, i64* %9, align 8
  %150 = shl i64 %149, 16
  %151 = load i32, i32* @UNI_IE_BLLI, align 4
  %152 = sext i32 %151 to i64
  %153 = add i64 %150, %152
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %4, align 4
  br label %875

155:                                              ; preds = %136, %124
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %9, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %9, align 8
  br label %120

159:                                              ; preds = %120
  %160 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %161 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %160, i32 0, i32 28
  %162 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @UNI_IE_PRESENT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %159
  %169 = load i32, i32* @UNI_IE_CALLED, align 4
  %170 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %171 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %172 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %171, i32 0, i32 28
  %173 = bitcast %struct.TYPE_73__* %172 to %union.uni_ieall*
  %174 = load %struct.unicx*, %struct.unicx** %7, align 8
  %175 = call i64 @uni_encode_ie(i32 %169, %struct.uni_msg* %170, %union.uni_ieall* %173, %struct.unicx* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %168
  %178 = load i32, i32* @UNI_IE_CALLED, align 4
  store i32 %178, i32* %4, align 4
  br label %875

179:                                              ; preds = %168, %159
  store i64 0, i64* %9, align 8
  br label %180

180:                                              ; preds = %216, %179
  %181 = load i64, i64* %9, align 8
  %182 = load i64, i64* @UNI_NUM_IE_CALLEDSUB, align 8
  %183 = icmp ult i64 %181, %182
  br i1 %183, label %184, label %219

184:                                              ; preds = %180
  %185 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %186 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %185, i32 0, i32 27
  %187 = load %struct.TYPE_75__*, %struct.TYPE_75__** %186, align 8
  %188 = load i64, i64* %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @UNI_IE_PRESENT, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %215

196:                                              ; preds = %184
  %197 = load i32, i32* @UNI_IE_CALLEDSUB, align 4
  %198 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %199 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %200 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %199, i32 0, i32 27
  %201 = load %struct.TYPE_75__*, %struct.TYPE_75__** %200, align 8
  %202 = load i64, i64* %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %201, i64 %202
  %204 = bitcast %struct.TYPE_75__* %203 to %union.uni_ieall*
  %205 = load %struct.unicx*, %struct.unicx** %7, align 8
  %206 = call i64 @uni_encode_ie(i32 %197, %struct.uni_msg* %198, %union.uni_ieall* %204, %struct.unicx* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %196
  %209 = load i64, i64* %9, align 8
  %210 = shl i64 %209, 16
  %211 = load i32, i32* @UNI_IE_CALLEDSUB, align 4
  %212 = sext i32 %211 to i64
  %213 = add i64 %210, %212
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %4, align 4
  br label %875

215:                                              ; preds = %196, %184
  br label %216

216:                                              ; preds = %215
  %217 = load i64, i64* %9, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %9, align 8
  br label %180

219:                                              ; preds = %180
  %220 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %221 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %220, i32 0, i32 26
  %222 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @UNI_IE_PRESENT, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %239

228:                                              ; preds = %219
  %229 = load i32, i32* @UNI_IE_CALLING, align 4
  %230 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %231 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %232 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %231, i32 0, i32 26
  %233 = bitcast %struct.TYPE_77__* %232 to %union.uni_ieall*
  %234 = load %struct.unicx*, %struct.unicx** %7, align 8
  %235 = call i64 @uni_encode_ie(i32 %229, %struct.uni_msg* %230, %union.uni_ieall* %233, %struct.unicx* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %228
  %238 = load i32, i32* @UNI_IE_CALLING, align 4
  store i32 %238, i32* %4, align 4
  br label %875

239:                                              ; preds = %228, %219
  store i64 0, i64* %9, align 8
  br label %240

240:                                              ; preds = %276, %239
  %241 = load i64, i64* %9, align 8
  %242 = load i64, i64* @UNI_NUM_IE_CALLINGSUB, align 8
  %243 = icmp ult i64 %241, %242
  br i1 %243, label %244, label %279

244:                                              ; preds = %240
  %245 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %246 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %245, i32 0, i32 25
  %247 = load %struct.TYPE_79__*, %struct.TYPE_79__** %246, align 8
  %248 = load i64, i64* %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @UNI_IE_PRESENT, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %275

256:                                              ; preds = %244
  %257 = load i32, i32* @UNI_IE_CALLINGSUB, align 4
  %258 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %259 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %260 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %259, i32 0, i32 25
  %261 = load %struct.TYPE_79__*, %struct.TYPE_79__** %260, align 8
  %262 = load i64, i64* %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %261, i64 %262
  %264 = bitcast %struct.TYPE_79__* %263 to %union.uni_ieall*
  %265 = load %struct.unicx*, %struct.unicx** %7, align 8
  %266 = call i64 @uni_encode_ie(i32 %257, %struct.uni_msg* %258, %union.uni_ieall* %264, %struct.unicx* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %256
  %269 = load i64, i64* %9, align 8
  %270 = shl i64 %269, 16
  %271 = load i32, i32* @UNI_IE_CALLINGSUB, align 4
  %272 = sext i32 %271 to i64
  %273 = add i64 %270, %272
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %4, align 4
  br label %875

275:                                              ; preds = %256, %244
  br label %276

276:                                              ; preds = %275
  %277 = load i64, i64* %9, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %9, align 8
  br label %240

279:                                              ; preds = %240
  %280 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %281 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %280, i32 0, i32 24
  %282 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @UNI_IE_PRESENT, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %299

288:                                              ; preds = %279
  %289 = load i32, i32* @UNI_IE_CONNID, align 4
  %290 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %291 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %292 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %291, i32 0, i32 24
  %293 = bitcast %struct.TYPE_82__* %292 to %union.uni_ieall*
  %294 = load %struct.unicx*, %struct.unicx** %7, align 8
  %295 = call i64 @uni_encode_ie(i32 %289, %struct.uni_msg* %290, %union.uni_ieall* %293, %struct.unicx* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %288
  %298 = load i32, i32* @UNI_IE_CONNID, align 4
  store i32 %298, i32* %4, align 4
  br label %875

299:                                              ; preds = %288, %279
  %300 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %301 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %300, i32 0, i32 23
  %302 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @UNI_IE_PRESENT, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %319

308:                                              ; preds = %299
  %309 = load i32, i32* @UNI_IE_QOS, align 4
  %310 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %311 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %312 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %311, i32 0, i32 23
  %313 = bitcast %struct.TYPE_84__* %312 to %union.uni_ieall*
  %314 = load %struct.unicx*, %struct.unicx** %7, align 8
  %315 = call i64 @uni_encode_ie(i32 %309, %struct.uni_msg* %310, %union.uni_ieall* %313, %struct.unicx* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %308
  %318 = load i32, i32* @UNI_IE_QOS, align 4
  store i32 %318, i32* %4, align 4
  br label %875

319:                                              ; preds = %308, %299
  %320 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %321 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %320, i32 0, i32 22
  %322 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @UNI_IE_PRESENT, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %339

328:                                              ; preds = %319
  %329 = load i32, i32* @UNI_IE_EETD, align 4
  %330 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %331 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %332 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %331, i32 0, i32 22
  %333 = bitcast %struct.TYPE_86__* %332 to %union.uni_ieall*
  %334 = load %struct.unicx*, %struct.unicx** %7, align 8
  %335 = call i64 @uni_encode_ie(i32 %329, %struct.uni_msg* %330, %union.uni_ieall* %333, %struct.unicx* %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %328
  %338 = load i32, i32* @UNI_IE_EETD, align 4
  store i32 %338, i32* %4, align 4
  br label %875

339:                                              ; preds = %328, %319
  %340 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %341 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %340, i32 0, i32 21
  %342 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @UNI_IE_PRESENT, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %359

348:                                              ; preds = %339
  %349 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %350 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %351 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %352 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %351, i32 0, i32 21
  %353 = bitcast %struct.TYPE_88__* %352 to %union.uni_ieall*
  %354 = load %struct.unicx*, %struct.unicx** %7, align 8
  %355 = call i64 @uni_encode_ie(i32 %349, %struct.uni_msg* %350, %union.uni_ieall* %353, %struct.unicx* %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %348
  %358 = load i32, i32* @UNI_IE_NOTIFY, align 4
  store i32 %358, i32* %4, align 4
  br label %875

359:                                              ; preds = %348, %339
  %360 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %361 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %360, i32 0, i32 20
  %362 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @UNI_IE_PRESENT, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %379

368:                                              ; preds = %359
  %369 = load i32, i32* @UNI_IE_SCOMPL, align 4
  %370 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %371 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %372 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %371, i32 0, i32 20
  %373 = bitcast %struct.TYPE_90__* %372 to %union.uni_ieall*
  %374 = load %struct.unicx*, %struct.unicx** %7, align 8
  %375 = call i64 @uni_encode_ie(i32 %369, %struct.uni_msg* %370, %union.uni_ieall* %373, %struct.unicx* %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %368
  %378 = load i32, i32* @UNI_IE_SCOMPL, align 4
  store i32 %378, i32* %4, align 4
  br label %875

379:                                              ; preds = %368, %359
  store i64 0, i64* %9, align 8
  br label %380

380:                                              ; preds = %416, %379
  %381 = load i64, i64* %9, align 8
  %382 = load i64, i64* @UNI_NUM_IE_TNS, align 8
  %383 = icmp ult i64 %381, %382
  br i1 %383, label %384, label %419

384:                                              ; preds = %380
  %385 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %386 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %385, i32 0, i32 19
  %387 = load %struct.TYPE_93__*, %struct.TYPE_93__** %386, align 8
  %388 = load i64, i64* %9, align 8
  %389 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %387, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @UNI_IE_PRESENT, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %415

396:                                              ; preds = %384
  %397 = load i32, i32* @UNI_IE_TNS, align 4
  %398 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %399 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %400 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %399, i32 0, i32 19
  %401 = load %struct.TYPE_93__*, %struct.TYPE_93__** %400, align 8
  %402 = load i64, i64* %9, align 8
  %403 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %401, i64 %402
  %404 = bitcast %struct.TYPE_93__* %403 to %union.uni_ieall*
  %405 = load %struct.unicx*, %struct.unicx** %7, align 8
  %406 = call i64 @uni_encode_ie(i32 %397, %struct.uni_msg* %398, %union.uni_ieall* %404, %struct.unicx* %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %415

408:                                              ; preds = %396
  %409 = load i64, i64* %9, align 8
  %410 = shl i64 %409, 16
  %411 = load i32, i32* @UNI_IE_TNS, align 4
  %412 = sext i32 %411 to i64
  %413 = add i64 %410, %412
  %414 = trunc i64 %413 to i32
  store i32 %414, i32* %4, align 4
  br label %875

415:                                              ; preds = %396, %384
  br label %416

416:                                              ; preds = %415
  %417 = load i64, i64* %9, align 8
  %418 = add i64 %417, 1
  store i64 %418, i64* %9, align 8
  br label %380

419:                                              ; preds = %380
  %420 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %421 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %420, i32 0, i32 18
  %422 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* @UNI_IE_PRESENT, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %439

428:                                              ; preds = %419
  %429 = load i32, i32* @UNI_IE_EPREF, align 4
  %430 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %431 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %432 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %431, i32 0, i32 18
  %433 = bitcast %struct.TYPE_95__* %432 to %union.uni_ieall*
  %434 = load %struct.unicx*, %struct.unicx** %7, align 8
  %435 = call i64 @uni_encode_ie(i32 %429, %struct.uni_msg* %430, %union.uni_ieall* %433, %struct.unicx* %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %439

437:                                              ; preds = %428
  %438 = load i32, i32* @UNI_IE_EPREF, align 4
  store i32 %438, i32* %4, align 4
  br label %875

439:                                              ; preds = %428, %419
  %440 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %441 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %440, i32 0, i32 17
  %442 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_96__, %struct.TYPE_96__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* @UNI_IE_PRESENT, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %459

448:                                              ; preds = %439
  %449 = load i32, i32* @UNI_IE_ATRAFFIC, align 4
  %450 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %451 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %452 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %451, i32 0, i32 17
  %453 = bitcast %struct.TYPE_97__* %452 to %union.uni_ieall*
  %454 = load %struct.unicx*, %struct.unicx** %7, align 8
  %455 = call i64 @uni_encode_ie(i32 %449, %struct.uni_msg* %450, %union.uni_ieall* %453, %struct.unicx* %454)
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %459

457:                                              ; preds = %448
  %458 = load i32, i32* @UNI_IE_ATRAFFIC, align 4
  store i32 %458, i32* %4, align 4
  br label %875

459:                                              ; preds = %448, %439
  %460 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %461 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %460, i32 0, i32 16
  %462 = getelementptr inbounds %struct.TYPE_99__, %struct.TYPE_99__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* @UNI_IE_PRESENT, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %479

468:                                              ; preds = %459
  %469 = load i32, i32* @UNI_IE_MINTRAFFIC, align 4
  %470 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %471 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %472 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %471, i32 0, i32 16
  %473 = bitcast %struct.TYPE_99__* %472 to %union.uni_ieall*
  %474 = load %struct.unicx*, %struct.unicx** %7, align 8
  %475 = call i64 @uni_encode_ie(i32 %469, %struct.uni_msg* %470, %union.uni_ieall* %473, %struct.unicx* %474)
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %479

477:                                              ; preds = %468
  %478 = load i32, i32* @UNI_IE_MINTRAFFIC, align 4
  store i32 %478, i32* %4, align 4
  br label %875

479:                                              ; preds = %468, %459
  %480 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %481 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %480, i32 0, i32 15
  %482 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = load i32, i32* @UNI_IE_PRESENT, align 4
  %486 = and i32 %484, %485
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %499

488:                                              ; preds = %479
  %489 = load i32, i32* @UNI_IE_UU, align 4
  %490 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %491 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %492 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %491, i32 0, i32 15
  %493 = bitcast %struct.TYPE_101__* %492 to %union.uni_ieall*
  %494 = load %struct.unicx*, %struct.unicx** %7, align 8
  %495 = call i64 @uni_encode_ie(i32 %489, %struct.uni_msg* %490, %union.uni_ieall* %493, %struct.unicx* %494)
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %499

497:                                              ; preds = %488
  %498 = load i32, i32* @UNI_IE_UU, align 4
  store i32 %498, i32* %4, align 4
  br label %875

499:                                              ; preds = %488, %479
  store i64 0, i64* %9, align 8
  br label %500

500:                                              ; preds = %536, %499
  %501 = load i64, i64* %9, align 8
  %502 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %503 = icmp ult i64 %501, %502
  br i1 %503, label %504, label %539

504:                                              ; preds = %500
  %505 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %506 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %505, i32 0, i32 14
  %507 = load %struct.TYPE_104__*, %struct.TYPE_104__** %506, align 8
  %508 = load i64, i64* %9, align 8
  %509 = getelementptr inbounds %struct.TYPE_104__, %struct.TYPE_104__* %507, i64 %508
  %510 = getelementptr inbounds %struct.TYPE_104__, %struct.TYPE_104__* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_102__, %struct.TYPE_102__* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* @UNI_IE_PRESENT, align 4
  %514 = and i32 %512, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %535

516:                                              ; preds = %504
  %517 = load i32, i32* @UNI_IE_GIT, align 4
  %518 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %519 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %520 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %519, i32 0, i32 14
  %521 = load %struct.TYPE_104__*, %struct.TYPE_104__** %520, align 8
  %522 = load i64, i64* %9, align 8
  %523 = getelementptr inbounds %struct.TYPE_104__, %struct.TYPE_104__* %521, i64 %522
  %524 = bitcast %struct.TYPE_104__* %523 to %union.uni_ieall*
  %525 = load %struct.unicx*, %struct.unicx** %7, align 8
  %526 = call i64 @uni_encode_ie(i32 %517, %struct.uni_msg* %518, %union.uni_ieall* %524, %struct.unicx* %525)
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %535

528:                                              ; preds = %516
  %529 = load i64, i64* %9, align 8
  %530 = shl i64 %529, 16
  %531 = load i32, i32* @UNI_IE_GIT, align 4
  %532 = sext i32 %531 to i64
  %533 = add i64 %530, %532
  %534 = trunc i64 %533 to i32
  store i32 %534, i32* %4, align 4
  br label %875

535:                                              ; preds = %516, %504
  br label %536

536:                                              ; preds = %535
  %537 = load i64, i64* %9, align 8
  %538 = add i64 %537, 1
  store i64 %538, i64* %9, align 8
  br label %500

539:                                              ; preds = %500
  %540 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %541 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %540, i32 0, i32 13
  %542 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 4
  %545 = load i32, i32* @UNI_IE_PRESENT, align 4
  %546 = and i32 %544, %545
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %559

548:                                              ; preds = %539
  %549 = load i32, i32* @UNI_IE_LIJ_CALLID, align 4
  %550 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %551 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %552 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %551, i32 0, i32 13
  %553 = bitcast %struct.TYPE_106__* %552 to %union.uni_ieall*
  %554 = load %struct.unicx*, %struct.unicx** %7, align 8
  %555 = call i64 @uni_encode_ie(i32 %549, %struct.uni_msg* %550, %union.uni_ieall* %553, %struct.unicx* %554)
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %557, label %559

557:                                              ; preds = %548
  %558 = load i32, i32* @UNI_IE_LIJ_CALLID, align 4
  store i32 %558, i32* %4, align 4
  br label %875

559:                                              ; preds = %548, %539
  %560 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %561 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %560, i32 0, i32 12
  %562 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_107__, %struct.TYPE_107__* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = load i32, i32* @UNI_IE_PRESENT, align 4
  %566 = and i32 %564, %565
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %579

568:                                              ; preds = %559
  %569 = load i32, i32* @UNI_IE_LIJ_PARAM, align 4
  %570 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %571 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %572 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %571, i32 0, i32 12
  %573 = bitcast %struct.TYPE_108__* %572 to %union.uni_ieall*
  %574 = load %struct.unicx*, %struct.unicx** %7, align 8
  %575 = call i64 @uni_encode_ie(i32 %569, %struct.uni_msg* %570, %union.uni_ieall* %573, %struct.unicx* %574)
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %568
  %578 = load i32, i32* @UNI_IE_LIJ_PARAM, align 4
  store i32 %578, i32* %4, align 4
  br label %875

579:                                              ; preds = %568, %559
  %580 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %581 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %580, i32 0, i32 11
  %582 = getelementptr inbounds %struct.TYPE_110__, %struct.TYPE_110__* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_109__, %struct.TYPE_109__* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 4
  %585 = load i32, i32* @UNI_IE_PRESENT, align 4
  %586 = and i32 %584, %585
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %599

588:                                              ; preds = %579
  %589 = load i32, i32* @UNI_IE_LIJ_SEQNO, align 4
  %590 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %591 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %592 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %591, i32 0, i32 11
  %593 = bitcast %struct.TYPE_110__* %592 to %union.uni_ieall*
  %594 = load %struct.unicx*, %struct.unicx** %7, align 8
  %595 = call i64 @uni_encode_ie(i32 %589, %struct.uni_msg* %590, %union.uni_ieall* %593, %struct.unicx* %594)
  %596 = icmp ne i64 %595, 0
  br i1 %596, label %597, label %599

597:                                              ; preds = %588
  %598 = load i32, i32* @UNI_IE_LIJ_SEQNO, align 4
  store i32 %598, i32* %4, align 4
  br label %875

599:                                              ; preds = %588, %579
  %600 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %601 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %600, i32 0, i32 10
  %602 = getelementptr inbounds %struct.TYPE_112__, %struct.TYPE_112__* %601, i32 0, i32 0
  %603 = getelementptr inbounds %struct.TYPE_111__, %struct.TYPE_111__* %602, i32 0, i32 0
  %604 = load i32, i32* %603, align 8
  %605 = load i32, i32* @UNI_IE_PRESENT, align 4
  %606 = and i32 %604, %605
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %619

608:                                              ; preds = %599
  %609 = load i32, i32* @UNI_IE_EXQOS, align 4
  %610 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %611 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %612 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %611, i32 0, i32 10
  %613 = bitcast %struct.TYPE_112__* %612 to %union.uni_ieall*
  %614 = load %struct.unicx*, %struct.unicx** %7, align 8
  %615 = call i64 @uni_encode_ie(i32 %609, %struct.uni_msg* %610, %union.uni_ieall* %613, %struct.unicx* %614)
  %616 = icmp ne i64 %615, 0
  br i1 %616, label %617, label %619

617:                                              ; preds = %608
  %618 = load i32, i32* @UNI_IE_EXQOS, align 4
  store i32 %618, i32* %4, align 4
  br label %875

619:                                              ; preds = %608, %599
  %620 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %621 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %620, i32 0, i32 9
  %622 = getelementptr inbounds %struct.TYPE_115__, %struct.TYPE_115__* %621, i32 0, i32 0
  %623 = getelementptr inbounds %struct.TYPE_113__, %struct.TYPE_113__* %622, i32 0, i32 0
  %624 = load i32, i32* %623, align 4
  %625 = load i32, i32* @UNI_IE_PRESENT, align 4
  %626 = and i32 %624, %625
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %639

628:                                              ; preds = %619
  %629 = load i32, i32* @UNI_IE_ABRSETUP, align 4
  %630 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %631 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %632 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %631, i32 0, i32 9
  %633 = bitcast %struct.TYPE_115__* %632 to %union.uni_ieall*
  %634 = load %struct.unicx*, %struct.unicx** %7, align 8
  %635 = call i64 @uni_encode_ie(i32 %629, %struct.uni_msg* %630, %union.uni_ieall* %633, %struct.unicx* %634)
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %639

637:                                              ; preds = %628
  %638 = load i32, i32* @UNI_IE_ABRSETUP, align 4
  store i32 %638, i32* %4, align 4
  br label %875

639:                                              ; preds = %628, %619
  %640 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %641 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %640, i32 0, i32 8
  %642 = getelementptr inbounds %struct.TYPE_117__, %struct.TYPE_117__* %641, i32 0, i32 0
  %643 = getelementptr inbounds %struct.TYPE_116__, %struct.TYPE_116__* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 8
  %645 = load i32, i32* @UNI_IE_PRESENT, align 4
  %646 = and i32 %644, %645
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %648, label %659

648:                                              ; preds = %639
  %649 = load i32, i32* @UNI_IE_ABRADD, align 4
  %650 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %651 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %652 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %651, i32 0, i32 8
  %653 = bitcast %struct.TYPE_117__* %652 to %union.uni_ieall*
  %654 = load %struct.unicx*, %struct.unicx** %7, align 8
  %655 = call i64 @uni_encode_ie(i32 %649, %struct.uni_msg* %650, %union.uni_ieall* %653, %struct.unicx* %654)
  %656 = icmp ne i64 %655, 0
  br i1 %656, label %657, label %659

657:                                              ; preds = %648
  %658 = load i32, i32* @UNI_IE_ABRADD, align 4
  store i32 %658, i32* %4, align 4
  br label %875

659:                                              ; preds = %648, %639
  %660 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %661 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %660, i32 0, i32 7
  %662 = getelementptr inbounds %struct.TYPE_119__, %struct.TYPE_119__* %661, i32 0, i32 0
  %663 = getelementptr inbounds %struct.TYPE_118__, %struct.TYPE_118__* %662, i32 0, i32 0
  %664 = load i32, i32* %663, align 4
  %665 = load i32, i32* @UNI_IE_PRESENT, align 4
  %666 = and i32 %664, %665
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %679

668:                                              ; preds = %659
  %669 = load i32, i32* @UNI_IE_CSCOPE, align 4
  %670 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %671 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %672 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %671, i32 0, i32 7
  %673 = bitcast %struct.TYPE_119__* %672 to %union.uni_ieall*
  %674 = load %struct.unicx*, %struct.unicx** %7, align 8
  %675 = call i64 @uni_encode_ie(i32 %669, %struct.uni_msg* %670, %union.uni_ieall* %673, %struct.unicx* %674)
  %676 = icmp ne i64 %675, 0
  br i1 %676, label %677, label %679

677:                                              ; preds = %668
  %678 = load i32, i32* @UNI_IE_CSCOPE, align 4
  store i32 %678, i32* %4, align 4
  br label %875

679:                                              ; preds = %668, %659
  %680 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %681 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %680, i32 0, i32 6
  %682 = getelementptr inbounds %struct.TYPE_121__, %struct.TYPE_121__* %681, i32 0, i32 0
  %683 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 8
  %685 = load i32, i32* @UNI_IE_PRESENT, align 4
  %686 = and i32 %684, %685
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %699

688:                                              ; preds = %679
  %689 = load i32, i32* @UNI_IE_CALLING_SOFT, align 4
  %690 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %691 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %692 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %691, i32 0, i32 6
  %693 = bitcast %struct.TYPE_121__* %692 to %union.uni_ieall*
  %694 = load %struct.unicx*, %struct.unicx** %7, align 8
  %695 = call i64 @uni_encode_ie(i32 %689, %struct.uni_msg* %690, %union.uni_ieall* %693, %struct.unicx* %694)
  %696 = icmp ne i64 %695, 0
  br i1 %696, label %697, label %699

697:                                              ; preds = %688
  %698 = load i32, i32* @UNI_IE_CALLING_SOFT, align 4
  store i32 %698, i32* %4, align 4
  br label %875

699:                                              ; preds = %688, %679
  %700 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %701 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %700, i32 0, i32 5
  %702 = getelementptr inbounds %struct.TYPE_123__, %struct.TYPE_123__* %701, i32 0, i32 0
  %703 = getelementptr inbounds %struct.TYPE_122__, %struct.TYPE_122__* %702, i32 0, i32 0
  %704 = load i32, i32* %703, align 4
  %705 = load i32, i32* @UNI_IE_PRESENT, align 4
  %706 = and i32 %704, %705
  %707 = icmp ne i32 %706, 0
  br i1 %707, label %708, label %719

708:                                              ; preds = %699
  %709 = load i32, i32* @UNI_IE_CALLED_SOFT, align 4
  %710 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %711 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %712 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %711, i32 0, i32 5
  %713 = bitcast %struct.TYPE_123__* %712 to %union.uni_ieall*
  %714 = load %struct.unicx*, %struct.unicx** %7, align 8
  %715 = call i64 @uni_encode_ie(i32 %709, %struct.uni_msg* %710, %union.uni_ieall* %713, %struct.unicx* %714)
  %716 = icmp ne i64 %715, 0
  br i1 %716, label %717, label %719

717:                                              ; preds = %708
  %718 = load i32, i32* @UNI_IE_CALLED_SOFT, align 4
  store i32 %718, i32* %4, align 4
  br label %875

719:                                              ; preds = %708, %699
  %720 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %721 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %720, i32 0, i32 4
  %722 = getelementptr inbounds %struct.TYPE_126__, %struct.TYPE_126__* %721, i32 0, i32 0
  %723 = getelementptr inbounds %struct.TYPE_124__, %struct.TYPE_124__* %722, i32 0, i32 0
  %724 = load i32, i32* %723, align 8
  %725 = load i32, i32* @UNI_IE_PRESENT, align 4
  %726 = and i32 %724, %725
  %727 = icmp ne i32 %726, 0
  br i1 %727, label %728, label %740

728:                                              ; preds = %719
  %729 = load i32, i32* @UNI_IE_DTL, align 4
  %730 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %731 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %732 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %731, i32 0, i32 4
  %733 = bitcast %struct.TYPE_126__* %732 to %union.uni_ieall*
  %734 = load %struct.unicx*, %struct.unicx** %7, align 8
  %735 = call i64 @uni_encode_ie(i32 %729, %struct.uni_msg* %730, %union.uni_ieall* %733, %struct.unicx* %734)
  %736 = icmp ne i64 %735, 0
  br i1 %736, label %737, label %740

737:                                              ; preds = %728
  %738 = load i32, i32* @UNI_IE_DTL, align 4
  %739 = add nsw i32 268435456, %738
  store i32 %739, i32* %4, align 4
  br label %875

740:                                              ; preds = %728, %719
  store i64 0, i64* %9, align 8
  br label %741

741:                                              ; preds = %777, %740
  %742 = load i64, i64* %9, align 8
  %743 = load i64, i64* @UNI_NUM_IE_DTL, align 8
  %744 = icmp ult i64 %742, %743
  br i1 %744, label %745, label %780

745:                                              ; preds = %741
  %746 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %747 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %746, i32 0, i32 3
  %748 = load %struct.TYPE_128__*, %struct.TYPE_128__** %747, align 8
  %749 = load i64, i64* %9, align 8
  %750 = getelementptr inbounds %struct.TYPE_128__, %struct.TYPE_128__* %748, i64 %749
  %751 = getelementptr inbounds %struct.TYPE_128__, %struct.TYPE_128__* %750, i32 0, i32 0
  %752 = getelementptr inbounds %struct.TYPE_127__, %struct.TYPE_127__* %751, i32 0, i32 0
  %753 = load i32, i32* %752, align 4
  %754 = load i32, i32* @UNI_IE_PRESENT, align 4
  %755 = and i32 %753, %754
  %756 = icmp ne i32 %755, 0
  br i1 %756, label %757, label %776

757:                                              ; preds = %745
  %758 = load i32, i32* @UNI_IE_DTL, align 4
  %759 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %760 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %761 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %760, i32 0, i32 3
  %762 = load %struct.TYPE_128__*, %struct.TYPE_128__** %761, align 8
  %763 = load i64, i64* %9, align 8
  %764 = getelementptr inbounds %struct.TYPE_128__, %struct.TYPE_128__* %762, i64 %763
  %765 = bitcast %struct.TYPE_128__* %764 to %union.uni_ieall*
  %766 = load %struct.unicx*, %struct.unicx** %7, align 8
  %767 = call i64 @uni_encode_ie(i32 %758, %struct.uni_msg* %759, %union.uni_ieall* %765, %struct.unicx* %766)
  %768 = icmp ne i64 %767, 0
  br i1 %768, label %769, label %776

769:                                              ; preds = %757
  %770 = load i64, i64* %9, align 8
  %771 = shl i64 %770, 16
  %772 = load i32, i32* @UNI_IE_DTL, align 4
  %773 = sext i32 %772 to i64
  %774 = add i64 %771, %773
  %775 = trunc i64 %774 to i32
  store i32 %775, i32* %4, align 4
  br label %875

776:                                              ; preds = %757, %745
  br label %777

777:                                              ; preds = %776
  %778 = load i64, i64* %9, align 8
  %779 = add i64 %778, 1
  store i64 %779, i64* %9, align 8
  br label %741

780:                                              ; preds = %741
  %781 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %782 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %781, i32 0, i32 2
  %783 = getelementptr inbounds %struct.TYPE_130__, %struct.TYPE_130__* %782, i32 0, i32 0
  %784 = getelementptr inbounds %struct.TYPE_129__, %struct.TYPE_129__* %783, i32 0, i32 0
  %785 = load i32, i32* %784, align 8
  %786 = load i32, i32* @UNI_IE_PRESENT, align 4
  %787 = and i32 %785, %786
  %788 = icmp ne i32 %787, 0
  br i1 %788, label %789, label %800

789:                                              ; preds = %780
  %790 = load i32, i32* @UNI_IE_REPORT, align 4
  %791 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %792 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %793 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %792, i32 0, i32 2
  %794 = bitcast %struct.TYPE_130__* %793 to %union.uni_ieall*
  %795 = load %struct.unicx*, %struct.unicx** %7, align 8
  %796 = call i64 @uni_encode_ie(i32 %790, %struct.uni_msg* %791, %union.uni_ieall* %794, %struct.unicx* %795)
  %797 = icmp ne i64 %796, 0
  br i1 %797, label %798, label %800

798:                                              ; preds = %789
  %799 = load i32, i32* @UNI_IE_REPORT, align 4
  store i32 %799, i32* %4, align 4
  br label %875

800:                                              ; preds = %789, %780
  %801 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %802 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %801, i32 0, i32 1
  %803 = getelementptr inbounds %struct.TYPE_132__, %struct.TYPE_132__* %802, i32 0, i32 0
  %804 = getelementptr inbounds %struct.TYPE_131__, %struct.TYPE_131__* %803, i32 0, i32 0
  %805 = load i32, i32* %804, align 4
  %806 = load i32, i32* @UNI_IE_PRESENT, align 4
  %807 = and i32 %805, %806
  %808 = icmp ne i32 %807, 0
  br i1 %808, label %809, label %820

809:                                              ; preds = %800
  %810 = load i32, i32* @UNI_IE_MDCR, align 4
  %811 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %812 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %813 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %812, i32 0, i32 1
  %814 = bitcast %struct.TYPE_132__* %813 to %union.uni_ieall*
  %815 = load %struct.unicx*, %struct.unicx** %7, align 8
  %816 = call i64 @uni_encode_ie(i32 %810, %struct.uni_msg* %811, %union.uni_ieall* %814, %struct.unicx* %815)
  %817 = icmp ne i64 %816, 0
  br i1 %817, label %818, label %820

818:                                              ; preds = %809
  %819 = load i32, i32* @UNI_IE_MDCR, align 4
  store i32 %819, i32* %4, align 4
  br label %875

820:                                              ; preds = %809, %800
  %821 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %822 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %821, i32 0, i32 0
  %823 = getelementptr inbounds %struct.TYPE_134__, %struct.TYPE_134__* %822, i32 0, i32 0
  %824 = getelementptr inbounds %struct.TYPE_133__, %struct.TYPE_133__* %823, i32 0, i32 0
  %825 = load i32, i32* %824, align 8
  %826 = load i32, i32* @UNI_IE_PRESENT, align 4
  %827 = and i32 %825, %826
  %828 = icmp ne i32 %827, 0
  br i1 %828, label %829, label %840

829:                                              ; preds = %820
  %830 = load i32, i32* @UNI_IE_UNREC, align 4
  %831 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %832 = load %struct.uni_setup*, %struct.uni_setup** %6, align 8
  %833 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %832, i32 0, i32 0
  %834 = bitcast %struct.TYPE_134__* %833 to %union.uni_ieall*
  %835 = load %struct.unicx*, %struct.unicx** %7, align 8
  %836 = call i64 @uni_encode_ie(i32 %830, %struct.uni_msg* %831, %union.uni_ieall* %834, %struct.unicx* %835)
  %837 = icmp ne i64 %836, 0
  br i1 %837, label %838, label %840

838:                                              ; preds = %829
  %839 = load i32, i32* @UNI_IE_UNREC, align 4
  store i32 %839, i32* %4, align 4
  br label %875

840:                                              ; preds = %829, %820
  %841 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %842 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %841, i32 0, i32 1
  %843 = load i64, i64* %842, align 8
  %844 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %845 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %844, i32 0, i32 2
  %846 = load i64, i64* %845, align 8
  %847 = sub i64 %843, %846
  %848 = load i64, i64* %8, align 8
  %849 = sub i64 %847, %848
  %850 = sub i64 %849, 2
  %851 = lshr i64 %850, 8
  %852 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %853 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %852, i32 0, i32 0
  %854 = load i64*, i64** %853, align 8
  %855 = load i64, i64* %8, align 8
  %856 = add i64 %855, 0
  %857 = getelementptr inbounds i64, i64* %854, i64 %856
  store i64 %851, i64* %857, align 8
  %858 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %859 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %858, i32 0, i32 1
  %860 = load i64, i64* %859, align 8
  %861 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %862 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %861, i32 0, i32 2
  %863 = load i64, i64* %862, align 8
  %864 = sub i64 %860, %863
  %865 = load i64, i64* %8, align 8
  %866 = sub i64 %864, %865
  %867 = sub i64 %866, 2
  %868 = lshr i64 %867, 0
  %869 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %870 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %869, i32 0, i32 0
  %871 = load i64*, i64** %870, align 8
  %872 = load i64, i64* %8, align 8
  %873 = add i64 %872, 1
  %874 = getelementptr inbounds i64, i64* %871, i64 %873
  store i64 %868, i64* %874, align 8
  store i32 0, i32* %4, align 4
  br label %875

875:                                              ; preds = %840, %838, %818, %798, %769, %737, %717, %697, %677, %657, %637, %617, %597, %577, %557, %528, %497, %477, %457, %437, %408, %377, %357, %337, %317, %297, %268, %237, %208, %177, %148, %116, %96, %76, %56, %36, %17
  %876 = load i32, i32* %4, align 4
  ret i32 %876
}

declare dso_local i64 @uni_encode_msg_hdr(%struct.uni_msg*, i32*, i32, %struct.unicx*, i64*) #1

declare dso_local i64 @uni_encode_ie(i32, %struct.uni_msg*, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
