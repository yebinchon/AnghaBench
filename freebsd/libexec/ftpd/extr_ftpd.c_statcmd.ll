; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_statcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_statcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8* }
%union.sockunion = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@hostinfo = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"%s FTP server status:\00", align 1
@hostname = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"     %s\0D\0A\00", align 1
@version = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"FTP server status:\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"     Connected to %s\00", align 1
@remotehost = common dso_local global i8* null, align 8
@his_addr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@logged_in = common dso_local global i64 0, align 8
@guest = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"     Logged in anonymously\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"     Logged in as %s\0D\0A\00", align 1
@pw = common dso_local global %struct.TYPE_7__* null, align 8
@askpasswd = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"     Waiting for password\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"     Waiting for user name\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"     TYPE: %s\00", align 1
@typenames = common dso_local global i8** null, align 8
@type = common dso_local global i64 0, align 8
@TYPE_A = common dso_local global i64 0, align 8
@TYPE_E = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c", FORM: %s\00", align 1
@formnames = common dso_local global i8** null, align 8
@form = common dso_local global i64 0, align 8
@TYPE_L = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@bytesize = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"; STRUcture: %s; transfer MODE: %s\0D\0A\00", align 1
@strunames = common dso_local global i8** null, align 8
@stru = common dso_local global i64 0, align 8
@modenames = common dso_local global i8** null, align 8
@mode = common dso_local global i64 0, align 8
@data = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [28 x i8] c"     Data connection open\0D\0A\00", align 1
@pdata = common dso_local global i32 0, align 4
@pasv_addr = common dso_local global %union.sockunion zeroinitializer, align 8
@usedefault = common dso_local global i64 0, align 8
@data_dest = common dso_local global %union.sockunion zeroinitializer, align 8
@epsvall = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [33 x i8] c"     EPSV only mode (EPSV ALL)\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"     %s (%d,%d,%d,%d,%d,%d)\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"PASV\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"PORT\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"     %s (%d,%d,\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"LPSV\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"LPRT\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"%d,%d,%d)\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"     %s |%d|%s|%d|\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"EPSV\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"EPRT\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"     No data connection\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"End of status.\00", align 1
@CHAR_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @statcmd() #0 {
  %1 = alloca %union.sockunion*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.sockunion, align 8
  %12 = load i32, i32* @NI_MAXHOST, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i64, i64* @hostinfo, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %0
  %19 = load i32, i32* @hostname, align 4
  %20 = call i32 (i32, i8*, ...) @lreply(i32 211, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i8*, i8** @version, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %25

23:                                               ; preds = %0
  %24 = call i32 (i32, i8*, ...) @lreply(i32 211, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i8*, i8** @remotehost, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @his_addr, i32 0, i32 0), align 4
  %29 = sub i64 %13, 1
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @NI_NUMERICHOST, align 4
  %32 = call i32 @getnameinfo(%struct.sockaddr* bitcast (%struct.TYPE_8__* @his_addr to %struct.sockaddr*), i32 %28, i8* %15, i32 %30, i32* null, i32 0, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %25
  %35 = sub i64 %13, 1
  %36 = getelementptr inbounds i8, i8* %15, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** @remotehost, align 8
  %38 = call i64 @strcmp(i8* %15, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  br label %42

42:                                               ; preds = %40, %34
  br label %43

43:                                               ; preds = %42, %25
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i64, i64* @logged_in, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i64, i64* @guest, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %57

52:                                               ; preds = %47
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pw, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %52, %50
  br label %66

58:                                               ; preds = %43
  %59 = load i64, i64* @askpasswd, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %65

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %61
  br label %66

66:                                               ; preds = %65, %57
  %67 = load i8**, i8*** @typenames, align 8
  %68 = load i64, i64* @type, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %70)
  %72 = load i64, i64* @type, align 8
  %73 = load i64, i64* @TYPE_A, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %66
  %76 = load i64, i64* @type, align 8
  %77 = load i64, i64* @TYPE_E, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75, %66
  %80 = load i8**, i8*** @formnames, align 8
  %81 = load i64, i64* @form, align 8
  %82 = getelementptr inbounds i8*, i8** %80, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %79, %75
  %86 = load i64, i64* @type, align 8
  %87 = load i64, i64* @TYPE_L, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @bytesize, align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %89, %85
  %93 = load i8**, i8*** @strunames, align 8
  %94 = load i64, i64* @stru, align 8
  %95 = getelementptr inbounds i8*, i8** %93, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = load i8**, i8*** @modenames, align 8
  %98 = load i64, i64* @mode, align 8
  %99 = getelementptr inbounds i8*, i8** %97, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i8* %96, i8* %100)
  %102 = load i32, i32* @data, align 4
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  br label %263

106:                                              ; preds = %92
  %107 = load i32, i32* @pdata, align 4
  %108 = icmp ne i32 %107, -1
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 1, i32* %6, align 4
  store %union.sockunion* @pasv_addr, %union.sockunion** %1, align 8
  br label %114

110:                                              ; preds = %106
  %111 = load i64, i64* @usedefault, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %259

113:                                              ; preds = %110
  store i32 0, i32* %6, align 4
  store %union.sockunion* @data_dest, %union.sockunion** %1, align 8
  br label %114

114:                                              ; preds = %113, %109
  %115 = load i64, i64* @epsvall, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  br label %216

119:                                              ; preds = %114
  %120 = load %union.sockunion*, %union.sockunion** %1, align 8
  %121 = bitcast %union.sockunion* %120 to i32*
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 129
  br i1 %123, label %124, label %160

124:                                              ; preds = %119
  %125 = load %union.sockunion*, %union.sockunion** %1, align 8
  %126 = bitcast %union.sockunion* %125 to %struct.TYPE_5__*
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i32* %127, i32** %2, align 8
  %128 = load %union.sockunion*, %union.sockunion** %1, align 8
  %129 = bitcast %union.sockunion* %128 to %struct.TYPE_5__*
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i32* %130, i32** %3, align 8
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)
  %135 = load i32*, i32** %2, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 255
  %139 = load i32*, i32** %2, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 255
  %143 = load i32*, i32** %2, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 255
  %147 = load i32*, i32** %2, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 255
  %151 = load i32*, i32** %3, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 255
  %155 = load i32*, i32** %3, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 255
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i8* %134, i32 %138, i32 %142, i32 %146, i32 %150, i32 %154, i32 %158)
  br label %160

