; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_setup = type { %struct.TYPE_117__, %struct.TYPE_115__, %struct.TYPE_112__, %struct.TYPE_110__*, %struct.TYPE_108__, %struct.TYPE_106__, %struct.TYPE_104__, %struct.TYPE_101__, %struct.TYPE_99__, %struct.TYPE_97__, %struct.TYPE_95__, %struct.TYPE_93__, %struct.TYPE_90__, %struct.TYPE_88__, %struct.TYPE_86__*, %struct.TYPE_84__, %struct.TYPE_82__, %struct.TYPE_79__, %struct.TYPE_77__, %struct.TYPE_75__*, %struct.TYPE_73__, %struct.TYPE_71__, %struct.TYPE_139__, %struct.TYPE_136__, %struct.TYPE_114__, %struct.TYPE_92__*, %struct.TYPE_137__, %struct.TYPE_134__*, %struct.TYPE_132__, %struct.TYPE_130__*, %struct.TYPE_128__, %struct.TYPE_126__, %struct.TYPE_123__, %struct.TYPE_121__, %struct.TYPE_119__ }
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
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_AAL = common dso_local global i32 0, align 4
@UNI_IE_TRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_BEARER = common dso_local global i32 0, align 4
@UNI_IE_BHLI = common dso_local global i32 0, align 4
@UNI_IE_REPEAT = common dso_local global i32 0, align 4
@UNI_NUM_IE_BLLI = common dso_local global i64 0, align 8
@UNI_IE_BLLI = common dso_local global i32 0, align 4
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
@UNI_NUM_IE_DTL = common dso_local global i64 0, align 8
@UNI_IE_DTL = common dso_local global i32 0, align 4
@UNI_IE_REPORT = common dso_local global i32 0, align 4
@UNI_IE_MDCR = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni_setup*, %struct.unicx*)* @print_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_setup(%struct.uni_setup* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_setup*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i64, align 8
  store %struct.uni_setup* %0, %struct.uni_setup** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  %6 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %7 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %6, i32 0, i32 34
  %8 = getelementptr inbounds %struct.TYPE_119__, %struct.TYPE_119__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_118__, %struct.TYPE_118__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @UNI_IE_PRESENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @UNI_IE_AAL, align 4
  %16 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %17 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %16, i32 0, i32 34
  %18 = bitcast %struct.TYPE_119__* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_print_ie_internal(i32 %15, %union.uni_ieall* %18, %struct.unicx* %19)
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %23 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %22, i32 0, i32 33
  %24 = getelementptr inbounds %struct.TYPE_121__, %struct.TYPE_121__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_120__, %struct.TYPE_120__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UNI_IE_PRESENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load i32, i32* @UNI_IE_TRAFFIC, align 4
  %32 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %33 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %32, i32 0, i32 33
  %34 = bitcast %struct.TYPE_121__* %33 to %union.uni_ieall*
  %35 = load %struct.unicx*, %struct.unicx** %4, align 8
  %36 = call i32 @uni_print_ie_internal(i32 %31, %union.uni_ieall* %34, %struct.unicx* %35)
  br label %37

37:                                               ; preds = %30, %21
  %38 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %39 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %38, i32 0, i32 32
  %40 = getelementptr inbounds %struct.TYPE_123__, %struct.TYPE_123__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_122__, %struct.TYPE_122__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @UNI_IE_PRESENT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load i32, i32* @UNI_IE_BEARER, align 4
  %48 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %49 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %48, i32 0, i32 32
  %50 = bitcast %struct.TYPE_123__* %49 to %union.uni_ieall*
  %51 = load %struct.unicx*, %struct.unicx** %4, align 8
  %52 = call i32 @uni_print_ie_internal(i32 %47, %union.uni_ieall* %50, %struct.unicx* %51)
  br label %53

53:                                               ; preds = %46, %37
  %54 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %55 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %54, i32 0, i32 31
  %56 = getelementptr inbounds %struct.TYPE_126__, %struct.TYPE_126__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_124__, %struct.TYPE_124__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @UNI_IE_PRESENT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i32, i32* @UNI_IE_BHLI, align 4
  %64 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %65 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %64, i32 0, i32 31
  %66 = bitcast %struct.TYPE_126__* %65 to %union.uni_ieall*
  %67 = load %struct.unicx*, %struct.unicx** %4, align 8
  %68 = call i32 @uni_print_ie_internal(i32 %63, %union.uni_ieall* %66, %struct.unicx* %67)
  br label %69

69:                                               ; preds = %62, %53
  %70 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %71 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %70, i32 0, i32 30
  %72 = getelementptr inbounds %struct.TYPE_128__, %struct.TYPE_128__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_127__, %struct.TYPE_127__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @UNI_IE_PRESENT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load i32, i32* @UNI_IE_REPEAT, align 4
  %80 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %81 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %80, i32 0, i32 30
  %82 = bitcast %struct.TYPE_128__* %81 to %union.uni_ieall*
  %83 = load %struct.unicx*, %struct.unicx** %4, align 8
  %84 = call i32 @uni_print_ie_internal(i32 %79, %union.uni_ieall* %82, %struct.unicx* %83)
  br label %85

85:                                               ; preds = %78, %69
  store i64 0, i64* %5, align 8
  br label %86

86:                                               ; preds = %113, %85
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* @UNI_NUM_IE_BLLI, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %116

90:                                               ; preds = %86
  %91 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %92 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %91, i32 0, i32 29
  %93 = load %struct.TYPE_130__*, %struct.TYPE_130__** %92, align 8
  %94 = load i64, i64* %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_130__, %struct.TYPE_130__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_130__, %struct.TYPE_130__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_129__, %struct.TYPE_129__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @UNI_IE_PRESENT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %90
  %103 = load i32, i32* @UNI_IE_BLLI, align 4
  %104 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %105 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %104, i32 0, i32 29
  %106 = load %struct.TYPE_130__*, %struct.TYPE_130__** %105, align 8
  %107 = load i64, i64* %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_130__, %struct.TYPE_130__* %106, i64 %107
  %109 = bitcast %struct.TYPE_130__* %108 to %union.uni_ieall*
  %110 = load %struct.unicx*, %struct.unicx** %4, align 8
  %111 = call i32 @uni_print_ie_internal(i32 %103, %union.uni_ieall* %109, %struct.unicx* %110)
  br label %112

112:                                              ; preds = %102, %90
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %5, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %5, align 8
  br label %86

116:                                              ; preds = %86
  %117 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %118 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %117, i32 0, i32 28
  %119 = getelementptr inbounds %struct.TYPE_132__, %struct.TYPE_132__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_131__, %struct.TYPE_131__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @UNI_IE_PRESENT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %116
  %126 = load i32, i32* @UNI_IE_CALLED, align 4
  %127 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %128 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %127, i32 0, i32 28
  %129 = bitcast %struct.TYPE_132__* %128 to %union.uni_ieall*
  %130 = load %struct.unicx*, %struct.unicx** %4, align 8
  %131 = call i32 @uni_print_ie_internal(i32 %126, %union.uni_ieall* %129, %struct.unicx* %130)
  br label %132

132:                                              ; preds = %125, %116
  store i64 0, i64* %5, align 8
  br label %133

133:                                              ; preds = %160, %132
  %134 = load i64, i64* %5, align 8
  %135 = load i64, i64* @UNI_NUM_IE_CALLEDSUB, align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %163

137:                                              ; preds = %133
  %138 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %139 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %138, i32 0, i32 27
  %140 = load %struct.TYPE_134__*, %struct.TYPE_134__** %139, align 8
  %141 = load i64, i64* %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_134__, %struct.TYPE_134__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_134__, %struct.TYPE_134__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_133__, %struct.TYPE_133__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @UNI_IE_PRESENT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %137
  %150 = load i32, i32* @UNI_IE_CALLEDSUB, align 4
  %151 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %152 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %151, i32 0, i32 27
  %153 = load %struct.TYPE_134__*, %struct.TYPE_134__** %152, align 8
  %154 = load i64, i64* %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_134__, %struct.TYPE_134__* %153, i64 %154
  %156 = bitcast %struct.TYPE_134__* %155 to %union.uni_ieall*
  %157 = load %struct.unicx*, %struct.unicx** %4, align 8
  %158 = call i32 @uni_print_ie_internal(i32 %150, %union.uni_ieall* %156, %struct.unicx* %157)
  br label %159

159:                                              ; preds = %149, %137
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* %5, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %5, align 8
  br label %133

163:                                              ; preds = %133
  %164 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %165 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %164, i32 0, i32 26
  %166 = getelementptr inbounds %struct.TYPE_137__, %struct.TYPE_137__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_135__, %struct.TYPE_135__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @UNI_IE_PRESENT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %163
  %173 = load i32, i32* @UNI_IE_CALLING, align 4
  %174 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %175 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %174, i32 0, i32 26
  %176 = bitcast %struct.TYPE_137__* %175 to %union.uni_ieall*
  %177 = load %struct.unicx*, %struct.unicx** %4, align 8
  %178 = call i32 @uni_print_ie_internal(i32 %173, %union.uni_ieall* %176, %struct.unicx* %177)
  br label %179

179:                                              ; preds = %172, %163
  store i64 0, i64* %5, align 8
  br label %180

180:                                              ; preds = %207, %179
  %181 = load i64, i64* %5, align 8
  %182 = load i64, i64* @UNI_NUM_IE_CALLINGSUB, align 8
  %183 = icmp ult i64 %181, %182
  br i1 %183, label %184, label %210

184:                                              ; preds = %180
  %185 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %186 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %185, i32 0, i32 25
  %187 = load %struct.TYPE_92__*, %struct.TYPE_92__** %186, align 8
  %188 = load i64, i64* %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @UNI_IE_PRESENT, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %184
  %197 = load i32, i32* @UNI_IE_CALLINGSUB, align 4
  %198 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %199 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %198, i32 0, i32 25
  %200 = load %struct.TYPE_92__*, %struct.TYPE_92__** %199, align 8
  %201 = load i64, i64* %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %200, i64 %201
  %203 = bitcast %struct.TYPE_92__* %202 to %union.uni_ieall*
  %204 = load %struct.unicx*, %struct.unicx** %4, align 8
  %205 = call i32 @uni_print_ie_internal(i32 %197, %union.uni_ieall* %203, %struct.unicx* %204)
  br label %206

206:                                              ; preds = %196, %184
  br label %207

207:                                              ; preds = %206
  %208 = load i64, i64* %5, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %5, align 8
  br label %180

210:                                              ; preds = %180
  %211 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %212 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %211, i32 0, i32 24
  %213 = getelementptr inbounds %struct.TYPE_114__, %struct.TYPE_114__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @UNI_IE_PRESENT, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %210
  %220 = load i32, i32* @UNI_IE_CONNID, align 4
  %221 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %222 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %221, i32 0, i32 24
  %223 = bitcast %struct.TYPE_114__* %222 to %union.uni_ieall*
  %224 = load %struct.unicx*, %struct.unicx** %4, align 8
  %225 = call i32 @uni_print_ie_internal(i32 %220, %union.uni_ieall* %223, %struct.unicx* %224)
  br label %226

226:                                              ; preds = %219, %210
  %227 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %228 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %227, i32 0, i32 23
  %229 = getelementptr inbounds %struct.TYPE_136__, %struct.TYPE_136__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_125__, %struct.TYPE_125__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @UNI_IE_PRESENT, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %226
  %236 = load i32, i32* @UNI_IE_QOS, align 4
  %237 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %238 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %237, i32 0, i32 23
  %239 = bitcast %struct.TYPE_136__* %238 to %union.uni_ieall*
  %240 = load %struct.unicx*, %struct.unicx** %4, align 8
  %241 = call i32 @uni_print_ie_internal(i32 %236, %union.uni_ieall* %239, %struct.unicx* %240)
  br label %242

242:                                              ; preds = %235, %226
  %243 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %244 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %243, i32 0, i32 22
  %245 = getelementptr inbounds %struct.TYPE_139__, %struct.TYPE_139__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_138__, %struct.TYPE_138__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @UNI_IE_PRESENT, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %242
  %252 = load i32, i32* @UNI_IE_EETD, align 4
  %253 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %254 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %253, i32 0, i32 22
  %255 = bitcast %struct.TYPE_139__* %254 to %union.uni_ieall*
  %256 = load %struct.unicx*, %struct.unicx** %4, align 8
  %257 = call i32 @uni_print_ie_internal(i32 %252, %union.uni_ieall* %255, %struct.unicx* %256)
  br label %258

258:                                              ; preds = %251, %242
  %259 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %260 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %259, i32 0, i32 21
  %261 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_140__, %struct.TYPE_140__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @UNI_IE_PRESENT, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %258
  %268 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %269 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %270 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %269, i32 0, i32 21
  %271 = bitcast %struct.TYPE_71__* %270 to %union.uni_ieall*
  %272 = load %struct.unicx*, %struct.unicx** %4, align 8
  %273 = call i32 @uni_print_ie_internal(i32 %268, %union.uni_ieall* %271, %struct.unicx* %272)
  br label %274

274:                                              ; preds = %267, %258
  %275 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %276 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %275, i32 0, i32 20
  %277 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @UNI_IE_PRESENT, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %274
  %284 = load i32, i32* @UNI_IE_SCOMPL, align 4
  %285 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %286 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %285, i32 0, i32 20
  %287 = bitcast %struct.TYPE_73__* %286 to %union.uni_ieall*
  %288 = load %struct.unicx*, %struct.unicx** %4, align 8
  %289 = call i32 @uni_print_ie_internal(i32 %284, %union.uni_ieall* %287, %struct.unicx* %288)
  br label %290

290:                                              ; preds = %283, %274
  store i64 0, i64* %5, align 8
  br label %291

291:                                              ; preds = %318, %290
  %292 = load i64, i64* %5, align 8
  %293 = load i64, i64* @UNI_NUM_IE_TNS, align 8
  %294 = icmp ult i64 %292, %293
  br i1 %294, label %295, label %321

295:                                              ; preds = %291
  %296 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %297 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %296, i32 0, i32 19
  %298 = load %struct.TYPE_75__*, %struct.TYPE_75__** %297, align 8
  %299 = load i64, i64* %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %298, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @UNI_IE_PRESENT, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %317

307:                                              ; preds = %295
  %308 = load i32, i32* @UNI_IE_TNS, align 4
  %309 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %310 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %309, i32 0, i32 19
  %311 = load %struct.TYPE_75__*, %struct.TYPE_75__** %310, align 8
  %312 = load i64, i64* %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %311, i64 %312
  %314 = bitcast %struct.TYPE_75__* %313 to %union.uni_ieall*
  %315 = load %struct.unicx*, %struct.unicx** %4, align 8
  %316 = call i32 @uni_print_ie_internal(i32 %308, %union.uni_ieall* %314, %struct.unicx* %315)
  br label %317

317:                                              ; preds = %307, %295
  br label %318

318:                                              ; preds = %317
  %319 = load i64, i64* %5, align 8
  %320 = add i64 %319, 1
  store i64 %320, i64* %5, align 8
  br label %291

321:                                              ; preds = %291
  %322 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %323 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %322, i32 0, i32 18
  %324 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @UNI_IE_PRESENT, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %321
  %331 = load i32, i32* @UNI_IE_EPREF, align 4
  %332 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %333 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %332, i32 0, i32 18
  %334 = bitcast %struct.TYPE_77__* %333 to %union.uni_ieall*
  %335 = load %struct.unicx*, %struct.unicx** %4, align 8
  %336 = call i32 @uni_print_ie_internal(i32 %331, %union.uni_ieall* %334, %struct.unicx* %335)
  br label %337

337:                                              ; preds = %330, %321
  %338 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %339 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %338, i32 0, i32 17
  %340 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @UNI_IE_PRESENT, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %353

346:                                              ; preds = %337
  %347 = load i32, i32* @UNI_IE_ATRAFFIC, align 4
  %348 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %349 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %348, i32 0, i32 17
  %350 = bitcast %struct.TYPE_79__* %349 to %union.uni_ieall*
  %351 = load %struct.unicx*, %struct.unicx** %4, align 8
  %352 = call i32 @uni_print_ie_internal(i32 %347, %union.uni_ieall* %350, %struct.unicx* %351)
  br label %353

353:                                              ; preds = %346, %337
  %354 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %355 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %354, i32 0, i32 16
  %356 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @UNI_IE_PRESENT, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %369

362:                                              ; preds = %353
  %363 = load i32, i32* @UNI_IE_MINTRAFFIC, align 4
  %364 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %365 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %364, i32 0, i32 16
  %366 = bitcast %struct.TYPE_82__* %365 to %union.uni_ieall*
  %367 = load %struct.unicx*, %struct.unicx** %4, align 8
  %368 = call i32 @uni_print_ie_internal(i32 %363, %union.uni_ieall* %366, %struct.unicx* %367)
  br label %369

369:                                              ; preds = %362, %353
  %370 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %371 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %370, i32 0, i32 15
  %372 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* @UNI_IE_PRESENT, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %385

378:                                              ; preds = %369
  %379 = load i32, i32* @UNI_IE_UU, align 4
  %380 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %381 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %380, i32 0, i32 15
  %382 = bitcast %struct.TYPE_84__* %381 to %union.uni_ieall*
  %383 = load %struct.unicx*, %struct.unicx** %4, align 8
  %384 = call i32 @uni_print_ie_internal(i32 %379, %union.uni_ieall* %382, %struct.unicx* %383)
  br label %385

385:                                              ; preds = %378, %369
  store i64 0, i64* %5, align 8
  br label %386

386:                                              ; preds = %413, %385
  %387 = load i64, i64* %5, align 8
  %388 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %389 = icmp ult i64 %387, %388
  br i1 %389, label %390, label %416

390:                                              ; preds = %386
  %391 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %392 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %391, i32 0, i32 14
  %393 = load %struct.TYPE_86__*, %struct.TYPE_86__** %392, align 8
  %394 = load i64, i64* %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %393, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @UNI_IE_PRESENT, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %412

402:                                              ; preds = %390
  %403 = load i32, i32* @UNI_IE_GIT, align 4
  %404 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %405 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %404, i32 0, i32 14
  %406 = load %struct.TYPE_86__*, %struct.TYPE_86__** %405, align 8
  %407 = load i64, i64* %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %406, i64 %407
  %409 = bitcast %struct.TYPE_86__* %408 to %union.uni_ieall*
  %410 = load %struct.unicx*, %struct.unicx** %4, align 8
  %411 = call i32 @uni_print_ie_internal(i32 %403, %union.uni_ieall* %409, %struct.unicx* %410)
  br label %412

412:                                              ; preds = %402, %390
  br label %413

413:                                              ; preds = %412
  %414 = load i64, i64* %5, align 8
  %415 = add i64 %414, 1
  store i64 %415, i64* %5, align 8
  br label %386

416:                                              ; preds = %386
  %417 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %418 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %417, i32 0, i32 13
  %419 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* @UNI_IE_PRESENT, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %432

425:                                              ; preds = %416
  %426 = load i32, i32* @UNI_IE_LIJ_CALLID, align 4
  %427 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %428 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %427, i32 0, i32 13
  %429 = bitcast %struct.TYPE_88__* %428 to %union.uni_ieall*
  %430 = load %struct.unicx*, %struct.unicx** %4, align 8
  %431 = call i32 @uni_print_ie_internal(i32 %426, %union.uni_ieall* %429, %struct.unicx* %430)
  br label %432

432:                                              ; preds = %425, %416
  %433 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %434 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %433, i32 0, i32 12
  %435 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = load i32, i32* @UNI_IE_PRESENT, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %448

441:                                              ; preds = %432
  %442 = load i32, i32* @UNI_IE_LIJ_PARAM, align 4
  %443 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %444 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %443, i32 0, i32 12
  %445 = bitcast %struct.TYPE_90__* %444 to %union.uni_ieall*
  %446 = load %struct.unicx*, %struct.unicx** %4, align 8
  %447 = call i32 @uni_print_ie_internal(i32 %442, %union.uni_ieall* %445, %struct.unicx* %446)
  br label %448

448:                                              ; preds = %441, %432
  %449 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %450 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %449, i32 0, i32 11
  %451 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = load i32, i32* @UNI_IE_PRESENT, align 4
  %455 = and i32 %453, %454
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %464

457:                                              ; preds = %448
  %458 = load i32, i32* @UNI_IE_LIJ_SEQNO, align 4
  %459 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %460 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %459, i32 0, i32 11
  %461 = bitcast %struct.TYPE_93__* %460 to %union.uni_ieall*
  %462 = load %struct.unicx*, %struct.unicx** %4, align 8
  %463 = call i32 @uni_print_ie_internal(i32 %458, %union.uni_ieall* %461, %struct.unicx* %462)
  br label %464

464:                                              ; preds = %457, %448
  %465 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %466 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %465, i32 0, i32 10
  %467 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* @UNI_IE_PRESENT, align 4
  %471 = and i32 %469, %470
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %480

473:                                              ; preds = %464
  %474 = load i32, i32* @UNI_IE_EXQOS, align 4
  %475 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %476 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %475, i32 0, i32 10
  %477 = bitcast %struct.TYPE_95__* %476 to %union.uni_ieall*
  %478 = load %struct.unicx*, %struct.unicx** %4, align 8
  %479 = call i32 @uni_print_ie_internal(i32 %474, %union.uni_ieall* %477, %struct.unicx* %478)
  br label %480

480:                                              ; preds = %473, %464
  %481 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %482 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %481, i32 0, i32 9
  %483 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_96__, %struct.TYPE_96__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* @UNI_IE_PRESENT, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %496

489:                                              ; preds = %480
  %490 = load i32, i32* @UNI_IE_ABRSETUP, align 4
  %491 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %492 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %491, i32 0, i32 9
  %493 = bitcast %struct.TYPE_97__* %492 to %union.uni_ieall*
  %494 = load %struct.unicx*, %struct.unicx** %4, align 8
  %495 = call i32 @uni_print_ie_internal(i32 %490, %union.uni_ieall* %493, %struct.unicx* %494)
  br label %496

496:                                              ; preds = %489, %480
  %497 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %498 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %497, i32 0, i32 8
  %499 = getelementptr inbounds %struct.TYPE_99__, %struct.TYPE_99__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = load i32, i32* @UNI_IE_PRESENT, align 4
  %503 = and i32 %501, %502
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %512

505:                                              ; preds = %496
  %506 = load i32, i32* @UNI_IE_ABRADD, align 4
  %507 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %508 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %507, i32 0, i32 8
  %509 = bitcast %struct.TYPE_99__* %508 to %union.uni_ieall*
  %510 = load %struct.unicx*, %struct.unicx** %4, align 8
  %511 = call i32 @uni_print_ie_internal(i32 %506, %union.uni_ieall* %509, %struct.unicx* %510)
  br label %512

512:                                              ; preds = %505, %496
  %513 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %514 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %513, i32 0, i32 7
  %515 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* @UNI_IE_PRESENT, align 4
  %519 = and i32 %517, %518
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %528

521:                                              ; preds = %512
  %522 = load i32, i32* @UNI_IE_CSCOPE, align 4
  %523 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %524 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %523, i32 0, i32 7
  %525 = bitcast %struct.TYPE_101__* %524 to %union.uni_ieall*
  %526 = load %struct.unicx*, %struct.unicx** %4, align 8
  %527 = call i32 @uni_print_ie_internal(i32 %522, %union.uni_ieall* %525, %struct.unicx* %526)
  br label %528

528:                                              ; preds = %521, %512
  %529 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %530 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %529, i32 0, i32 6
  %531 = getelementptr inbounds %struct.TYPE_104__, %struct.TYPE_104__* %530, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_102__, %struct.TYPE_102__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  %534 = load i32, i32* @UNI_IE_PRESENT, align 4
  %535 = and i32 %533, %534
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %544

537:                                              ; preds = %528
  %538 = load i32, i32* @UNI_IE_CALLING_SOFT, align 4
  %539 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %540 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %539, i32 0, i32 6
  %541 = bitcast %struct.TYPE_104__* %540 to %union.uni_ieall*
  %542 = load %struct.unicx*, %struct.unicx** %4, align 8
  %543 = call i32 @uni_print_ie_internal(i32 %538, %union.uni_ieall* %541, %struct.unicx* %542)
  br label %544

544:                                              ; preds = %537, %528
  %545 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %546 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %545, i32 0, i32 5
  %547 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 4
  %550 = load i32, i32* @UNI_IE_PRESENT, align 4
  %551 = and i32 %549, %550
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %560

553:                                              ; preds = %544
  %554 = load i32, i32* @UNI_IE_CALLED_SOFT, align 4
  %555 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %556 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %555, i32 0, i32 5
  %557 = bitcast %struct.TYPE_106__* %556 to %union.uni_ieall*
  %558 = load %struct.unicx*, %struct.unicx** %4, align 8
  %559 = call i32 @uni_print_ie_internal(i32 %554, %union.uni_ieall* %557, %struct.unicx* %558)
  br label %560

560:                                              ; preds = %553, %544
  %561 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %562 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %561, i32 0, i32 4
  %563 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %562, i32 0, i32 0
  %564 = getelementptr inbounds %struct.TYPE_107__, %struct.TYPE_107__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = load i32, i32* @UNI_IE_PRESENT, align 4
  %567 = and i32 %565, %566
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %576

569:                                              ; preds = %560
  %570 = load i32, i32* @UNI_IE_REPEAT, align 4
  %571 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %572 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %571, i32 0, i32 4
  %573 = bitcast %struct.TYPE_108__* %572 to %union.uni_ieall*
  %574 = load %struct.unicx*, %struct.unicx** %4, align 8
  %575 = call i32 @uni_print_ie_internal(i32 %570, %union.uni_ieall* %573, %struct.unicx* %574)
  br label %576

576:                                              ; preds = %569, %560
  store i64 0, i64* %5, align 8
  br label %577

577:                                              ; preds = %604, %576
  %578 = load i64, i64* %5, align 8
  %579 = load i64, i64* @UNI_NUM_IE_DTL, align 8
  %580 = icmp ult i64 %578, %579
  br i1 %580, label %581, label %607

581:                                              ; preds = %577
  %582 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %583 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %582, i32 0, i32 3
  %584 = load %struct.TYPE_110__*, %struct.TYPE_110__** %583, align 8
  %585 = load i64, i64* %5, align 8
  %586 = getelementptr inbounds %struct.TYPE_110__, %struct.TYPE_110__* %584, i64 %585
  %587 = getelementptr inbounds %struct.TYPE_110__, %struct.TYPE_110__* %586, i32 0, i32 0
  %588 = getelementptr inbounds %struct.TYPE_109__, %struct.TYPE_109__* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 4
  %590 = load i32, i32* @UNI_IE_PRESENT, align 4
  %591 = and i32 %589, %590
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %603

593:                                              ; preds = %581
  %594 = load i32, i32* @UNI_IE_DTL, align 4
  %595 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %596 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %595, i32 0, i32 3
  %597 = load %struct.TYPE_110__*, %struct.TYPE_110__** %596, align 8
  %598 = load i64, i64* %5, align 8
  %599 = getelementptr inbounds %struct.TYPE_110__, %struct.TYPE_110__* %597, i64 %598
  %600 = bitcast %struct.TYPE_110__* %599 to %union.uni_ieall*
  %601 = load %struct.unicx*, %struct.unicx** %4, align 8
  %602 = call i32 @uni_print_ie_internal(i32 %594, %union.uni_ieall* %600, %struct.unicx* %601)
  br label %603

603:                                              ; preds = %593, %581
  br label %604

604:                                              ; preds = %603
  %605 = load i64, i64* %5, align 8
  %606 = add i64 %605, 1
  store i64 %606, i64* %5, align 8
  br label %577

607:                                              ; preds = %577
  %608 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %609 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %608, i32 0, i32 2
  %610 = getelementptr inbounds %struct.TYPE_112__, %struct.TYPE_112__* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_111__, %struct.TYPE_111__* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  %613 = load i32, i32* @UNI_IE_PRESENT, align 4
  %614 = and i32 %612, %613
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %623

616:                                              ; preds = %607
  %617 = load i32, i32* @UNI_IE_REPORT, align 4
  %618 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %619 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %618, i32 0, i32 2
  %620 = bitcast %struct.TYPE_112__* %619 to %union.uni_ieall*
  %621 = load %struct.unicx*, %struct.unicx** %4, align 8
  %622 = call i32 @uni_print_ie_internal(i32 %617, %union.uni_ieall* %620, %struct.unicx* %621)
  br label %623

623:                                              ; preds = %616, %607
  %624 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %625 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %624, i32 0, i32 1
  %626 = getelementptr inbounds %struct.TYPE_115__, %struct.TYPE_115__* %625, i32 0, i32 0
  %627 = getelementptr inbounds %struct.TYPE_113__, %struct.TYPE_113__* %626, i32 0, i32 0
  %628 = load i32, i32* %627, align 4
  %629 = load i32, i32* @UNI_IE_PRESENT, align 4
  %630 = and i32 %628, %629
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %639

632:                                              ; preds = %623
  %633 = load i32, i32* @UNI_IE_MDCR, align 4
  %634 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %635 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %634, i32 0, i32 1
  %636 = bitcast %struct.TYPE_115__* %635 to %union.uni_ieall*
  %637 = load %struct.unicx*, %struct.unicx** %4, align 8
  %638 = call i32 @uni_print_ie_internal(i32 %633, %union.uni_ieall* %636, %struct.unicx* %637)
  br label %639

639:                                              ; preds = %632, %623
  %640 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %641 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %640, i32 0, i32 0
  %642 = getelementptr inbounds %struct.TYPE_117__, %struct.TYPE_117__* %641, i32 0, i32 0
  %643 = getelementptr inbounds %struct.TYPE_116__, %struct.TYPE_116__* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 8
  %645 = load i32, i32* @UNI_IE_PRESENT, align 4
  %646 = and i32 %644, %645
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %648, label %655

648:                                              ; preds = %639
  %649 = load i32, i32* @UNI_IE_UNREC, align 4
  %650 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %651 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %650, i32 0, i32 0
  %652 = bitcast %struct.TYPE_117__* %651 to %union.uni_ieall*
  %653 = load %struct.unicx*, %struct.unicx** %4, align 8
  %654 = call i32 @uni_print_ie_internal(i32 %649, %union.uni_ieall* %652, %struct.unicx* %653)
  br label %655

655:                                              ; preds = %648, %639
  ret void
}

declare dso_local i32 @uni_print_ie_internal(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
