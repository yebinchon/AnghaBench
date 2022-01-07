; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@opterr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"a:I:Pp:C:S:t:scvVd\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"port %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"server\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"client\0A\00", align 1
@RPING_MIN_BUFSIZE = common dso_local global i32 0, align 4
@RPING_BUFSIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Invalid size %d (valid range is %zd to %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"size %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Invalid count %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"count %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"verbose\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"validate data\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"rping\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"rdma_create_event_channel\00", align 1
@errno = common dso_local global i32 0, align 4
@RDMA_PS_TCP = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"rdma_create_id\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"created cm_id %p\0A\00", align 1
@cm_thread = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"destroy cm_id %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rping_cb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = call %struct.rping_cb* @malloc(i32 56)
  store %struct.rping_cb* %10, %struct.rping_cb** %6, align 8
  %11 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %12 = icmp ne %struct.rping_cb* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %235

16:                                               ; preds = %2
  %17 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %18 = call i32 @memset(%struct.rping_cb* %17, i32 0, i32 56)
  %19 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %20 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load i32, i32* @IDLE, align 4
  %22 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %23 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %22, i32 0, i32 12
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %25 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %24, i32 0, i32 1
  store i32 64, i32* %25, align 4
  %26 = call i8* @htobe16(i32 7174)
  %27 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %28 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %27, i32 0, i32 8
  store i8* %26, i8** %28, align 8
  %29 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %30 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %29, i32 0, i32 11
  %31 = call i32 @sem_init(i32* %30, i32 0, i32 0)
  %32 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %33 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %32, i32 0, i32 10
  %34 = bitcast i32* %33 to %struct.sockaddr*
  %35 = call i32 @get_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.sockaddr* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %16
  br label %231

39:                                               ; preds = %16
  store i64 0, i64* @opterr, align 8
  br label %40

40:                                               ; preds = %148, %39
  %41 = load i32, i32* %4, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = call i32 @getopt(i32 %41, i8** %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %43, i32* %7, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %149

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %145 [
    i32 97, label %47
    i32 73, label %53
    i32 80, label %59
    i32 112, label %60
    i32 115, label %69
    i32 99, label %73
    i32 83, label %77
    i32 67, label %108
    i32 118, label %130
    i32 86, label %136
    i32 100, label %142
  ]

47:                                               ; preds = %45
  %48 = load i8*, i8** @optarg, align 8
  %49 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %50 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %49, i32 0, i32 10
  %51 = bitcast i32* %50 to %struct.sockaddr*
  %52 = call i32 @get_addr(i8* %48, %struct.sockaddr* %51)
  store i32 %52, i32* %8, align 4
  br label %148

53:                                               ; preds = %45
  %54 = load i8*, i8** @optarg, align 8
  %55 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %56 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %55, i32 0, i32 9
  %57 = bitcast i32* %56 to %struct.sockaddr*
  %58 = call i32 @get_addr(i8* %54, %struct.sockaddr* %57)
  store i32 %58, i32* %8, align 4
  br label %148

59:                                               ; preds = %45
  store i32 1, i32* %9, align 4
  br label %148

60:                                               ; preds = %45
  %61 = load i8*, i8** @optarg, align 8
  %62 = call i32 @atoi(i8* %61)
  %63 = call i8* @htobe16(i32 %62)
  %64 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %65 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @optarg, align 8
  %67 = call i32 @atoi(i8* %66)
  %68 = call i32 (i8*, ...) @DEBUG_LOG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %148

69:                                               ; preds = %45
  %70 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %71 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = call i32 (i8*, ...) @DEBUG_LOG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %148

73:                                               ; preds = %45
  %74 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %75 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = call i32 (i8*, ...) @DEBUG_LOG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %148

77:                                               ; preds = %45
  %78 = load i8*, i8** @optarg, align 8
  %79 = call i32 @atoi(i8* %78)
  %80 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %81 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %83 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RPING_MIN_BUFSIZE, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %94, label %87

87:                                               ; preds = %77
  %88 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %89 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @RPING_BUFSIZE, align 4
  %92 = sub nsw i32 %91, 1
  %93 = icmp sgt i32 %90, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %87, %77
  %95 = load i32, i32* @stderr, align 4
  %96 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %97 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RPING_MIN_BUFSIZE, align 4
  %100 = load i32, i32* @RPING_BUFSIZE, align 4
  %101 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* @EINVAL, align 4
  store i32 %102, i32* %8, align 4
  br label %107

103:                                              ; preds = %87
  %104 = load i8*, i8** @optarg, align 8
  %105 = call i32 @atoi(i8* %104)
  %106 = call i32 (i8*, ...) @DEBUG_LOG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %103, %94
  br label %148

108:                                              ; preds = %45
  %109 = load i8*, i8** @optarg, align 8
  %110 = call i32 @atoi(i8* %109)
  %111 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %112 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %114 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %108
  %118 = load i32, i32* @stderr, align 4
  %119 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %120 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @EINVAL, align 4
  store i32 %123, i32* %8, align 4
  br label %129

124:                                              ; preds = %108
  %125 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %126 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i8*, ...) @DEBUG_LOG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %124, %117
  br label %148

130:                                              ; preds = %45
  %131 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %132 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = call i32 (i8*, ...) @DEBUG_LOG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %148

136:                                              ; preds = %45
  %137 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %138 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = call i32 (i8*, ...) @DEBUG_LOG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %148

142:                                              ; preds = %45
  %143 = load i32, i32* @debug, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* @debug, align 4
  br label %148

145:                                              ; preds = %45
  %146 = call i32 @usage(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %147 = load i32, i32* @EINVAL, align 4
  store i32 %147, i32* %8, align 4
  br label %231

148:                                              ; preds = %142, %136, %130, %129, %107, %73, %69, %60, %59, %53, %47
  br label %40

149:                                              ; preds = %40
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %231

153:                                              ; preds = %149
  %154 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %155 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = call i32 @usage(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %160 = load i32, i32* @EINVAL, align 4
  store i32 %160, i32* %8, align 4
  br label %231

161:                                              ; preds = %153
  %162 = call i32 (...) @rdma_create_event_channel()
  %163 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %164 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  %165 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %166 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %161
  %170 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %171 = load i32, i32* @errno, align 4
  store i32 %171, i32* %8, align 4
  br label %231

172:                                              ; preds = %161
  %173 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %174 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %177 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %176, i32 0, i32 3
  %178 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %179 = load i32, i32* @RDMA_PS_TCP, align 4
  %180 = call i32 @rdma_create_id(i32 %175, i32* %177, %struct.rping_cb* %178, i32 %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %172
  %184 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %226

185:                                              ; preds = %172
  %186 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %187 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i8*, ...) @DEBUG_LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %188)
  %190 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %191 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %190, i32 0, i32 5
  %192 = load i32, i32* @cm_thread, align 4
  %193 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %194 = call i32 @pthread_create(i32* %191, i32* null, i32 %192, %struct.rping_cb* %193)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %185
  %198 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  br label %226

199:                                              ; preds = %185
  %200 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %201 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %199
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %209 = call i32 @rping_run_persistent_server(%struct.rping_cb* %208)
  store i32 %209, i32* %8, align 4
  br label %213

210:                                              ; preds = %204
  %211 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %212 = call i32 @rping_run_server(%struct.rping_cb* %211)
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %210, %207
  br label %217

214:                                              ; preds = %199
  %215 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %216 = call i32 @rping_run_client(%struct.rping_cb* %215)
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %214, %213
  %218 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %219 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (i8*, ...) @DEBUG_LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %220)
  %222 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %223 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @rdma_destroy_id(i32 %224)
  br label %226

226:                                              ; preds = %217, %197, %183
  %227 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %228 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @rdma_destroy_event_channel(i32 %229)
  br label %231

231:                                              ; preds = %226, %169, %158, %152, %145, %38
  %232 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %233 = call i32 @free(%struct.rping_cb* %232)
  %234 = load i32, i32* %8, align 4
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %231, %13
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local %struct.rping_cb* @malloc(i32) #1

declare dso_local i32 @memset(%struct.rping_cb*, i32, i32) #1

declare dso_local i8* @htobe16(i32) #1

declare dso_local i32 @sem_init(i32*, i32, i32) #1

declare dso_local i32 @get_addr(i8*, %struct.sockaddr*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @DEBUG_LOG(i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @rdma_create_event_channel(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rdma_create_id(i32, i32*, %struct.rping_cb*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.rping_cb*) #1

declare dso_local i32 @rping_run_persistent_server(%struct.rping_cb*) #1

declare dso_local i32 @rping_run_server(%struct.rping_cb*) #1

declare dso_local i32 @rping_run_client(%struct.rping_cb*) #1

declare dso_local i32 @rdma_destroy_id(i32) #1

declare dso_local i32 @rdma_destroy_event_channel(i32) #1

declare dso_local i32 @free(%struct.rping_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
