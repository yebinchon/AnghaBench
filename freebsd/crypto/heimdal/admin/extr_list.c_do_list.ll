; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_list.c_do_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_list.c_do_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_options = type { i64, i64 }
%struct.TYPE_10__ = type { i8, %struct.TYPE_9__*, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.rk_strpool = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ANY:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@context = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"resolving keytab %s\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"krb5_kt_start_seq_get %s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s:\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Vno\00", align 1
@RTBL_ALIGN_RIGHT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Principal\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Aliases\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"unknown (%d)\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_options*, i8*)* @do_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_list(%struct.list_options* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1024 x i8], align 16
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.rk_strpool*, align 8
  store %struct.list_options* %0, %struct.list_options** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strncasecmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  store i8* %23, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %39, %21
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %26 = call i32 @strsep_copy(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 1024)
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  %34 = load %struct.list_options*, %struct.list_options** %4, align 8
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %36 = call i32 @do_list(%struct.list_options* %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %33
  store i32 1, i32* %11, align 4
  br label %24

40:                                               ; preds = %24
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %264

42:                                               ; preds = %2
  %43 = load i32, i32* @context, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @krb5_kt_resolve(i32 %43, i8* %44, i32* %7)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32, i32* @context, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @krb5_warn(i32 %49, i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %264

54:                                               ; preds = %42
  %55 = load i32, i32* @context, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @krb5_kt_start_seq_get(i32 %55, i32 %56, i32* %9)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32, i32* @context, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @krb5_warn(i32 %61, i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @context, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @krb5_kt_close(i32 %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %264

69:                                               ; preds = %54
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  %72 = call i32 (...) @rtbl_create()
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @RTBL_ALIGN_RIGHT, align 4
  %75 = call i32 @rtbl_add_column_by_id(i32 %73, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @rtbl_add_column_by_id(i32 %76, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @rtbl_add_column_by_id(i32 %78, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %80 = load %struct.list_options*, %struct.list_options** %4, align 8
  %81 = getelementptr inbounds %struct.list_options, %struct.list_options* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %69
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @rtbl_add_column_by_id(i32 %85, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 0)
  br label %87

87:                                               ; preds = %84, %69
  %88 = load %struct.list_options*, %struct.list_options** %4, align 8
  %89 = getelementptr inbounds %struct.list_options, %struct.list_options* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @rtbl_add_column_by_id(i32 %93, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 0)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @rtbl_add_column_by_id(i32 %96, i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @rtbl_set_separator(i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %100

100:                                              ; preds = %247, %95
  %101 = load i32, i32* @context, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i64 @krb5_kt_next_entry(i32 %101, i32 %102, %struct.TYPE_10__* %8, i32* %9)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %250

105:                                              ; preds = %100
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %108 = load i8, i8* %107, align 8
  %109 = call i32 @snprintf(i8* %106, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8 zeroext %108)
  %110 = load i32, i32* %10, align 4
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %112 = call i32 @rtbl_add_column_entry_by_id(i32 %110, i32 0, i8* %111)
  %113 = load i32, i32* @context, align 4
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i8, i8* %115, align 8
  %117 = call i32 @krb5_enctype_to_string(i32 %113, i8 zeroext %116, i8** %14)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %105
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i8, i8* %123, align 8
  %125 = call i32 @snprintf(i8* %121, i32 1024, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8 zeroext %124)
  %126 = load i32, i32* %10, align 4
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %128 = call i32 @rtbl_add_column_entry_by_id(i32 %126, i32 1, i8* %127)
  br label %135

129:                                              ; preds = %105
  %130 = load i32, i32* %10, align 4
  %131 = load i8*, i8** %14, align 8
  %132 = call i32 @rtbl_add_column_entry_by_id(i32 %130, i32 1, i8* %131)
  %133 = load i8*, i8** %14, align 8
  %134 = call i32 @free(i8* %133)
  br label %135

135:                                              ; preds = %129, %120
  %136 = load i32, i32* @context, align 4
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %140 = call i32 @krb5_unparse_name_fixed(i32 %136, i32 %138, i8* %139, i32 1024)
  %141 = load i32, i32* %10, align 4
  %142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %143 = call i32 @rtbl_add_column_entry_by_id(i32 %141, i32 2, i8* %142)
  %144 = load %struct.list_options*, %struct.list_options** %4, align 8
  %145 = getelementptr inbounds %struct.list_options, %struct.list_options* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %135
  %149 = load i32, i32* @context, align 4
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %153 = load i32, i32* @FALSE, align 4
  %154 = call i32 @krb5_format_time(i32 %149, i32 %151, i8* %152, i32 1024, i32 %153)
  %155 = load i32, i32* %10, align 4
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %157 = call i32 @rtbl_add_column_entry_by_id(i32 %155, i32 3, i8* %156)
  br label %158

158:                                              ; preds = %148, %135
  %159 = load %struct.list_options*, %struct.list_options** %4, align 8
  %160 = getelementptr inbounds %struct.list_options, %struct.list_options* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %209

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = mul nsw i32 2, %167
  %169 = add nsw i32 %168, 1
  %170 = call i8* @malloc(i32 %169)
  store i8* %170, i8** %14, align 8
  %171 = load i8*, i8** %14, align 8
  %172 = icmp eq i8* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %163
  %174 = load i32, i32* @context, align 4
  %175 = call i32 @krb5_warnx(i32 %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %176 = load i32, i32* @ENOMEM, align 4
  store i32 %176, i32* %6, align 4
  br label %257

177:                                              ; preds = %163
  store i64 0, i64* %15, align 8
  br label %178

178:                                              ; preds = %200, %177
  %179 = load i64, i64* %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = icmp ult i64 %179, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %178
  %187 = load i8*, i8** %14, align 8
  %188 = load i64, i64* %15, align 8
  %189 = mul i64 2, %188
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = inttoptr i64 %194 to i8*
  %196 = load i64, i64* %15, align 8
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = call i32 @snprintf(i8* %190, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8 zeroext %198)
  br label %200

200:                                              ; preds = %186
  %201 = load i64, i64* %15, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %15, align 8
  br label %178

203:                                              ; preds = %178
  %204 = load i32, i32* %10, align 4
  %205 = load i8*, i8** %14, align 8
  %206 = call i32 @rtbl_add_column_entry_by_id(i32 %204, i32 4, i8* %205)
  %207 = load i8*, i8** %14, align 8
  %208 = call i32 @free(i8* %207)
  br label %209

209:                                              ; preds = %203, %158
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = icmp ne %struct.TYPE_9__* %211, null
  br i1 %212, label %213, label %247

213:                                              ; preds = %209
  store %struct.rk_strpool* null, %struct.rk_strpool** %17, align 8
  store i32 0, i32* %16, align 4
  br label %214

214:                                              ; preds = %239, %213
  %215 = load i32, i32* %16, align 4
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp ult i32 %215, %219
  br i1 %220, label %221, label %242

221:                                              ; preds = %214
  %222 = load i32, i32* @context, align 4
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %226 = call i32 @krb5_unparse_name_fixed(i32 %222, i32 %224, i8* %225, i32 1024)
  %227 = load %struct.rk_strpool*, %struct.rk_strpool** %17, align 8
  %228 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %229 = load i32, i32* %16, align 4
  %230 = add i32 %229, 1
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp ult i32 %230, %234
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0)
  %238 = call i32 @rk_strpoolprintf(%struct.rk_strpool* %227, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* %228, i8* %237)
  br label %239

239:                                              ; preds = %221
  %240 = load i32, i32* %16, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %16, align 4
  br label %214

242:                                              ; preds = %214
  %243 = load i32, i32* %10, align 4
  %244 = load %struct.rk_strpool*, %struct.rk_strpool** %17, align 8
  %245 = call i8* @rk_strpoolcollect(%struct.rk_strpool* %244)
  %246 = call i32 @rtbl_add_column_entry_by_id(i32 %243, i32 5, i8* %245)
  br label %247

247:                                              ; preds = %242, %209
  %248 = load i32, i32* @context, align 4
  %249 = call i32 @krb5_kt_free_entry(i32 %248, %struct.TYPE_10__* %8)
  br label %100

250:                                              ; preds = %100
  %251 = load i32, i32* @context, align 4
  %252 = load i32, i32* %7, align 4
  %253 = call i32 @krb5_kt_end_seq_get(i32 %251, i32 %252, i32* %9)
  store i32 %253, i32* %6, align 4
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* @stdout, align 4
  %256 = call i32 @rtbl_format(i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %250, %173
  %258 = load i32, i32* %10, align 4
  %259 = call i32 @rtbl_destroy(i32 %258)
  %260 = load i32, i32* @context, align 4
  %261 = load i32, i32* %7, align 4
  %262 = call i32 @krb5_kt_close(i32 %260, i32 %261)
  %263 = load i32, i32* %6, align 4
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %257, %60, %48, %40
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strsep_copy(i8**, i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @krb5_kt_resolve(i32, i8*, i32*) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*, i8*) #1

declare dso_local i32 @krb5_kt_start_seq_get(i32, i32, i32*) #1

declare dso_local i32 @krb5_kt_close(i32, i32) #1

declare dso_local i32 @rtbl_create(...) #1

declare dso_local i32 @rtbl_add_column_by_id(i32, i32, i8*, i32) #1

declare dso_local i32 @rtbl_set_separator(i32, i8*) #1

declare dso_local i64 @krb5_kt_next_entry(i32, i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 zeroext) #1

declare dso_local i32 @rtbl_add_column_entry_by_id(i32, i32, i8*) #1

declare dso_local i32 @krb5_enctype_to_string(i32, i8 zeroext, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_unparse_name_fixed(i32, i32, i8*, i32) #1

declare dso_local i32 @krb5_format_time(i32, i32, i8*, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @krb5_warnx(i32, i8*) #1

declare dso_local i32 @rk_strpoolprintf(%struct.rk_strpool*, i8*, i8*, i8*) #1

declare dso_local i8* @rk_strpoolcollect(%struct.rk_strpool*) #1

declare dso_local i32 @krb5_kt_free_entry(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @krb5_kt_end_seq_get(i32, i32, i32*) #1

declare dso_local i32 @rtbl_format(i32, i32) #1

declare dso_local i32 @rtbl_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
