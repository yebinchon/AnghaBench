; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_prop_conflict_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_prop_conflict_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_31__ = type { i8*, i8*, i32 }
%struct.TYPE_29__ = type { i32 }

@svn_diff_file_ignore_space_none = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"<<<<<<< (local property value)\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c">>>>>>> (incoming 'changed to' value)\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"||||||| (incoming 'changed from' value)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"=======\00", align 1
@svn_diff_conflict_display_modified_original_latest = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"Local property value:\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Cannot display: property value is binary data\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Incoming property value:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_30__**, i8*, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32, i8*, i32*, i32*)* @prop_conflict_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @prop_conflict_new(%struct.TYPE_30__** %0, i8* %1, %struct.TYPE_30__* %2, %struct.TYPE_30__* %3, %struct.TYPE_30__* %4, %struct.TYPE_30__* %5, i32 %6, i8* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_30__**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_31__*, align 8
  %24 = alloca %struct.TYPE_29__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca %struct.TYPE_30__*, align 8
  %35 = alloca %struct.TYPE_30__*, align 8
  %36 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_30__** %0, %struct.TYPE_30__*** %12, align 8
  store i8* %1, i8** %13, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %14, align 8
  store %struct.TYPE_30__* %3, %struct.TYPE_30__** %15, align 8
  store %struct.TYPE_30__* %4, %struct.TYPE_30__** %16, align 8
  store %struct.TYPE_30__* %5, %struct.TYPE_30__** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %42 = load i32*, i32** %21, align 8
  %43 = call %struct.TYPE_29__* @generate_conflict_message(i8* %37, %struct.TYPE_30__* %38, %struct.TYPE_30__* %39, %struct.TYPE_30__* %40, %struct.TYPE_30__* %41, i32* %42)
  store %struct.TYPE_29__* %43, %struct.TYPE_29__** %24, align 8
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %45 = icmp eq %struct.TYPE_30__* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %10
  %47 = load i32*, i32** %21, align 8
  %48 = call %struct.TYPE_30__* @svn_string_create_empty(i32* %47)
  store %struct.TYPE_30__* %48, %struct.TYPE_30__** %15, align 8
  br label %49

49:                                               ; preds = %46, %10
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %51 = icmp eq %struct.TYPE_30__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32*, i32** %21, align 8
  %54 = call %struct.TYPE_30__* @svn_string_create_empty(i32* %53)
  store %struct.TYPE_30__* %54, %struct.TYPE_30__** %16, align 8
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %57 = icmp eq %struct.TYPE_30__* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32*, i32** %21, align 8
  %60 = call %struct.TYPE_30__* @svn_string_create_empty(i32* %59)
  store %struct.TYPE_30__* %60, %struct.TYPE_30__** %17, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @svn_io_is_binary_data(i32 %64, i32 %67)
  store i64 %68, i64* %25, align 8
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @svn_io_is_binary_data(i32 %71, i32 %74)
  store i64 %75, i64* %26, align 8
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @svn_io_is_binary_data(i32 %78, i32 %81)
  store i64 %82, i64* %27, align 8
  %83 = load i64, i64* %25, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %172, label %85

85:                                               ; preds = %61
  %86 = load i64, i64* %26, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %172, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %27, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %172, label %91