160:                                              ; preds = %124, %119
  %161 = load %union.sockunion*, %union.sockunion** %1, align 8
  %162 = bitcast %union.sockunion* %161 to i32*
  %163 = load i32, i32* %162, align 8
  switch i32 %163, label %178 [
    i32 129, label %164
    i32 128, label %171
  ]

164:                                              ; preds = %160
  %165 = load %union.sockunion*, %union.sockunion** %1, align 8
  %166 = bitcast %union.sockunion* %165 to %struct.TYPE_5__*
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  store i32* %167, i32** %2, align 8
  %168 = load %union.sockunion*, %union.sockunion** %1, align 8
  %169 = bitcast %union.sockunion* %168 to %struct.TYPE_5__*
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  store i32* %170, i32** %3, align 8
  store i32 4, i32* %7, align 4
  store i32 4, i32* %8, align 4
  br label %179

171:                                              ; preds = %160
  %172 = load %union.sockunion*, %union.sockunion** %1, align 8
  %173 = bitcast %union.sockunion* %172 to %struct.TYPE_6__*
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  store i32* %174, i32** %2, align 8
  %175 = load %union.sockunion*, %union.sockunion** %1, align 8
  %176 = bitcast %union.sockunion* %175 to %struct.TYPE_6__*
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i32* %177, i32** %3, align 8
  store i32 4, i32* %7, align 4
  store i32 6, i32* %8, align 4
  br label %179

178:                                              ; preds = %160
  store i32 0, i32* %8, align 4
  br label %179

179:                                              ; preds = %178, %171, %164
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %215

182:                                              ; preds = %179
  %183 = load i32, i32* %6, align 4
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* %186, i32 %187, i32 %188)
  store i32 0, i32* %9, align 4
  br label %190

190:                                              ; preds = %202, %182
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %205

194:                                              ; preds = %190
  %195 = load i32*, i32** %2, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, 255
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %194
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %9, align 4
  br label %190

205:                                              ; preds = %190
  %206 = load i32*, i32** %3, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, 255
  %210 = load i32*, i32** %3, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, 255
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 2, i32 %209, i32 %213)
  br label %215

215:                                              ; preds = %205, %179
  br label %216

216:                                              ; preds = %215, %117
  %217 = load %union.sockunion*, %union.sockunion** %1, align 8
  %218 = bitcast %union.sockunion* %217 to i32*
  %219 = load i32, i32* %218, align 8
  switch i32 %219, label %222 [
    i32 129, label %220
    i32 128, label %221
  ]

220:                                              ; preds = %216
  store i32 1, i32* %10, align 4
  br label %223

221:                                              ; preds = %216
  store i32 2, i32* %10, align 4
  br label %223

222:                                              ; preds = %216
  store i32 0, i32* %10, align 4
  br label %223

223:                                              ; preds = %222, %221, %220
  %224 = load i32, i32* %10, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %258

226:                                              ; preds = %223
  %227 = load %union.sockunion*, %union.sockunion** %1, align 8
  %228 = bitcast %union.sockunion* %11 to i8*
  %229 = bitcast %union.sockunion* %227 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %228, i8* align 8 %229, i64 16, i1 false)
  %230 = bitcast %union.sockunion* %11 to i32*
  %231 = load i32, i32* %230, align 8
  %232 = icmp eq i32 %231, 128
  br i1 %232, label %233, label %236

233:                                              ; preds = %226
  %234 = bitcast %union.sockunion* %11 to %struct.TYPE_6__*
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  store i64 0, i64* %235, align 8
  br label %236

236:                                              ; preds = %233, %226
  %237 = bitcast %union.sockunion* %11 to %struct.sockaddr*
  %238 = bitcast %union.sockunion* %11 to i32*
  %239 = load i32, i32* %238, align 8
  %240 = sub i64 %13, 1
  %241 = trunc i64 %240 to i32
  %242 = load i32, i32* @NI_NUMERICHOST, align 4
  %243 = call i32 @getnameinfo(%struct.sockaddr* %237, i32 %239, i8* %15, i32 %241, i32* null, i32 0, i32 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %257, label %245

245:                                              ; preds = %236
  %246 = sub i64 %13, 1
  %247 = getelementptr inbounds i8, i8* %15, i64 %246
  store i8 0, i8* %247, align 1
  %248 = load i32, i32* %6, align 4
  %249 = icmp ne i32 %248, 0
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)
  %252 = load i32, i32* %10, align 4
  %253 = bitcast %union.sockunion* %11 to i32*
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @htons(i32 %254)
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8* %251, i32 %252, i8* %15, i32 %255)
  br label %257

257:                                              ; preds = %245, %236
  br label %258

258:                                              ; preds = %257, %223
  br label %261

259:                                              ; preds = %110
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  br label %261

261:                                              ; preds = %259, %258
  br label %262

262:                                              ; preds = %261
  br label %263

263:                                              ; preds = %262, %104
  %264 = call i32 @reply(i32 211, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  %265 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %265)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lreply(i32, i8*, ...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @reply(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
