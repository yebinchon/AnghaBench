; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c_hx509_general_name_unparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c_hx509_general_name_unparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_24__ = type { i8*, i32 }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.rk_strpool = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"otherName: %s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"rfc822Name: %.*s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"dNSName: %.*s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"directoryName: %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"URI: %.*s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"IPAddress: \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.7 = private unnamed_addr constant [80 x i8] c"%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"unknown IP address of length %lu\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"registeredID: %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_general_name_unparse(%struct.TYPE_16__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rk_strpool*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.rk_strpool* null, %struct.rk_strpool** %6, align 8
  %13 = load i8**, i8*** %5, align 8
  store i8* null, i8** %13, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %242 [
    i32 131, label %17
    i32 129, label %33
    i32 134, label %48
    i32 133, label %63
    i32 128, label %90
    i32 132, label %105
    i32 130, label %227
  ]

17:                                               ; preds = %2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = call i32 @hx509_oid_sprint(i32* %21, i8** %7)
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %3, align 4
  br label %253

27:                                               ; preds = %17
  %28 = load %struct.rk_strpool*, %struct.rk_strpool** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %29)
  store %struct.rk_strpool* %30, %struct.rk_strpool** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @free(i8* %31)
  br label %244

33:                                               ; preds = %2
  %34 = load %struct.rk_strpool*, %struct.rk_strpool** %6, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %40, i8* %46)
  store %struct.rk_strpool* %47, %struct.rk_strpool** %6, align 8
  br label %244

48:                                               ; preds = %2
  %49 = load %struct.rk_strpool*, %struct.rk_strpool** %6, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %55, i8* %61)
  store %struct.rk_strpool* %62, %struct.rk_strpool** %6, align 8
  br label %244

63:                                               ; preds = %2
  %64 = call i32 @memset(%struct.TYPE_15__* %8, i32 0, i32 8)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = call i32 @_hx509_unparse_Name(%struct.TYPE_15__* %8, i8** %9)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %63
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %3, align 4
  br label %253

84:                                               ; preds = %63
  %85 = load %struct.rk_strpool*, %struct.rk_strpool** %6, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  store %struct.rk_strpool* %87, %struct.rk_strpool** %6, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @free(i8* %88)
  br label %244

90:                                               ; preds = %2
  %91 = load %struct.rk_strpool*, %struct.rk_strpool** %6, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %97, i8* %103)
  store %struct.rk_strpool* %104, %struct.rk_strpool** %6, align 8
  br label %244

105:                                              ; preds = %2
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %11, align 8
  %111 = load %struct.rk_strpool*, %struct.rk_strpool** %6, align 8
  %112 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store %struct.rk_strpool* %112, %struct.rk_strpool** %6, align 8
  %113 = load %struct.rk_strpool*, %struct.rk_strpool** %6, align 8
  %114 = icmp eq %struct.rk_strpool* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %244

116:                                              ; preds = %105
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 4
  br i1 %122, label %123, label %142

123:                                              ; preds = %116
  %124 = load %struct.rk_strpool*, %struct.rk_strpool** %6, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = load i8*, i8** %11, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = load i8*, i8** %11, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8*, i8** %11, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 3
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %128, i32 %132, i32 %136, i32 %140)
  store %struct.rk_strpool* %141, %struct.rk_strpool** %6, align 8
  br label %226

142:                                              ; preds = %116
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 16
  br i1 %148, label %149, label %216

149:                                              ; preds = %142
  %150 = load %struct.rk_strpool*, %struct.rk_strpool** %6, align 8
  %151 = load i8*, i8** %11, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 0
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = load i8*, i8** %11, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8*, i8** %11, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 2
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = load i8*, i8** %11, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 3
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = load i8*, i8** %11, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 4
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = load i8*, i8** %11, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 5
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = load i8*, i8** %11, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 6
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = load i8*, i8** %11, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 7
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = load i8*, i8** %11, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 8
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = load i8*, i8** %11, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 9
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = load i8*, i8** %11, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 10
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = load i8*, i8** %11, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 11
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = load i8*, i8** %11, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 12
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = load i8*, i8** %11, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 13
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = load i8*, i8** %11, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 14
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = load i8*, i8** %11, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 15
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %150, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.7, i64 0, i64 0), i32 %154, i32 %158, i32 %162, i32 %166, i32 %170, i32 %174, i32 %178, i32 %182, i32 %186, i32 %190, i32 %194, i32 %198, i32 %202, i32 %206, i32 %210, i32 %214)
  store %struct.rk_strpool* %215, %struct.rk_strpool** %6, align 8
  br label %225

216:                                              ; preds = %142
  %217 = load %struct.rk_strpool*, %struct.rk_strpool** %6, align 8
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %217, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 %223)
  store %struct.rk_strpool* %224, %struct.rk_strpool** %6, align 8
  br label %225

225:                                              ; preds = %216, %149
  br label %226

226:                                              ; preds = %225, %123
  br label %244

227:                                              ; preds = %2
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 0
  %231 = call i32 @hx509_oid_sprint(i32* %230, i8** %12)
  %232 = load i8*, i8** %12, align 8
  %233 = icmp eq i8* %232, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %227
  %235 = load i32, i32* @ENOMEM, align 4
  store i32 %235, i32* %3, align 4
  br label %253

236:                                              ; preds = %227
  %237 = load %struct.rk_strpool*, %struct.rk_strpool** %6, align 8
  %238 = load i8*, i8** %12, align 8
  %239 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %237, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %238)
  store %struct.rk_strpool* %239, %struct.rk_strpool** %6, align 8
  %240 = load i8*, i8** %12, align 8
  %241 = call i32 @free(i8* %240)
  br label %244

242:                                              ; preds = %2
  %243 = load i32, i32* @EINVAL, align 4
  store i32 %243, i32* %3, align 4
  br label %253

244:                                              ; preds = %236, %226, %115, %90, %84, %48, %33, %27
  %245 = load %struct.rk_strpool*, %struct.rk_strpool** %6, align 8
  %246 = icmp eq %struct.rk_strpool* %245, null
  br i1 %246, label %247, label %249

247:                                              ; preds = %244
  %248 = load i32, i32* @ENOMEM, align 4
  store i32 %248, i32* %3, align 4
  br label %253

249:                                              ; preds = %244
  %250 = load %struct.rk_strpool*, %struct.rk_strpool** %6, align 8
  %251 = call i8* @rk_strpoolcollect(%struct.rk_strpool* %250)
  %252 = load i8**, i8*** %5, align 8
  store i8* %251, i8** %252, align 8
  store i32 0, i32* %3, align 4
  br label %253

253:                                              ; preds = %249, %247, %242, %234, %82, %25
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @hx509_oid_sprint(i32*, i8**) #1

declare dso_local %struct.rk_strpool* @rk_strpoolprintf(%struct.rk_strpool*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @_hx509_unparse_Name(%struct.TYPE_15__*, i8**) #1

declare dso_local i8* @rk_strpoolcollect(%struct.rk_strpool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
