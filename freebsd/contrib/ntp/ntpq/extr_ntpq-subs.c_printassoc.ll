; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_printassoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_printassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@numassoc = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"No association ID's in list\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"ind assid status  conf reach auth condition  last_event cnt\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"===========================================================\0A\00", align 1
@assoc_cache = common dso_local global %struct.TYPE_2__* null, align 8
@CTL_PST_CONFIG = common dso_local global i32 0, align 4
@CTL_PST_REACH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@CTL_PST_BCAST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@CTL_PST_AUTHENABLE = common dso_local global i32 0, align 4
@CTL_PST_AUTHENTIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"ok \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@pktversion = common dso_local global i64 0, align 8
@NTP_OLDVERSION = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"reject\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"falsetick\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"excess\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"outlier\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"candidate\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"sys.peer\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"pps.peer\00", align 1
@OLD_CTL_PST_SANE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"insane\00", align 1
@OLD_CTL_PST_DISP = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"hi_disp\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"sel_cand\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sync_cand\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"sys_peer\00", align 1
@PEER_EVENT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"mobilize\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"demobilize\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"reachable\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"no_reply\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"rate_exceeded\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"access_denied\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"leap_armed\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"clock_alarm\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"%3d %5u  %04x   %3.3s  %4s  %4.4s %9.9s %11s %2lu\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @printassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printassoc(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [128 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %16 = load i64, i64* @numassoc, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %206

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %203, %21
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @numassoc, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %206

