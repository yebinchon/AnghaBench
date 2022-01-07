; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_auth_log_authopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_auth_log_authopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.sshauthopt = type { i64, i64, i64, i32, i8*, i64, i8*, i8**, i8**, i8**, i64, i64, i64, i64, i64 }

@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FORWARD_LOCAL = common dso_local global i32 0, align 4
@FORWARD_REMOTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"key options:%s%s%s%s%s%s%s%s%s%s%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" agent-forwarding\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" command\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c" environment\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"expires\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" permitopen\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c" permitlisten\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c" port-forwarding\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" principals\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" pty\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" tun=\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c" user-rc\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c" x11-forwarding\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s: environment: %s\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"%s: expires at %s\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"%s: authorized principals: \22%s\22\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"%s: forced command: \22%s\22\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"%s: permitted open: %s\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"%s: permitted listen: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auth_log_authopts(i8* %0, %struct.sshauthopt* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sshauthopt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca [64 x i8], align 16
  store i8* %0, i8** %4, align 8
  store %struct.sshauthopt* %1, %struct.sshauthopt** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 1), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %17 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ugt i64 %18, 0
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi i1 [ false, %3 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %24 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %29 = load i32, i32* @FORWARD_LOCAL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %27, %20
  %33 = phi i1 [ false, %20 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %36 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %41 = load i32, i32* @FORWARD_REMOTE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %39, %32
  %45 = phi i1 [ false, %32 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %48 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %49 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %47, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %53 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %54 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %53, i32 0, i32 11
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %59 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %60 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %61, null
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %69 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %70 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %83 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %84 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %83, i32 0, i32 10
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %89 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %90 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %89, i32 0, i32 6
  %91 = load i8*, i8** %90, align 8
  %92 = icmp eq i8* %91, null
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)
  %95 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %96 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %95, i32 0, i32 14
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %101 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %102 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, -1
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)
  %107 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %108 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %44
  br label %114

112:                                              ; preds = %44
  %113 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  br label %114

114:                                              ; preds = %112, %111
  %115 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %111 ], [ %113, %112 ]
  %116 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %117 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %116, i32 0, i32 13
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %122 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %123 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %122, i32 0, i32 12
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %128 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %52, i32 1024, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %64, i8* %68, i8* %74, i8* %78, i8* %82, i8* %88, i8* %94, i8* %100, i8* %106, i8* %115, i8* %121, i8* %127)
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %131 = call i32 @debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %129, i8* %130)
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %114
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %137 = call i32 @auth_debug_add(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %135, i8* %136)
  br label %138

138:                                              ; preds = %134, %114
  %139 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 1), align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %173

141:                                              ; preds = %138
  store i64 0, i64* %10, align 8
  br label %142

142:                                              ; preds = %169, %141
  %143 = load i64, i64* %10, align 8
  %144 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %145 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ult i64 %143, %146
  br i1 %147, label %148, label %172

148:                                              ; preds = %142
  %149 = load i8*, i8** %4, align 8
  %150 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %151 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %150, i32 0, i32 7
  %152 = load i8**, i8*** %151, align 8
  %153 = load i64, i64* %10, align 8
  %154 = getelementptr inbounds i8*, i8** %152, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %149, i8* %155)
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %148
  %160 = load i8*, i8** %4, align 8
  %161 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %162 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %161, i32 0, i32 7
  %163 = load i8**, i8*** %162, align 8
  %164 = load i64, i64* %10, align 8
  %165 = getelementptr inbounds i8*, i8** %163, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @auth_debug_add(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %160, i8* %166)
  br label %168

168:                                              ; preds = %159, %148
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %10, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %10, align 8
  br label %142

172:                                              ; preds = %142
  br label %173

173:                                              ; preds = %172, %138
  %174 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %175 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %173
  %179 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %180 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %183 = call i32 @format_absolute_time(i64 %181, i8* %182, i32 64)
  %184 = load i8*, i8** %4, align 8
  %185 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %186 = call i32 @debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %184, i8* %185)
  br label %187

187:                                              ; preds = %178, %173
  %188 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %189 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %188, i32 0, i32 6
  %190 = load i8*, i8** %189, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load i8*, i8** %4, align 8
  %194 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %195 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %194, i32 0, i32 6
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* %193, i8* %196)
  br label %198

198:                                              ; preds = %192, %187
  %199 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %200 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %199, i32 0, i32 4
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load i8*, i8** %4, align 8
  %205 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %206 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %205, i32 0, i32 4
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i8* %204, i8* %207)
  br label %209

209:                                              ; preds = %203, %198
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %232

212:                                              ; preds = %209
  store i64 0, i64* %10, align 8
  br label %213

213:                                              ; preds = %228, %212
  %214 = load i64, i64* %10, align 8
  %215 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %216 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp ult i64 %214, %217
  br i1 %218, label %219, label %231

219:                                              ; preds = %213
  %220 = load i8*, i8** %4, align 8
  %221 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %222 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %221, i32 0, i32 8
  %223 = load i8**, i8*** %222, align 8
  %224 = load i64, i64* %10, align 8
  %225 = getelementptr inbounds i8*, i8** %223, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8* %220, i8* %226)
  br label %228

228:                                              ; preds = %219
  %229 = load i64, i64* %10, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %10, align 8
  br label %213

231:                                              ; preds = %213
  br label %232

232:                                              ; preds = %231, %209
  %233 = load i32, i32* %9, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %255

235:                                              ; preds = %232
  store i64 0, i64* %10, align 8
  br label %236

236:                                              ; preds = %251, %235
  %237 = load i64, i64* %10, align 8
  %238 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %239 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = icmp ult i64 %237, %240
  br i1 %241, label %242, label %254

242:                                              ; preds = %236
  %243 = load i8*, i8** %4, align 8
  %244 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %245 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %244, i32 0, i32 9
  %246 = load i8**, i8*** %245, align 8
  %247 = load i64, i64* %10, align 8
  %248 = getelementptr inbounds i8*, i8** %246, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i8* %243, i8* %249)
  br label %251

251:                                              ; preds = %242
  %252 = load i64, i64* %10, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %10, align 8
  br label %236

254:                                              ; preds = %236
  br label %255

255:                                              ; preds = %254, %232
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @debug(i8*, i8*, i8*) #1

declare dso_local i32 @auth_debug_add(i8*, i8*, i8*) #1

declare dso_local i32 @format_absolute_time(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
