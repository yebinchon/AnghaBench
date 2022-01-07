; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_httpd.c_isc_httpd_recvdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_httpd.c_isc_httpd_recvdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_24__*, i64 }
%struct.TYPE_24__ = type { i64 (i32, i32, i32*, i32*, i32*, i8**, i32*, i32*, i32*)*, i64 (i32, i32, i32*, i32*, i32*, i8**, i32*, i32*, i32*)*, i32 }
%struct.TYPE_26__ = type { i8*, i32 }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_27__ = type { i64 (i32, i32, i32, i32*, i32*, i8**, i32*, i32*, i32*)*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"recv destroying client\00", align 1
@ISC_R_NOTFOUND = common dso_local global i64 0, align 8
@HTTP_RECVLEN = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Expires\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Last-Modified\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Pragma: no-cache\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Cache-Control: no-cache\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Server: libisc\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@isc_httpd_senddone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_29__*)* @isc_httpd_recvdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isc_httpd_recvdone(i32* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_26__, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  %12 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_28__* %14, %struct.TYPE_28__** %7, align 8
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %16 = bitcast %struct.TYPE_29__* %15 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %8, align 8
  %17 = call i32 @ENTER(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %19 = call i32 @ISC_HTTPD_ISRECV(%struct.TYPE_28__* %18)
  %20 = call i32 @INSIST(i32 %19)
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ISC_R_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = call i32 @NOTICE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @destroy_client(%struct.TYPE_28__** %7)
  br label %257

29:                                               ; preds = %2
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @process_request(%struct.TYPE_28__* %30, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @ISC_R_NOTFOUND, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %29
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @HTTP_RECVLEN, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp sge i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i32 @destroy_client(%struct.TYPE_28__** %7)
  br label %257

47:                                               ; preds = %38
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 13
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  %58 = load i32, i32* @HTTP_RECVLEN, align 4
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %58, %61
  %63 = sub nsw i32 %62, 1
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 1
  store i32 %63, i32* %64, align 8
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %70 = call i32 @isc_socket_recv(i32 %67, %struct.TYPE_26__* %5, i32 1, i32* %68, void (i32*, %struct.TYPE_29__*)* @isc_httpd_recvdone, %struct.TYPE_28__* %69)
  br label %257

71:                                               ; preds = %29
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @ISC_R_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @destroy_client(%struct.TYPE_28__** %7)
  br label %257

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %80 = call i32 @ISC_HTTPD_SETSEND(%struct.TYPE_28__* %79)
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 4
  %83 = call i32 @isc_buffer_initnull(i32* %82)
  %84 = call i32 @isc_time_now(i32* %10)
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %86 = call i32 @isc_time_formathttptimestamp(i32* %10, i8* %85, i32 32)
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 12
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.TYPE_27__* @ISC_LIST_HEAD(i32 %91)
  store %struct.TYPE_27__* %92, %struct.TYPE_27__** %9, align 8
  br label %93

93:                                               ; preds = %106, %78
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %95 = icmp ne %struct.TYPE_27__* %94, null
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 11
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @strcmp(i32 %99, i32 %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %110

106:                                              ; preds = %96
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %108 = load i32, i32* @link, align 4
  %109 = call %struct.TYPE_27__* @ISC_LIST_NEXT(%struct.TYPE_27__* %107, i32 %108)
  store %struct.TYPE_27__* %109, %struct.TYPE_27__** %9, align 8
  br label %93

110:                                              ; preds = %105, %93
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %112 = icmp eq %struct.TYPE_27__* %111, null
  br i1 %112, label %113, label %138

113:                                              ; preds = %110
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 12
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = load i64 (i32, i32, i32*, i32*, i32*, i8**, i32*, i32*, i32*)*, i64 (i32, i32, i32*, i32*, i32*, i8**, i32*, i32*, i32*)** %117, align 8
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 11
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 9
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 8
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 7
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 6
  %137 = call i64 %118(i32 %121, i32 %124, i32* null, i32* %126, i32* %128, i8** %130, i32* %132, i32* %134, i32* %136)
  store i64 %137, i64* %6, align 8
  br label %164

138:                                              ; preds = %110
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 0
  %141 = load i64 (i32, i32, i32, i32*, i32*, i8**, i32*, i32*, i32*)*, i64 (i32, i32, i32, i32*, i32*, i8**, i32*, i32*, i32*)** %140, align 8
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 11
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 9
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 8
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 7
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 6
  %163 = call i64 %141(i32 %144, i32 %147, i32 %150, i32* %152, i32* %154, i8** %156, i32* %158, i32* %160, i32* %162)
  store i64 %163, i64* %6, align 8
  br label %164

164:                                              ; preds = %138, %113
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* @ISC_R_SUCCESS, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %198

168:                                              ; preds = %164
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 12
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 1
  %173 = load i64 (i32, i32, i32*, i32*, i32*, i8**, i32*, i32*, i32*)*, i64 (i32, i32, i32*, i32*, i32*, i8**, i32*, i32*, i32*)** %172, align 8
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 10
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 9
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 8
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 4
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 7
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 6
  %192 = call i64 %173(i32 %176, i32 %179, i32* null, i32* %181, i32* %183, i8** %185, i32* %187, i32* %189, i32* %191)
  store i64 %192, i64* %6, align 8
  %193 = load i64, i64* %6, align 8
  %194 = load i64, i64* @ISC_R_SUCCESS, align 8
  %195 = icmp eq i64 %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @RUNTIME_CHECK(i32 %196)
  br label %198

198:                                              ; preds = %168, %164
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %200 = call i32 @isc_httpd_response(%struct.TYPE_28__* %199)
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @isc_httpd_addheader(%struct.TYPE_28__* %201, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %204)
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %207 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %208 = call i32 @isc_httpd_addheader(%struct.TYPE_28__* %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %207)
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %210 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %211 = call i32 @isc_httpd_addheader(%struct.TYPE_28__* %209, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %210)
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %213 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %214 = call i32 @isc_httpd_addheader(%struct.TYPE_28__* %212, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %213)
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %216 = call i32 @isc_httpd_addheader(%struct.TYPE_28__* %215, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* null)
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %218 = call i32 @isc_httpd_addheader(%struct.TYPE_28__* %217, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* null)
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %220 = call i32 @isc_httpd_addheader(%struct.TYPE_28__* %219, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* null)
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 4
  %224 = call i32 @isc_buffer_usedlength(i32* %223)
  %225 = call i32 @isc_httpd_addheaderuint(%struct.TYPE_28__* %221, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %224)
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %227 = call i32 @isc_httpd_endheaders(%struct.TYPE_28__* %226)
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 5
  %233 = load i32, i32* @link, align 4
  %234 = call i32 @ISC_LIST_APPEND(i32 %230, i32* %232, i32 %233)
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 4
  %237 = call i64 @isc_buffer_length(i32* %236)
  %238 = icmp sgt i64 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %198
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 4
  %245 = load i32, i32* @link, align 4
  %246 = call i32 @ISC_LIST_APPEND(i32 %242, i32* %244, i32 %245)
  br label %247

247:                                              ; preds = %239, %198
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 2
  %253 = load i32*, i32** %3, align 8
  %254 = load i32, i32* @isc_httpd_senddone, align 4
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %256 = call i32 @isc_socket_sendv(i32 %250, i32* %252, i32* %253, i32 %254, %struct.TYPE_28__* %255)
  br label %257

257:                                              ; preds = %247, %75, %47, %45, %26
  %258 = call i32 @isc_event_free(%struct.TYPE_29__** %4)
  %259 = call i32 @EXIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ENTER(i8*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @ISC_HTTPD_ISRECV(%struct.TYPE_28__*) #1

declare dso_local i32 @NOTICE(i8*) #1

declare dso_local i32 @destroy_client(%struct.TYPE_28__**) #1

declare dso_local i64 @process_request(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @isc_socket_recv(i32, %struct.TYPE_26__*, i32, i32*, void (i32*, %struct.TYPE_29__*)*, %struct.TYPE_28__*) #1

declare dso_local i32 @ISC_HTTPD_SETSEND(%struct.TYPE_28__*) #1

declare dso_local i32 @isc_buffer_initnull(i32*) #1

declare dso_local i32 @isc_time_now(i32*) #1

declare dso_local i32 @isc_time_formathttptimestamp(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_27__* @ISC_LIST_HEAD(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_27__* @ISC_LIST_NEXT(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @RUNTIME_CHECK(i32) #1

declare dso_local i32 @isc_httpd_response(%struct.TYPE_28__*) #1

declare dso_local i32 @isc_httpd_addheader(%struct.TYPE_28__*, i8*, i8*) #1

declare dso_local i32 @isc_httpd_addheaderuint(%struct.TYPE_28__*, i8*, i32) #1

declare dso_local i32 @isc_buffer_usedlength(i32*) #1

declare dso_local i32 @isc_httpd_endheaders(%struct.TYPE_28__*) #1

declare dso_local i32 @ISC_LIST_APPEND(i32, i32*, i32) #1

declare dso_local i64 @isc_buffer_length(i32*) #1

declare dso_local i32 @isc_socket_sendv(i32, i32*, i32*, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @isc_event_free(%struct.TYPE_29__**) #1

declare dso_local i32 @EXIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
