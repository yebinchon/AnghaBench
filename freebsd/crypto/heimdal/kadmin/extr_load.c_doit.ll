; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_load.c_doit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_load.c_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64 (i32, %struct.TYPE_12__*, i32, i32)*, i64 (i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__*)*, i32 (i32, %struct.TYPE_12__*)* }

@O_RDWR = common dso_local global i32 0, align 4
@kadm_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@context = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"fopen(%s)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"kadm5_log_truncate\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"hdb_open\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"%s:%d:%s (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s:%d:error parsing keys (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"%s:%d:error parsing created event (%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"%s:%d:error parsing event (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%s:%d:error parsing time (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"%s:%d:error parsing lifetime (%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"%s:%d:error parsing flags (%s)\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"%s:%d:error parsing generation (%s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"%s:%d:error parsing extension (%s)\0A\00", align 1
@HDB_F_REPLACE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"db_store\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doit(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [8192 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.entry, align 8
  %13 = alloca %struct.TYPE_11__, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* @O_RDWR, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @kadm_handle, align 4
  %18 = call %struct.TYPE_12__* @_kadm5_s_get_db(i32 %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %14, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @context, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = sext i32 %25 to i64
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %24, i64 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 1, i32* %3, align 4
  br label %385

29:                                               ; preds = %2
  %30 = load i32, i32* @kadm_handle, align 4
  %31 = call i64 @kadm5_log_truncate(i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @fclose(i32* %35)
  %37 = load i32, i32* @context, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %37, i64 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %385

40:                                               ; preds = %29
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @O_CREAT, align 4
  %45 = load i32, i32* @O_TRUNC, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %43, %40
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64 (i32, %struct.TYPE_12__*, i32, i32)*, i64 (i32, %struct.TYPE_12__*, i32, i32)** %51, align 8
  %53 = load i32, i32* @context, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i64 %52(i32 %53, %struct.TYPE_12__* %54, i32 %55, i32 384)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load i32, i32* @context, align 4
  %61 = load i64, i64* %6, align 8
  %62 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %60, i64 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @fclose(i32* %63)
  store i32 1, i32* %3, align 4
  br label %385

65:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  store i64 0, i64* %6, align 8
  br label %66

66:                                               ; preds = %372, %347, %331, %315, %299, %283, %267, %251, %235, %219, %203, %187, %167, %65
  %67 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %68 = load i32*, i32** %7, align 8
  %69 = call i32* @fgets(i8* %67, i32 8192, i32* %68)
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %373

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  %74 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  store i8* %74, i8** %9, align 8
  br label %75

75:                                               ; preds = %80, %71
  %76 = load i8*, i8** %9, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @isspace(i8 zeroext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %9, align 8
  br label %75

83:                                               ; preds = %75
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 0
  store i8* %84, i8** %85, align 8
  %86 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  store i8* %86, i8** %9, align 8
  br label %87

87:                                               ; preds = %108, %83
  %88 = load i8*, i8** %9, align 8
  %89 = load i8, i8* %88, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %87
  %92 = load i8*, i8** %9, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 92
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %9, align 8
  br label %107

99:                                               ; preds = %91
  %100 = load i8*, i8** %9, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call i64 @isspace(i8 zeroext %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i8*, i8** %9, align 8
  store i8 0, i8* %105, align 1
  br label %111

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %96
  br label %108

108:                                              ; preds = %107
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %9, align 8
  br label %87

111:                                              ; preds = %104, %87
  %112 = load i8*, i8** %9, align 8
  %113 = call i8* @skip_next(i8* %112)
  store i8* %113, i8** %9, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 1
  store i8* %114, i8** %115, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = call i8* @skip_next(i8* %116)
  store i8* %117, i8** %9, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 2
  store i8* %118, i8** %119, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = call i8* @skip_next(i8* %120)
  store i8* %121, i8** %9, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 3
  store i8* %122, i8** %123, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = call i8* @skip_next(i8* %124)
  store i8* %125, i8** %9, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 4
  store i8* %126, i8** %127, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = call i8* @skip_next(i8* %128)
  store i8* %129, i8** %9, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 5
  store i8* %130, i8** %131, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = call i8* @skip_next(i8* %132)
  store i8* %133, i8** %9, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 6
  store i8* %134, i8** %135, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = call i8* @skip_next(i8* %136)
  store i8* %137, i8** %9, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 7
  store i8* %138, i8** %139, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = call i8* @skip_next(i8* %140)
  store i8* %141, i8** %9, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 8
  store i8* %142, i8** %143, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = call i8* @skip_next(i8* %144)
  store i8* %145, i8** %9, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 9
  store i8* %146, i8** %147, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = call i8* @skip_next(i8* %148)
  store i8* %149, i8** %9, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 10
  store i8* %150, i8** %151, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = call i8* @skip_next(i8* %152)
  store i8* %153, i8** %9, align 8
  %154 = load i8*, i8** %9, align 8
  %155 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 11
  store i8* %154, i8** %155, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = call i8* @skip_next(i8* %156)
  %158 = call i32 @memset(%struct.TYPE_11__* %13, i32 0, i32 44)
  %159 = load i32, i32* @context, align 4
  %160 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 10
  %164 = call i64 @krb5_parse_name(i32 %159, i8* %161, i32* %163)
  store i64 %164, i64* %6, align 8
  %165 = load i64, i64* %6, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %181

167:                                              ; preds = %111
  %168 = load i32, i32* @context, align 4
  %169 = load i64, i64* %6, align 8
  %170 = call i8* @krb5_get_error_message(i32 %168, i64 %169)
  store i8* %170, i8** %15, align 8
  %171 = load i32, i32* @stderr, align 4
  %172 = load i8*, i8** %4, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load i8*, i8** %15, align 8
  %175 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (i32, i8*, i8*, i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %172, i32 %173, i8* %174, i8* %176)
  %178 = load i32, i32* @context, align 4
  %179 = load i8*, i8** %15, align 8
  %180 = call i32 @krb5_free_error_message(i32 %178, i8* %179)
  br label %66

181:                                              ; preds = %111
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %183 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = call i64 @parse_keys(%struct.TYPE_13__* %182, i8* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %181
  %188 = load i32, i32* @stderr, align 4
  %189 = load i8*, i8** %4, align 8
  %190 = load i32, i32* %10, align 4
  %191 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 (i32, i8*, i8*, i32, i8*, ...) @fprintf(i32 %188, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %189, i32 %190, i8* %192)
  %194 = load i32, i32* @context, align 4
  %195 = call i32 @hdb_free_entry(i32 %194, %struct.TYPE_11__* %13)
  br label %66

196:                                              ; preds = %181
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 9
  %199 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @parse_event(i32* %198, i8* %200)
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %212

203:                                              ; preds = %196
  %204 = load i32, i32* @stderr, align 4
  %205 = load i8*, i8** %4, align 8
  %206 = load i32, i32* %10, align 4
  %207 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 2
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 (i32, i8*, i8*, i32, i8*, ...) @fprintf(i32 %204, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %205, i32 %206, i8* %208)
  %210 = load i32, i32* @context, align 4
  %211 = call i32 @hdb_free_entry(i32 %210, %struct.TYPE_11__* %13)
  br label %66

212:                                              ; preds = %196
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 8
  %215 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 3
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @parse_event_alloc(i32* %214, i8* %216)
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %228

219:                                              ; preds = %212
  %220 = load i32, i32* @stderr, align 4
  %221 = load i8*, i8** %4, align 8
  %222 = load i32, i32* %10, align 4
  %223 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 3
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 (i32, i8*, i8*, i32, i8*, ...) @fprintf(i32 %220, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %221, i32 %222, i8* %224)
  %226 = load i32, i32* @context, align 4
  %227 = call i32 @hdb_free_entry(i32 %226, %struct.TYPE_11__* %13)
  br label %66

228:                                              ; preds = %212
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 7
  %231 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 4
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @parse_time_string_alloc(i32* %230, i8* %232)
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %235, label %244

235:                                              ; preds = %228
  %236 = load i32, i32* @stderr, align 4
  %237 = load i8*, i8** %4, align 8
  %238 = load i32, i32* %10, align 4
  %239 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 4
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 (i32, i8*, i8*, i32, i8*, ...) @fprintf(i32 %236, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %237, i32 %238, i8* %240)
  %242 = load i32, i32* @context, align 4
  %243 = call i32 @hdb_free_entry(i32 %242, %struct.TYPE_11__* %13)
  br label %66

244:                                              ; preds = %228
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 6
  %247 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 5
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @parse_time_string_alloc(i32* %246, i8* %248)
  %250 = icmp eq i32 %249, -1
  br i1 %250, label %251, label %260

251:                                              ; preds = %244
  %252 = load i32, i32* @stderr, align 4
  %253 = load i8*, i8** %4, align 8
  %254 = load i32, i32* %10, align 4
  %255 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 5
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 (i32, i8*, i8*, i32, i8*, ...) @fprintf(i32 %252, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %253, i32 %254, i8* %256)
  %258 = load i32, i32* @context, align 4
  %259 = call i32 @hdb_free_entry(i32 %258, %struct.TYPE_11__* %13)
  br label %66

260:                                              ; preds = %244
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 6
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 @parse_time_string_alloc(i32* %262, i8* %264)
  %266 = icmp eq i32 %265, -1
  br i1 %266, label %267, label %276

267:                                              ; preds = %260
  %268 = load i32, i32* @stderr, align 4
  %269 = load i8*, i8** %4, align 8
  %270 = load i32, i32* %10, align 4
  %271 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 6
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 (i32, i8*, i8*, i32, i8*, ...) @fprintf(i32 %268, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %269, i32 %270, i8* %272)
  %274 = load i32, i32* @context, align 4
  %275 = call i32 @hdb_free_entry(i32 %274, %struct.TYPE_11__* %13)
  br label %66

276:                                              ; preds = %260
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 7
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @parse_integer_alloc(i32* %278, i8* %280)
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %283, label %292

283:                                              ; preds = %276
  %284 = load i32, i32* @stderr, align 4
  %285 = load i8*, i8** %4, align 8
  %286 = load i32, i32* %10, align 4
  %287 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 7
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 (i32, i8*, i8*, i32, i8*, ...) @fprintf(i32 %284, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* %285, i32 %286, i8* %288)
  %290 = load i32, i32* @context, align 4
  %291 = call i32 @hdb_free_entry(i32 %290, %struct.TYPE_11__* %13)
  br label %66

292:                                              ; preds = %276
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 3
  %295 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 8
  %296 = load i8*, i8** %295, align 8
  %297 = call i32 @parse_integer_alloc(i32* %294, i8* %296)
  %298 = icmp eq i32 %297, -1
  br i1 %298, label %299, label %308

299:                                              ; preds = %292
  %300 = load i32, i32* @stderr, align 4
  %301 = load i8*, i8** %4, align 8
  %302 = load i32, i32* %10, align 4
  %303 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 8
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 (i32, i8*, i8*, i32, i8*, ...) @fprintf(i32 %300, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* %301, i32 %302, i8* %304)
  %306 = load i32, i32* @context, align 4
  %307 = call i32 @hdb_free_entry(i32 %306, %struct.TYPE_11__* %13)
  br label %66

308:                                              ; preds = %292
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 9
  %312 = load i8*, i8** %311, align 8
  %313 = call i32 @parse_hdbflags2int(i32* %310, i8* %312)
  %314 = icmp ne i32 %313, 1
  br i1 %314, label %315, label %324

315:                                              ; preds = %308
  %316 = load i32, i32* @stderr, align 4
  %317 = load i8*, i8** %4, align 8
  %318 = load i32, i32* %10, align 4
  %319 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 9
  %320 = load i8*, i8** %319, align 8
  %321 = call i32 (i32, i8*, i8*, i32, i8*, ...) @fprintf(i32 %316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %317, i32 %318, i8* %320)
  %322 = load i32, i32* @context, align 4
  %323 = call i32 @hdb_free_entry(i32 %322, %struct.TYPE_11__* %13)
  br label %66

324:                                              ; preds = %308
  %325 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 10
  %326 = load i8*, i8** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 1
  %329 = call i32 @parse_generation(i8* %326, i32* %328)
  %330 = icmp eq i32 %329, -1
  br i1 %330, label %331, label %340

331:                                              ; preds = %324
  %332 = load i32, i32* @stderr, align 4
  %333 = load i8*, i8** %4, align 8
  %334 = load i32, i32* %10, align 4
  %335 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 10
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 (i32, i8*, i8*, i32, i8*, ...) @fprintf(i32 %332, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i8* %333, i32 %334, i8* %336)
  %338 = load i32, i32* @context, align 4
  %339 = call i32 @hdb_free_entry(i32 %338, %struct.TYPE_11__* %13)
  br label %66

340:                                              ; preds = %324
  %341 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 11
  %342 = load i8*, i8** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 0
  %345 = call i32 @parse_extensions(i8* %342, i32* %344)
  %346 = icmp eq i32 %345, -1
  br i1 %346, label %347, label %356

347:                                              ; preds = %340
  %348 = load i32, i32* @stderr, align 4
  %349 = load i8*, i8** %4, align 8
  %350 = load i32, i32* %10, align 4
  %351 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 11
  %352 = load i8*, i8** %351, align 8
  %353 = call i32 (i32, i8*, i8*, i32, i8*, ...) @fprintf(i32 %348, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* %349, i32 %350, i8* %352)
  %354 = load i32, i32* @context, align 4
  %355 = call i32 @hdb_free_entry(i32 %354, %struct.TYPE_11__* %13)
  br label %66

356:                                              ; preds = %340
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 1
  %359 = load i64 (i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__*)*, i64 (i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__*)** %358, align 8
  %360 = load i32, i32* @context, align 4
  %361 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %362 = load i32, i32* @HDB_F_REPLACE, align 4
  %363 = call i64 %359(i32 %360, %struct.TYPE_12__* %361, i32 %362, %struct.TYPE_11__* %13)
  store i64 %363, i64* %6, align 8
  %364 = load i32, i32* @context, align 4
  %365 = call i32 @hdb_free_entry(i32 %364, %struct.TYPE_11__* %13)
  %366 = load i64, i64* %6, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %356
  %369 = load i32, i32* @context, align 4
  %370 = load i64, i64* %6, align 8
  %371 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %369, i64 %370, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  br label %373

372:                                              ; preds = %356
  br label %66

373:                                              ; preds = %368, %66
  %374 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i32 0, i32 2
  %376 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %375, align 8
  %377 = load i32, i32* @context, align 4
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %379 = call i32 %376(i32 %377, %struct.TYPE_12__* %378)
  %380 = load i32*, i32** %7, align 8
  %381 = call i32 @fclose(i32* %380)
  %382 = load i64, i64* %6, align 8
  %383 = icmp ne i64 %382, 0
  %384 = zext i1 %383 to i32
  store i32 %384, i32* %3, align 4
  br label %385

385:                                              ; preds = %373, %59, %34, %23
  %386 = load i32, i32* %3, align 4
  ret i32 %386
}

declare dso_local %struct.TYPE_12__* @_kadm5_s_get_db(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*, ...) #1

declare dso_local i64 @kadm5_log_truncate(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @skip_next(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i8* @krb5_get_error_message(i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i8*, ...) #1

declare dso_local i32 @krb5_free_error_message(i32, i8*) #1

declare dso_local i64 @parse_keys(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @hdb_free_entry(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @parse_event(i32*, i8*) #1

declare dso_local i32 @parse_event_alloc(i32*, i8*) #1

declare dso_local i32 @parse_time_string_alloc(i32*, i8*) #1

declare dso_local i32 @parse_integer_alloc(i32*, i8*) #1

declare dso_local i32 @parse_hdbflags2int(i32*, i8*) #1

declare dso_local i32 @parse_generation(i8*, i32*) #1

declare dso_local i32 @parse_extensions(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
