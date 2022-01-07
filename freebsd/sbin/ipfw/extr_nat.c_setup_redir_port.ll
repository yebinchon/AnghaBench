; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_setup_redir_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_setup_redir_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat44_cfg_redir = type { i64, i32, i32, i32, i8*, i8*, %struct.TYPE_3__, i8*, %struct.TYPE_3__, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.nat44_cfg_spool = type { i8*, %struct.TYPE_3__ }

@REDIR_PORT = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i8* null, align 8
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@EX_DATAERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"redirect_port:port numbers do not change in sctp, so do not specify them as part of the target\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"redirect_port: invalid local port range\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"redirect_port: invalid public port range\00", align 1
@INADDR_ANY = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"redirect_port: invalid remote port range\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"redirect_port: port ranges must be equal in size\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"redirect_port: remote port mustbe 0 or equal to local port range in size\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"redirect_port:invalid local port range\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"redirect_port: local port must be single in this context\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8***)* @setup_redir_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_redir_port(i8* %0, i32* %1, i8*** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca %struct.nat44_cfg_redir*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nat44_cfg_spool*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8*** %2, i8**** %6, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.nat44_cfg_redir*
  store %struct.nat44_cfg_redir* %16, %struct.nat44_cfg_redir** %7, align 8
  %17 = load i32, i32* @REDIR_PORT, align 4
  %18 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %19 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 80
  store i8* %21, i8** %4, align 8
  store i64 80, i64* %11, align 8
  %22 = load i8***, i8**** %6, align 8
  %23 = load i8**, i8*** %22, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @StrToProto(i8* %24)
  %26 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %27 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i8***, i8**** %6, align 8
  %29 = load i8**, i8*** %28, align 8
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  %31 = load i8***, i8**** %6, align 8
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %33, i8*** %31, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = load i8***, i8**** %6, align 8
  %38 = load i8**, i8*** %37, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i32* @strchr(i8* %39, i8 signext 44)
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %3
  %43 = load i8*, i8** @INADDR_NONE, align 8
  %44 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %45 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  %47 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %48 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %47, i32 0, i32 7
  store i8* inttoptr (i64 -1 to i8*), i8** %48, align 8
  store i32 1, i32* %12, align 4
  %49 = load i8***, i8**** %6, align 8
  %50 = load i8**, i8*** %49, align 8
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %10, align 8
  br label %95

52:                                               ; preds = %3
  %53 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %54 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IPPROTO_SCTP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load i8***, i8**** %6, align 8
  %60 = load i8**, i8*** %59, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = call i32* @strchr(i8* %61, i8 signext 58)
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EX_DATAERR, align 4
  %66 = call i32 @errx(i32 %65, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0))
  br label %74

67:                                               ; preds = %58
  %68 = load i8***, i8**** %6, align 8
  %69 = load i8**, i8*** %68, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %72 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %71, i32 0, i32 9
  %73 = call i32 @StrToAddr(i8* %70, %struct.TYPE_3__* %72)
  br label %74

74:                                               ; preds = %67, %64
  br label %94

