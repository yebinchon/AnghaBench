; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_open1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_open1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { %struct.archive_read_filter*, %struct.TYPE_9__, i32*, i32*, i32, %struct.TYPE_8__ }
%struct.archive_read_filter = type { i8*, %struct.archive_read_filter*, i32, i32 (%struct.archive_read_filter*, i32)*, i32, i32, i32, i32, i32, i32, %struct.archive_read*, i32* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32)*, i32, %struct.TYPE_7__*, i32 (%struct.TYPE_9__*, i32)*, i32* }
%struct.TYPE_7__ = type { i64, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"archive_read_open\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"No reader function provided to archive_read_open\00", align 1
@ARCHIVE_STATE_FATAL = common dso_local global i8* null, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@client_open_proxy = common dso_local global i32 0, align 4
@client_read_proxy = common dso_local global i32 0, align 4
@client_skip_proxy = common dso_local global i32 0, align 4
@client_seek_proxy = common dso_local global i32 0, align 4
@client_close_proxy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_STATE_HEADER = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_open1(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_read_filter*, align 8
  %6 = alloca %struct.archive_read_filter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  %10 = load %struct.archive*, %struct.archive** %3, align 8
  %11 = bitcast %struct.archive* %10 to %struct.archive_read*
  store %struct.archive_read* %11, %struct.archive_read** %4, align 8
  %12 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.archive*, %struct.archive** %3, align 8
  %14 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %15 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %16 = call i32 @archive_check_magic(%struct.archive* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %18 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %17, i32 0, i32 1
  %19 = call i32 @archive_clear_error(%struct.TYPE_9__* %18)
  %20 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %21 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %27 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %26, i32 0, i32 1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = call i32 @archive_set_error(%struct.TYPE_9__* %27, i32 %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** @ARCHIVE_STATE_FATAL, align 8
  %31 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %32 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %34, i32* %2, align 4
  br label %226

35:                                               ; preds = %1
  %36 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %37 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.TYPE_9__*, i32)* %39, null
  br i1 %40, label %41, label %96

41:                                               ; preds = %35
  %42 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %43 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %44, align 8
  %46 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %47 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %46, i32 0, i32 1
  %48 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %49 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %45(%struct.TYPE_9__* %47, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %41
  %59 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %60 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %61, align 8
  %63 = icmp ne i32 (%struct.TYPE_9__*, i32)* %62, null
  br i1 %63, label %64, label %93

64:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %89, %64
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %68 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ult i32 %66, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %65
  %73 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %74 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %75, align 8
  %77 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %78 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %77, i32 0, i32 1
  %79 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %80 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 %76(%struct.TYPE_9__* %78, i32 %87)
  br label %89

89:                                               ; preds = %72
  %90 = load i32, i32* %9, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %65

92:                                               ; preds = %65
  br label %93

93:                                               ; preds = %92, %58
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  br label %226

95:                                               ; preds = %41
  br label %96

96:                                               ; preds = %95, %35
  %97 = call %struct.archive_read_filter* @calloc(i32 1, i32 72)
  store %struct.archive_read_filter* %97, %struct.archive_read_filter** %5, align 8
  %98 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %99 = icmp eq %struct.archive_read_filter* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %101, i32* %2, align 4
  br label %226

102:                                              ; preds = %96
  %103 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %104 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %103, i32 0, i32 11
  store i32* null, i32** %104, align 8
  %105 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %106 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %105, i32 0, i32 1
  store %struct.archive_read_filter* null, %struct.archive_read_filter** %106, align 8
  %107 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %108 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %109 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %108, i32 0, i32 10
  store %struct.archive_read* %107, %struct.archive_read** %109, align 8
  %110 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %111 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %118 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @client_open_proxy, align 4
  %120 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %121 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %120, i32 0, i32 8
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @client_read_proxy, align 4
  %123 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %124 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %123, i32 0, i32 7
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @client_skip_proxy, align 4
  %126 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %127 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* @client_seek_proxy, align 4
  %129 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %130 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @client_close_proxy, align 4
  %132 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %133 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  %134 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %135 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %134, i32 0, i32 3
  store i32 (%struct.archive_read_filter*, i32)* @client_switch_proxy, i32 (%struct.archive_read_filter*, i32)** %135, align 8
  %136 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %137 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %136, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %137, align 8
  %138 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %139 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %140 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %142 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  store i64 0, i64* %146, align 8
  %147 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %148 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %147, i32 0, i32 0
  %149 = load %struct.archive_read_filter*, %struct.archive_read_filter** %148, align 8
  %150 = icmp ne %struct.archive_read_filter* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %102
  %152 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %153 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %172, label %156

156:                                              ; preds = %151, %102
  %157 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %158 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %159 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %158, i32 0, i32 0
  store %struct.archive_read_filter* %157, %struct.archive_read_filter** %159, align 8
  %160 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %161 = call i32 @choose_filters(%struct.archive_read* %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @ARCHIVE_WARN, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %156
  %166 = load i8*, i8** @ARCHIVE_STATE_FATAL, align 8
  %167 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %168 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  store i8* %166, i8** %169, align 8
  %170 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %170, i32* %2, align 4
  br label %226

171:                                              ; preds = %156
  br label %189

172:                                              ; preds = %151
  %173 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %174 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %173, i32 0, i32 0
  %175 = load %struct.archive_read_filter*, %struct.archive_read_filter** %174, align 8
  store %struct.archive_read_filter* %175, %struct.archive_read_filter** %6, align 8
  br label %176

176:                                              ; preds = %181, %172
  %177 = load %struct.archive_read_filter*, %struct.archive_read_filter** %6, align 8
  %178 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %177, i32 0, i32 1
  %179 = load %struct.archive_read_filter*, %struct.archive_read_filter** %178, align 8
  %180 = icmp ne %struct.archive_read_filter* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load %struct.archive_read_filter*, %struct.archive_read_filter** %6, align 8
  %183 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %182, i32 0, i32 1
  %184 = load %struct.archive_read_filter*, %struct.archive_read_filter** %183, align 8
  store %struct.archive_read_filter* %184, %struct.archive_read_filter** %6, align 8
  br label %176

185:                                              ; preds = %176
  %186 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %187 = load %struct.archive_read_filter*, %struct.archive_read_filter** %6, align 8
  %188 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %187, i32 0, i32 1
  store %struct.archive_read_filter* %186, %struct.archive_read_filter** %188, align 8
  br label %189

189:                                              ; preds = %185, %171
  %190 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %191 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %216, label %194

194:                                              ; preds = %189
  %195 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %196 = call i32 @choose_format(%struct.archive_read* %195)
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %7, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %194
  %200 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %201 = call i32 @close_filters(%struct.archive_read* %200)
  %202 = load i8*, i8** @ARCHIVE_STATE_FATAL, align 8
  %203 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %204 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  store i8* %202, i8** %205, align 8
  %206 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %206, i32* %2, align 4
  br label %226

207:                                              ; preds = %194
  %208 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %209 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %215 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %214, i32 0, i32 3
  store i32* %213, i32** %215, align 8
  br label %216

216:                                              ; preds = %207, %189
  %217 = load i8*, i8** @ARCHIVE_STATE_HEADER, align 8
  %218 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %219 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  store i8* %217, i8** %220, align 8
  %221 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %222 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %221, i32 0, i32 0
  %223 = load %struct.archive_read_filter*, %struct.archive_read_filter** %222, align 8
  %224 = call i32 @client_switch_proxy(%struct.archive_read_filter* %223, i32 0)
  %225 = load i32, i32* %8, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %216, %199, %165, %100, %93, %25
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_clear_error(%struct.TYPE_9__*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local %struct.archive_read_filter* @calloc(i32, i32) #1

declare dso_local i32 @client_switch_proxy(%struct.archive_read_filter*, i32) #1

declare dso_local i32 @choose_filters(%struct.archive_read*) #1

declare dso_local i32 @choose_format(%struct.archive_read*) #1

declare dso_local i32 @close_filters(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
