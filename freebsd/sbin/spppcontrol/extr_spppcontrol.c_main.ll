; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/spppcontrol/extr_spppcontrol.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/spppcontrol/extr_spppcontrol.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i64, i32 }
%struct.spppreq = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i8* }
%struct.TYPE_6__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1
@optind = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ifconfig: socket\00", align 1
@SPPPIOGDEFS = common dso_local global i64 0, align 8
@SIOCGIFGENERIC = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"SIOCGIFGENERIC(SPPPIOGDEFS)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"authproto=\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pap\00", align 1
@PPP_PAP = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"chap\00", align 1
@PPP_CHAP = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"bad auth proto: %s\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"myauthproto=\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"myauthname=\00", align 1
@AUTHNAMELEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"myauthsecret=\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"myauthkey=\00", align 1
@AUTHKEYLEN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"hisauthproto=\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"hisauthname=\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"hisauthsecret=\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"hisauthkey=\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"callin\00", align 1
@AUTHFLAG_NOCALLOUT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"norechallenge\00", align 1
@AUTHFLAG_NORECHALLENGE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"rechallenge\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"lcp-timeout=\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"bad lcp timeout value: %s\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"enable-vj\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"disable-vj\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"enable-ipv6\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"disable-ipv6\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"bad parameter: \22%s\22\00", align 1
@SPPPIOSDEFS = common dso_local global i64 0, align 8
@SIOCSIFGENERIC = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [28 x i8] c"SIOCSIFGENERIC(SPPPIOSDEFS)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ifreq, align 8
  %16 = alloca %struct.spppreq, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %30, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %7, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %27 [
    i32 118, label %24
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  br label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %24
  br label %17

31:                                               ; preds = %17
  %32 = load i64, i64* @optind, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 %32
  store i8** %34, i8*** %5, align 8
  %35 = load i64, i64* @optind, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %31
  %46 = call i32 (...) @usage()
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %13, align 8
  %51 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %15, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @strncpy(i32 %52, i8* %53, i32 4)
  %55 = load i32, i32* @AF_INET, align 4
  %56 = load i32, i32* @SOCK_DGRAM, align 4
  %57 = call i32 @socket(i32 %55, i32 %56, i32 0)
  store i32 %57, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* @EX_UNAVAILABLE, align 4
  %61 = call i32 @err(i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %47
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %4, align 4
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %5, align 8
  %67 = load i64, i64* @SPPPIOGDEFS, align 8
  %68 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 0
  store i64 %67, i64* %68, align 8
  %69 = ptrtoint %struct.spppreq* %16 to i64
  %70 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %15, i32 0, i32 0
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @SIOCGIFGENERIC, align 4
  %73 = call i32 @ioctl(i32 %71, i32 %72, %struct.ifreq* %15)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load i32, i32* @EX_OSERR, align 4
  %77 = call i32 @err(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %62
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 @print_vals(i8* %82, %struct.spppreq* %16)
  store i32 0, i32* %3, align 4
  br label %484

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %462, %84
  %86 = load i32, i32* %4, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %467

88:                                               ; preds = %85
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  store i64 10, i64* %10, align 8
  %92 = call i32 @strncmp(i8* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 10)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %141

94:                                               ; preds = %88
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %14, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %94
  %104 = load i8*, i8** @PPP_PAP, align 8
  %105 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  store i8* %104, i8** %107, align 8
  %108 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  store i8* %104, i8** %110, align 8
  br label %140

111:                                              ; preds = %94
  %112 = load i8*, i8** %14, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i8*, i8** @PPP_CHAP, align 8
  %117 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  store i8* %116, i8** %119, align 8
  %120 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  store i8* %116, i8** %122, align 8
  br label %139

123:                                              ; preds = %111
  %124 = load i8*, i8** %14, align 8
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  store i8* null, i8** %130, align 8
  %131 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  store i8* null, i8** %133, align 8
  br label %138

134:                                              ; preds = %123
  %135 = load i32, i32* @EX_DATAERR, align 4
  %136 = load i8*, i8** %14, align 8
  %137 = call i32 @errx(i32 %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %134, %127
  br label %139

139:                                              ; preds = %138, %115
  br label %140

140:                                              ; preds = %139, %103
  br label %462

141:                                              ; preds = %88
  %142 = load i8**, i8*** %5, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 0
  %144 = load i8*, i8** %143, align 8
  store i64 12, i64* %10, align 8
  %145 = call i32 @strncmp(i8* %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i64 12)
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %185

147:                                              ; preds = %141
  %148 = load i8**, i8*** %5, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i64, i64* %10, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %14, align 8
  %153 = load i8*, i8** %14, align 8
  %154 = call i64 @strcmp(i8* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %147
  %157 = load i8*, i8** @PPP_PAP, align 8
  %158 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  store i8* %157, i8** %160, align 8
  br label %184

161:                                              ; preds = %147
  %162 = load i8*, i8** %14, align 8
  %163 = call i64 @strcmp(i8* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load i8*, i8** @PPP_CHAP, align 8
  %167 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  store i8* %166, i8** %169, align 8
  br label %183

170:                                              ; preds = %161
  %171 = load i8*, i8** %14, align 8
  %172 = call i64 @strcmp(i8* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  store i8* null, i8** %177, align 8
  br label %182

178:                                              ; preds = %170
  %179 = load i32, i32* @EX_DATAERR, align 4
  %180 = load i8*, i8** %14, align 8
  %181 = call i32 @errx(i32 %179, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %180)
  br label %182

182:                                              ; preds = %178, %174
  br label %183

183:                                              ; preds = %182, %165
  br label %184

184:                                              ; preds = %183, %156
  br label %461

185:                                              ; preds = %141
  %186 = load i8**, i8*** %5, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 0
  %188 = load i8*, i8** %187, align 8
  store i64 11, i64* %10, align 8
  %189 = call i32 @strncmp(i8* %188, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 11)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i8**, i8*** %5, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i64, i64* %10, align 8
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  %201 = load i32, i32* @AUTHNAMELEN, align 4
  %202 = call i32 @strncpy(i32 %195, i8* %200, i32 %201)
  br label %460

203:                                              ; preds = %185
  %204 = load i8**, i8*** %5, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 0
  %206 = load i8*, i8** %205, align 8
  store i64 13, i64* %10, align 8
  %207 = call i32 @strncmp(i8* %206, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i64 13)
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %203
  %210 = load i8**, i8*** %5, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 0
  %212 = load i8*, i8** %211, align 8
  store i64 10, i64* %10, align 8
  %213 = call i32 @strncmp(i8* %212, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i64 10)
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %209, %203
  %216 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i8**, i8*** %5, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 0
  %222 = load i8*, i8** %221, align 8
  %223 = load i64, i64* %10, align 8
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  %225 = load i32, i32* @AUTHKEYLEN, align 4
  %226 = call i32 @strncpy(i32 %219, i8* %224, i32 %225)
  br label %459

227:                                              ; preds = %209
  %228 = load i8**, i8*** %5, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 0
  %230 = load i8*, i8** %229, align 8
  store i64 13, i64* %10, align 8
  %231 = call i32 @strncmp(i8* %230, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i64 13)
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %271

233:                                              ; preds = %227
  %234 = load i8**, i8*** %5, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 0
  %236 = load i8*, i8** %235, align 8
  %237 = load i64, i64* %10, align 8
  %238 = getelementptr inbounds i8, i8* %236, i64 %237
  store i8* %238, i8** %14, align 8
  %239 = load i8*, i8** %14, align 8
  %240 = call i64 @strcmp(i8* %239, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %233
  %243 = load i8*, i8** @PPP_PAP, align 8
  %244 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 3
  store i8* %243, i8** %246, align 8
  br label %270

247:                                              ; preds = %233
  %248 = load i8*, i8** %14, align 8
  %249 = call i64 @strcmp(i8* %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %247
  %252 = load i8*, i8** @PPP_CHAP, align 8
  %253 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 3
  store i8* %252, i8** %255, align 8
  br label %269

256:                                              ; preds = %247
  %257 = load i8*, i8** %14, align 8
  %258 = call i64 @strcmp(i8* %257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 3
  store i8* null, i8** %263, align 8
  br label %268

264:                                              ; preds = %256
  %265 = load i32, i32* @EX_DATAERR, align 4
  %266 = load i8*, i8** %14, align 8
  %267 = call i32 @errx(i32 %265, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %266)
  br label %268

268:                                              ; preds = %264, %260
  br label %269

269:                                              ; preds = %268, %251
  br label %270

270:                                              ; preds = %269, %242
  br label %458

271:                                              ; preds = %227
  %272 = load i8**, i8*** %5, align 8
  %273 = getelementptr inbounds i8*, i8** %272, i64 0
  %274 = load i8*, i8** %273, align 8
  store i64 12, i64* %10, align 8
  %275 = call i32 @strncmp(i8* %274, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i64 12)
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %289

277:                                              ; preds = %271
  %278 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load i8**, i8*** %5, align 8
  %283 = getelementptr inbounds i8*, i8** %282, i64 0
  %284 = load i8*, i8** %283, align 8
  %285 = load i64, i64* %10, align 8
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  %287 = load i32, i32* @AUTHNAMELEN, align 4
  %288 = call i32 @strncpy(i32 %281, i8* %286, i32 %287)
  br label %457

289:                                              ; preds = %271
  %290 = load i8**, i8*** %5, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 0
  %292 = load i8*, i8** %291, align 8
  store i64 14, i64* %10, align 8
  %293 = call i32 @strncmp(i8* %292, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i64 14)
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %301, label %295

295:                                              ; preds = %289
  %296 = load i8**, i8*** %5, align 8
  %297 = getelementptr inbounds i8*, i8** %296, i64 0
  %298 = load i8*, i8** %297, align 8
  store i64 11, i64* %10, align 8
  %299 = call i32 @strncmp(i8* %298, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i64 11)
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %313

301:                                              ; preds = %295, %289
  %302 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i8**, i8*** %5, align 8
  %307 = getelementptr inbounds i8*, i8** %306, i64 0
  %308 = load i8*, i8** %307, align 8
  %309 = load i64, i64* %10, align 8
  %310 = getelementptr inbounds i8, i8* %308, i64 %309
  %311 = load i32, i32* @AUTHKEYLEN, align 4
  %312 = call i32 @strncpy(i32 %305, i8* %310, i32 %311)
  br label %456

313:                                              ; preds = %295
  %314 = load i8**, i8*** %5, align 8
  %315 = getelementptr inbounds i8*, i8** %314, i64 0
  %316 = load i8*, i8** %315, align 8
  %317 = call i64 @strcmp(i8* %316, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %326

319:                                              ; preds = %313
  %320 = load i32, i32* @AUTHFLAG_NOCALLOUT, align 4
  %321 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = or i32 %324, %320
  store i32 %325, i32* %323, align 8
  br label %455

326:                                              ; preds = %313
  %327 = load i8**, i8*** %5, align 8
  %328 = getelementptr inbounds i8*, i8** %327, i64 0
  %329 = load i8*, i8** %328, align 8
  %330 = call i64 @strcmp(i8* %329, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %332, label %340

332:                                              ; preds = %326
  %333 = load i32, i32* @AUTHFLAG_NOCALLOUT, align 4
  %334 = xor i32 %333, -1
  %335 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = and i32 %338, %334
  store i32 %339, i32* %337, align 8
  br label %454

340:                                              ; preds = %326
  %341 = load i8**, i8*** %5, align 8
  %342 = getelementptr inbounds i8*, i8** %341, i64 0
  %343 = load i8*, i8** %342, align 8
  %344 = call i64 @strcmp(i8* %343, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %346, label %353

346:                                              ; preds = %340
  %347 = load i32, i32* @AUTHFLAG_NORECHALLENGE, align 4
  %348 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 3
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = or i32 %351, %347
  store i32 %352, i32* %350, align 8
  br label %453

353:                                              ; preds = %340
  %354 = load i8**, i8*** %5, align 8
  %355 = getelementptr inbounds i8*, i8** %354, i64 0
  %356 = load i8*, i8** %355, align 8
  %357 = call i64 @strcmp(i8* %356, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %359, label %367

359:                                              ; preds = %353
  %360 = load i32, i32* @AUTHFLAG_NORECHALLENGE, align 4
  %361 = xor i32 %360, -1
  %362 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 3
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = and i32 %365, %361
  store i32 %366, i32* %364, align 8
  br label %452

367:                                              ; preds = %353
  %368 = load i8**, i8*** %5, align 8
  %369 = getelementptr inbounds i8*, i8** %368, i64 0
  %370 = load i8*, i8** %369, align 8
  store i64 12, i64* %10, align 8
  %371 = call i32 @strncmp(i8* %370, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i64 12)
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %405

373:                                              ; preds = %367
  %374 = load i8**, i8*** %5, align 8
  %375 = getelementptr inbounds i8*, i8** %374, i64 0
  %376 = load i8*, i8** %375, align 8
  %377 = load i64, i64* %10, align 8
  %378 = getelementptr inbounds i8, i8* %376, i64 %377
  store i8* %378, i8** %14, align 8
  %379 = load i8*, i8** %14, align 8
  %380 = call i64 @strtol(i8* %379, i8** %12, i32 10)
  store i64 %380, i64* %11, align 8
  %381 = load i8*, i8** %14, align 8
  %382 = load i8, i8* %381, align 1
  %383 = sext i8 %382 to i32
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %396, label %385

385:                                              ; preds = %373
  %386 = load i8*, i8** %12, align 8
  %387 = load i8, i8* %386, align 1
  %388 = sext i8 %387 to i32
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %396, label %390

390:                                              ; preds = %385
  %391 = load i64, i64* %11, align 8
  %392 = icmp slt i64 %391, 10
  br i1 %392, label %396, label %393

393:                                              ; preds = %390
  %394 = load i64, i64* %11, align 8
  %395 = icmp sgt i64 %394, 20000
  br i1 %395, label %396, label %400

396:                                              ; preds = %393, %390, %385, %373
  %397 = load i32, i32* @EX_DATAERR, align 4
  %398 = load i8*, i8** %14, align 8
  %399 = call i32 @errx(i32 %397, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %398)
  br label %400

400:                                              ; preds = %396, %393
  %401 = load i64, i64* %11, align 8
  %402 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 0
  store i64 %401, i64* %404, align 8
  br label %451

405:                                              ; preds = %367
  %406 = load i8**, i8*** %5, align 8
  %407 = getelementptr inbounds i8*, i8** %406, i64 0
  %408 = load i8*, i8** %407, align 8
  %409 = call i64 @strcmp(i8* %408, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %405
  %412 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 0
  store i32 1, i32* %413, align 8
  br label %450

414:                                              ; preds = %405
  %415 = load i8**, i8*** %5, align 8
  %416 = getelementptr inbounds i8*, i8** %415, i64 0
  %417 = load i8*, i8** %416, align 8
  %418 = call i64 @strcmp(i8* %417, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %414
  %421 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %421, i32 0, i32 0
  store i32 0, i32* %422, align 8
  br label %449

423:                                              ; preds = %414
  %424 = load i8**, i8*** %5, align 8
  %425 = getelementptr inbounds i8*, i8** %424, i64 0
  %426 = load i8*, i8** %425, align 8
  %427 = call i64 @strcmp(i8* %426, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %423
  %430 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i32 0, i32 1
  store i32 1, i32* %431, align 4
  br label %448

432:                                              ; preds = %423
  %433 = load i8**, i8*** %5, align 8
  %434 = getelementptr inbounds i8*, i8** %433, i64 0
  %435 = load i8*, i8** %434, align 8
  %436 = call i64 @strcmp(i8* %435, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %432
  %439 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %439, i32 0, i32 1
  store i32 0, i32* %440, align 4
  br label %447

441:                                              ; preds = %432
  %442 = load i32, i32* @EX_DATAERR, align 4
  %443 = load i8**, i8*** %5, align 8
  %444 = getelementptr inbounds i8*, i8** %443, i64 0
  %445 = load i8*, i8** %444, align 8
  %446 = call i32 @errx(i32 %442, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i8* %445)
  br label %447

447:                                              ; preds = %441, %438
  br label %448

448:                                              ; preds = %447, %429
  br label %449

449:                                              ; preds = %448, %420
  br label %450

450:                                              ; preds = %449, %411
  br label %451

451:                                              ; preds = %450, %400
  br label %452

452:                                              ; preds = %451, %359
  br label %453

453:                                              ; preds = %452, %346
  br label %454

454:                                              ; preds = %453, %332
  br label %455

455:                                              ; preds = %454, %319
  br label %456

456:                                              ; preds = %455, %301
  br label %457

457:                                              ; preds = %456, %277
  br label %458

458:                                              ; preds = %457, %270
  br label %459

459:                                              ; preds = %458, %215
  br label %460

460:                                              ; preds = %459, %191
  br label %461

461:                                              ; preds = %460, %184
  br label %462

462:                                              ; preds = %461, %140
  %463 = load i8**, i8*** %5, align 8
  %464 = getelementptr inbounds i8*, i8** %463, i32 1
  store i8** %464, i8*** %5, align 8
  %465 = load i32, i32* %4, align 4
  %466 = add nsw i32 %465, -1
  store i32 %466, i32* %4, align 4
  br label %85

467:                                              ; preds = %85
  %468 = load i64, i64* @SPPPIOSDEFS, align 8
  %469 = getelementptr inbounds %struct.spppreq, %struct.spppreq* %16, i32 0, i32 0
  store i64 %468, i64* %469, align 8
  %470 = load i32, i32* %6, align 4
  %471 = load i32, i32* @SIOCSIFGENERIC, align 4
  %472 = call i32 @ioctl(i32 %470, i32 %471, %struct.ifreq* %15)
  %473 = icmp eq i32 %472, -1
  br i1 %473, label %474, label %477

474:                                              ; preds = %467
  %475 = load i32, i32* @EX_OSERR, align 4
  %476 = call i32 @err(i32 %475, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0))
  br label %477

477:                                              ; preds = %474, %467
  %478 = load i32, i32* %9, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %483

480:                                              ; preds = %477
  %481 = load i8*, i8** %13, align 8
  %482 = call i32 @print_vals(i8* %481, %struct.spppreq* %16)
  br label %483

483:                                              ; preds = %480, %477
  store i32 0, i32* %3, align 4
  br label %484

484:                                              ; preds = %483, %81
  %485 = load i32, i32* %3, align 4
  ret i32 %485
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @print_vals(i8*, %struct.spppreq*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