75:                                               ; preds = %52
  %76 = load i8***, i8**** %6, align 8
  %77 = load i8**, i8*** %76, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %80 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %79, i32 0, i32 9
  %81 = load i8*, i8** %9, align 8
  %82 = call i64 @StrToAddrAndPortRange(i8* %78, %struct.TYPE_3__* %80, i8* %81, i32* %13)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @EX_DATAERR, align 4
  %86 = call i32 @errx(i32 %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %75
  %88 = load i32, i32* %13, align 4
  %89 = call i8* @GETLOPORT(i32 %88)
  %90 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %91 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %90, i32 0, i32 7
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @GETNUMPORTS(i32 %92)
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %87, %74
  br label %95

95:                                               ; preds = %94, %42
  %96 = load i8***, i8**** %6, align 8
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %96, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  %102 = load i8***, i8**** %6, align 8
  %103 = load i8**, i8*** %102, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = call i32* @strchr(i8* %104, i8 signext 58)
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %120

107:                                              ; preds = %95
  %108 = load i8***, i8**** %6, align 8
  %109 = load i8**, i8*** %108, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %112 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %111, i32 0, i32 8
  %113 = load i8*, i8** %9, align 8
  %114 = call i64 @StrToAddrAndPortRange(i8* %110, %struct.TYPE_3__* %112, i8* %113, i32* %13)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* @EX_DATAERR, align 4
  %118 = call i32 @errx(i32 %117, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %107
  br label %135

120:                                              ; preds = %95
  %121 = load i8*, i8** @INADDR_ANY, align 8
  %122 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %123 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %122, i32 0, i32 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i8* %121, i8** %124, align 8
  %125 = load i8***, i8**** %6, align 8
  %126 = load i8**, i8*** %125, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = call i64 @StrToPortRange(i8* %127, i8* %128, i32* %13)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %120
  %132 = load i32, i32* @EX_DATAERR, align 4
  %133 = call i32 @errx(i32 %132, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %120
  br label %135

135:                                              ; preds = %134, %119
  %136 = load i32, i32* %13, align 4
  %137 = call i8* @GETLOPORT(i32 %136)
  %138 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %139 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %138, i32 0, i32 4
  store i8* %137, i8** %139, align 8
  %140 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %141 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @IPPROTO_SCTP, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %135
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @GETNUMPORTS(i32 %146)
  store i32 %147, i32* %12, align 4
  %148 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %149 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %148, i32 0, i32 4
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %152 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %151, i32 0, i32 7
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %145, %135
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @GETNUMPORTS(i32 %154)
  %156 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %157 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 8
  %158 = load i8***, i8**** %6, align 8
  %159 = load i8**, i8*** %158, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i32 1
  store i8** %160, i8*** %158, align 8
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %161, align 4
  %164 = load i32*, i32** %5, align 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %211

167:                                              ; preds = %153
  %168 = load i8***, i8**** %6, align 8
  %169 = load i8**, i8*** %168, align 8
  %170 = load i8*, i8** %169, align 8
  %171 = load i8, i8* %170, align 1
  %172 = call i64 @isdigit(i8 signext %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %211

174:                                              ; preds = %167
  %175 = load i8***, i8**** %6, align 8
  %176 = load i8**, i8*** %175, align 8
  %177 = load i8*, i8** %176, align 8
  %178 = call i32* @strchr(i8* %177, i8 signext 58)
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %193

180:                                              ; preds = %174
  %181 = load i8***, i8**** %6, align 8
  %182 = load i8**, i8*** %181, align 8
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %185 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %184, i32 0, i32 6
  %186 = load i8*, i8** %9, align 8
  %187 = call i64 @StrToAddrAndPortRange(i8* %183, %struct.TYPE_3__* %185, i8* %186, i32* %13)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = load i32, i32* @EX_DATAERR, align 4
  %191 = call i32 @errx(i32 %190, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %180
  br label %204

193:                                              ; preds = %174
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @SETLOPORT(i32 %194, i32 0)
  %196 = load i32, i32* %13, align 4
  %197 = call i32 @SETNUMPORTS(i32 %196, i32 1)
  %198 = load i8***, i8**** %6, align 8
  %199 = load i8**, i8*** %198, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %202 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %201, i32 0, i32 6
  %203 = call i32 @StrToAddr(i8* %200, %struct.TYPE_3__* %202)
  br label %204

204:                                              ; preds = %193, %192
  %205 = load i8***, i8**** %6, align 8
  %206 = load i8**, i8*** %205, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i32 1
  store i8** %207, i8*** %205, align 8
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %208, align 4
  br label %220

211:                                              ; preds = %167, %153
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @SETLOPORT(i32 %212, i32 0)
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @SETNUMPORTS(i32 %214, i32 1)
  %216 = load i8*, i8** @INADDR_ANY, align 8
  %217 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %218 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %217, i32 0, i32 6
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  store i8* %216, i8** %219, align 8
  br label %220

220:                                              ; preds = %211, %204
  %221 = load i32, i32* %13, align 4
  %222 = call i8* @GETLOPORT(i32 %221)
  %223 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %224 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %223, i32 0, i32 5
  store i8* %222, i8** %224, align 8
  %225 = load i32, i32* %13, align 4
  %226 = call i32 @GETNUMPORTS(i32 %225)
  %227 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %228 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* %12, align 4
  %230 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %231 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %229, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %220
  %235 = load i32, i32* @EX_DATAERR, align 4
  %236 = call i32 @errx(i32 %235, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %237

237:                                              ; preds = %234, %220
  %238 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %239 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %12, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %256

243:                                              ; preds = %237
  %244 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %245 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 1
  br i1 %247, label %253, label %248

248:                                              ; preds = %243
  %249 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %250 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %249, i32 0, i32 5
  %251 = load i8*, i8** %250, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %248, %243
  %254 = load i32, i32* @EX_DATAERR, align 4
  %255 = call i32 @errx(i32 %254, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0))
  br label %256

256:                                              ; preds = %253, %248, %237
  %257 = load i8*, i8** %10, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %324

259:                                              ; preds = %256
  %260 = load i8*, i8** %10, align 8
  %261 = call i8* @strtok(i8* %260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %261, i8** %8, align 8
  br label %262

262:                                              ; preds = %315, %259
  %263 = load i8*, i8** %8, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %323

265:                                              ; preds = %262
  %266 = load i8*, i8** %4, align 8
  %267 = bitcast i8* %266 to %struct.nat44_cfg_spool*
  store %struct.nat44_cfg_spool* %267, %struct.nat44_cfg_spool** %14, align 8
  %268 = load i64, i64* %11, align 8
  %269 = add i64 %268, 16
  store i64 %269, i64* %11, align 8
  %270 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %271 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @IPPROTO_SCTP, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %293

275:                                              ; preds = %265
  %276 = load i8*, i8** %8, align 8
  %277 = call i32* @strchr(i8* %276, i8 signext 58)
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %282

279:                                              ; preds = %275
  %280 = load i32, i32* @EX_DATAERR, align 4
  %281 = call i32 @errx(i32 %280, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0))
  br label %292

282:                                              ; preds = %275
  %283 = load i8*, i8** %8, align 8
  %284 = load %struct.nat44_cfg_spool*, %struct.nat44_cfg_spool** %14, align 8
  %285 = getelementptr inbounds %struct.nat44_cfg_spool, %struct.nat44_cfg_spool* %284, i32 0, i32 1
  %286 = call i32 @StrToAddr(i8* %283, %struct.TYPE_3__* %285)
  %287 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %288 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %287, i32 0, i32 4
  %289 = load i8*, i8** %288, align 8
  %290 = load %struct.nat44_cfg_spool*, %struct.nat44_cfg_spool** %14, align 8
  %291 = getelementptr inbounds %struct.nat44_cfg_spool, %struct.nat44_cfg_spool* %290, i32 0, i32 0
  store i8* %289, i8** %291, align 8
  br label %292

292:                                              ; preds = %282, %279
  br label %315

293:                                              ; preds = %265
  %294 = load i8*, i8** %8, align 8
  %295 = load %struct.nat44_cfg_spool*, %struct.nat44_cfg_spool** %14, align 8
  %296 = getelementptr inbounds %struct.nat44_cfg_spool, %struct.nat44_cfg_spool* %295, i32 0, i32 1
  %297 = load i8*, i8** %9, align 8
  %298 = call i64 @StrToAddrAndPortRange(i8* %294, %struct.TYPE_3__* %296, i8* %297, i32* %13)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %293
  %301 = load i32, i32* @EX_DATAERR, align 4
  %302 = call i32 @errx(i32 %301, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %303

303:                                              ; preds = %300, %293
  %304 = load i32, i32* %13, align 4
  %305 = call i32 @GETNUMPORTS(i32 %304)
  %306 = icmp ne i32 %305, 1
  br i1 %306, label %307, label %310

307:                                              ; preds = %303
  %308 = load i32, i32* @EX_DATAERR, align 4
  %309 = call i32 @errx(i32 %308, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  br label %310

310:                                              ; preds = %307, %303
  %311 = load i32, i32* %13, align 4
  %312 = call i8* @GETLOPORT(i32 %311)
  %313 = load %struct.nat44_cfg_spool*, %struct.nat44_cfg_spool** %14, align 8
  %314 = getelementptr inbounds %struct.nat44_cfg_spool, %struct.nat44_cfg_spool* %313, i32 0, i32 0
  store i8* %312, i8** %314, align 8
  br label %315

315:                                              ; preds = %310, %292
  %316 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %317 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 8
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %317, align 8
  %320 = load i8*, i8** %4, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 16
  store i8* %321, i8** %4, align 8
  %322 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %322, i8** %8, align 8
  br label %262

323:                                              ; preds = %262
  br label %324

324:                                              ; preds = %323, %256
  %325 = load i64, i64* %11, align 8
  %326 = trunc i64 %325 to i32
  ret i32 %326
}

declare dso_local i64 @StrToProto(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @StrToAddr(i8*, %struct.TYPE_3__*) #1

declare dso_local i64 @StrToAddrAndPortRange(i8*, %struct.TYPE_3__*, i8*, i32*) #1

declare dso_local i8* @GETLOPORT(i32) #1

declare dso_local i32 @GETNUMPORTS(i32) #1

declare dso_local i64 @StrToPortRange(i8*, i8*, i32*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @SETLOPORT(i32, i32) #1

declare dso_local i32 @SETNUMPORTS(i32, i32) #1

declare dso_local i8* @strtok(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