30:                                               ; preds = %26
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @assoc_cache, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @CTL_PEER_STATVAL(i32 %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @CTL_PST_CONFIG, align 4
  %43 = load i32, i32* @CTL_PST_REACH, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %203

48:                                               ; preds = %40, %30
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @assoc_cache, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @CTL_PEER_EVENT(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @assoc_cache, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CTL_PEER_NEVNT(i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @CTL_PST_CONFIG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %67

66:                                               ; preds = %48
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @CTL_PST_BCAST, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @CTL_PST_AUTHENABLE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %79

78:                                               ; preds = %72
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %79

79:                                               ; preds = %78, %77
  br label %102

80:                                               ; preds = %67
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @CTL_PST_REACH, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %87

86:                                               ; preds = %80
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %87

87:                                               ; preds = %86, %85
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @CTL_PST_AUTHENABLE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @CTL_PST_AUTHENTIC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  br label %99

98:                                               ; preds = %92
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %12, align 8
  br label %99

99:                                               ; preds = %98, %97
  br label %101

100:                                              ; preds = %87
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %101

101:                                              ; preds = %100, %99
  br label %102

102:                                              ; preds = %101, %79
  %103 = load i64, i64* @pktversion, align 8
  %104 = load i64, i64* @NTP_OLDVERSION, align 8
  %105 = icmp sgt i64 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i32, i32* %7, align 4
  %108 = and i32 %107, 7
  switch i32 %108, label %117 [
    i32 147, label %109
    i32 146, label %110
    i32 150, label %111
    i32 145, label %112
    i32 144, label %113
    i32 149, label %114
    i32 143, label %115
    i32 148, label %116
  ]

109:                                              ; preds = %106
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %13, align 8
  br label %117

110:                                              ; preds = %106
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8
  br label %117

111:                                              ; preds = %106
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %13, align 8
  br label %117

112:                                              ; preds = %106
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %13, align 8
  br label %117

113:                                              ; preds = %106
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %13, align 8
  br label %117

114:                                              ; preds = %106
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %13, align 8
  br label %117

115:                                              ; preds = %106
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8** %13, align 8
  br label %117

116:                                              ; preds = %106
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** %13, align 8
  br label %117

117:                                              ; preds = %106, %116, %115, %114, %113, %112, %111, %110, %109
  br label %140

118:                                              ; preds = %102
  %119 = load i32, i32* %7, align 4
  %120 = and i32 %119, 3
  switch i32 %120, label %139 [
    i32 142, label %121
    i32 141, label %136
    i32 140, label %137
    i32 139, label %138
  ]

121:                                              ; preds = %118
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @OLD_CTL_PST_SANE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %13, align 8
  br label %135

127:                                              ; preds = %121
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @OLD_CTL_PST_DISP, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8** %13, align 8
  br label %134

133:                                              ; preds = %127
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %134

134:                                              ; preds = %133, %132
  br label %135

135:                                              ; preds = %134, %126
  br label %139

136:                                              ; preds = %118
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %13, align 8
  br label %139

137:                                              ; preds = %118
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8** %13, align 8
  br label %139

138:                                              ; preds = %118
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8** %13, align 8
  br label %139

139:                                              ; preds = %118, %138, %137, %136, %135
  br label %140

140:                                              ; preds = %139, %117
  %141 = load i32, i32* @PEER_EVENT, align 4
  %142 = load i32, i32* %8, align 4
  %143 = or i32 %141, %142
  switch i32 %143, label %155 [
    i32 134, label %144
    i32 136, label %145
    i32 131, label %146
    i32 128, label %147
    i32 129, label %148
    i32 130, label %149
    i32 132, label %150
    i32 135, label %151
    i32 138, label %152
    i32 133, label %153
    i32 137, label %154
  ]

144:                                              ; preds = %140
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8** %14, align 8
  br label %156

145:                                              ; preds = %140
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8** %14, align 8
  br label %156

146:                                              ; preds = %140
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8** %14, align 8
  br label %156

147:                                              ; preds = %140
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8** %14, align 8
  br label %156

148:                                              ; preds = %140
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8** %14, align 8
  br label %156

149:                                              ; preds = %140
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8** %14, align 8
  br label %156

150:                                              ; preds = %140
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8** %14, align 8
  br label %156

151:                                              ; preds = %140
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8** %14, align 8
  br label %156

152:                                              ; preds = %140
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8** %14, align 8
  br label %156

153:                                              ; preds = %140
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8** %14, align 8
  br label %156

154:                                              ; preds = %140
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8** %14, align 8
  br label %156

155:                                              ; preds = %140
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %156

156:                                              ; preds = %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %145, %144
  %157 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %158 = load i64, i64* %6, align 8
  %159 = add nsw i64 %158, 1
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** @assoc_cache, align 8
  %161 = load i64, i64* %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** @assoc_cache, align 8
  %166 = load i64, i64* %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i8*, i8** %10, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = load i8*, i8** %12, align 8
  %173 = load i8*, i8** %13, align 8
  %174 = load i8*, i8** %14, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @snprintf(i8* %157, i32 128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i64 0, i64 0), i64 %159, i32 %164, i32 %169, i8* %170, i8* %171, i8* %172, i8* %173, i8* %174, i32 %175)
  %177 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %178 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %179 = call i32 @strlen(i8* %178)
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  store i8* %181, i8** %5, align 8
  br label %182

182:                                              ; preds = %194, %156
  %183 = load i8*, i8** %5, align 8
  %184 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %185 = icmp ugt i8* %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = load i8*, i8** %5, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 -1
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 32, %190
  br label %192

192:                                              ; preds = %186, %182
  %193 = phi i1 [ false, %182 ], [ %191, %186 ]
  br i1 %193, label %194, label %197

194:                                              ; preds = %192
  %195 = load i8*, i8** %5, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 -1
  store i8* %196, i8** %5, align 8
  br label %182

197:                                              ; preds = %192
  %198 = load i8*, i8** %5, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  store i8 0, i8* %199, align 1
  %200 = load i32*, i32** %4, align 8
  %201 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %202 = call i32 (i32*, i8*, ...) @fprintf(i32* %200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %197, %47
  %204 = load i64, i64* %6, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %6, align 8
  br label %26

206:                                              ; preds = %18, %26
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @CTL_PEER_STATVAL(i32) #1

declare dso_local i32 @CTL_PEER_EVENT(i32) #1

declare dso_local i32 @CTL_PEER_NEVNT(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i32, i32, i8*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