91:                                               ; preds = %88
  %92 = load i32*, i32** %21, align 8
  %93 = call %struct.TYPE_31__* @svn_diff_file_options_create(i32* %92)
  store %struct.TYPE_31__* %93, %struct.TYPE_31__** %23, align 8
  %94 = load i32, i32* @svn_diff_file_ignore_space_none, align 4
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i8*, i8** @FALSE, align 8
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** @FALSE, align 8
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %107 = load i32*, i32** %21, align 8
  %108 = call i32 @svn_diff_mem_string_diff3(i32** %22, %struct.TYPE_30__* %103, %struct.TYPE_30__* %104, %struct.TYPE_30__* %105, %struct.TYPE_31__* %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load i32*, i32** %22, align 8
  %111 = call i64 @svn_diff_contains_conflicts(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %171

113:                                              ; preds = %91
  %114 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* %114, i8** %30, align 8
  %115 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i8* %115, i8** %31, align 8
  %116 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i8* %116, i8** %32, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %33, align 8
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %21, align 8
  %121 = call i32 @svn_utf_cstring_from_utf8_fuzzy(i32 %119, i32* %120)
  %122 = load i32*, i32** %21, align 8
  %123 = call %struct.TYPE_30__* @svn_string_create(i32 %121, i32* %122)
  store %struct.TYPE_30__* %123, %struct.TYPE_30__** %34, align 8
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %21, align 8
  %128 = call i32 @svn_utf_cstring_from_utf8_fuzzy(i32 %126, i32* %127)
  %129 = load i32*, i32** %21, align 8
  %130 = call %struct.TYPE_30__* @svn_string_create(i32 %128, i32* %129)
  store %struct.TYPE_30__* %130, %struct.TYPE_30__** %35, align 8
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %21, align 8
  %135 = call i32 @svn_utf_cstring_from_utf8_fuzzy(i32 %133, i32* %134)
  %136 = load i32*, i32** %21, align 8
  %137 = call %struct.TYPE_30__* @svn_string_create(i32 %135, i32* %136)
  store %struct.TYPE_30__* %137, %struct.TYPE_30__** %36, align 8
  %138 = load i32, i32* @svn_diff_conflict_display_modified_original_latest, align 4
  store i32 %138, i32* %29, align 4
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %140 = load i32*, i32** %21, align 8
  %141 = call i32* @svn_stream_from_stringbuf(%struct.TYPE_29__* %139, i32* %140)
  store i32* %141, i32** %28, align 8
  %142 = load i32*, i32** %28, align 8
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @svn_stream_skip(i32* %142, i32 %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  %148 = load i32*, i32** %28, align 8
  %149 = load i32*, i32** %22, align 8
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %34, align 8
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %36, align 8
  %153 = load i8*, i8** %32, align 8
  %154 = load i8*, i8** %30, align 8
  %155 = load i8*, i8** %31, align 8
  %156 = load i8*, i8** %33, align 8
  %157 = load i32, i32* %29, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i8*, i8** %19, align 8
  %160 = load i32*, i32** %21, align 8
  %161 = call i32 @svn_diff_mem_string_output_merge3(i32* %148, i32* %149, %struct.TYPE_30__* %150, %struct.TYPE_30__* %151, %struct.TYPE_30__* %152, i8* %153, i8* %154, i8* %155, i8* %156, i32 %157, i32 %158, i8* %159, i32* %160)
  %162 = call i32 @SVN_ERR(i32 %161)
  %163 = load i32*, i32** %28, align 8
  %164 = call i32 @svn_stream_close(i32* %163)
  %165 = call i32 @SVN_ERR(i32 %164)
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %167 = load i32*, i32** %20, align 8
  %168 = call %struct.TYPE_30__* @svn_string_create_from_buf(%struct.TYPE_29__* %166, i32* %167)
  %169 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %12, align 8
  store %struct.TYPE_30__* %168, %struct.TYPE_30__** %169, align 8
  %170 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %170, i32** %11, align 8
  br label %232

171:                                              ; preds = %91
  br label %172

172:                                              ; preds = %171, %88, %85, %61
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %199

177:                                              ; preds = %172
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %179 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %180 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_29__* %178, i8* %179)
  %181 = load i64, i64* %26, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %185 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %186 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_29__* %184, i8* %185)
  br label %196

187:                                              ; preds = %177
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_29__* %188, i32 %191, i32 %194)
  br label %196

196:                                              ; preds = %187, %183
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %198 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_29__* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %199

199:                                              ; preds = %196, %172
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %226

204:                                              ; preds = %199
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %206 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %207 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_29__* %205, i8* %206)
  %208 = load i64, i64* %27, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %212 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %213 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_29__* %211, i8* %212)
  br label %223

214:                                              ; preds = %204
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %217 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_29__* %215, i32 %218, i32 %221)
  br label %223

223:                                              ; preds = %214, %210
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %225 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_29__* %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %226

226:                                              ; preds = %223, %199
  %227 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %228 = load i32*, i32** %20, align 8
  %229 = call %struct.TYPE_30__* @svn_string_create_from_buf(%struct.TYPE_29__* %227, i32* %228)
  %230 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %12, align 8
  store %struct.TYPE_30__* %229, %struct.TYPE_30__** %230, align 8
  %231 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %231, i32** %11, align 8
  br label %232

232:                                              ; preds = %226, %113
  %233 = load i32*, i32** %11, align 8
  ret i32* %233
}

declare dso_local %struct.TYPE_29__* @generate_conflict_message(i8*, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32*) #1

declare dso_local %struct.TYPE_30__* @svn_string_create_empty(i32*) #1

declare dso_local i64 @svn_io_is_binary_data(i32, i32) #1

declare dso_local %struct.TYPE_31__* @svn_diff_file_options_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_diff_mem_string_diff3(i32**, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_31__*, i32*) #1

declare dso_local i64 @svn_diff_contains_conflicts(i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_30__* @svn_string_create(i32, i32*) #1

declare dso_local i32 @svn_utf_cstring_from_utf8_fuzzy(i32, i32*) #1

declare dso_local i32* @svn_stream_from_stringbuf(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @svn_stream_skip(i32*, i32) #1

declare dso_local i32 @svn_diff_mem_string_output_merge3(i32*, i32*, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local %struct.TYPE_30__* @svn_string_create_from_buf(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @svn_stringbuf_appendbytes(%struct.TYPE_29__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
