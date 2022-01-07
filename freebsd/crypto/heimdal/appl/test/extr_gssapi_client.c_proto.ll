; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_gssapi_client.c_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_gssapi_client.c_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i16, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i64, i8* }
%struct.sockaddr = type { i32 }

@GSS_C_NO_CONTEXT = common dso_local global i64 0, align 8
@GSS_C_NO_CREDENTIAL = common dso_local global i32 0, align 4
@mech = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"malloc - out of memory\00", align 1
@GSS_C_NT_HOSTBASED_SERVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Error importing name `%s@%s':\0A\00", align 1
@password = common dso_local global i8* null, align 8
@GSS_C_NO_NAME = common dso_local global i32 0, align 4
@GSS_C_INDEFINITE = common dso_local global i32 0, align 4
@GSS_C_NO_OID_SET = common dso_local global i32 0, align 4
@GSS_C_INITIATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Error acquiring default initiator credentials\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"getsockname(%s)\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"getpeername(%s)\00", align 1
@GSS_C_MUTUAL_FLAG = common dso_local global i32 0, align 4
@GSS_C_SEQUENCE_FLAG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"gss_init_sec_context\00", align 1
@GSS_C_NO_BUFFER = common dso_local global i32 0, align 4
@GSS_S_CONTINUE_NEEDED = common dso_local global i32 0, align 4
@fork_flag = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"gss_export_sec_context\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"gss_import_sec_context\00", align 1
@GSS_C_AF_INET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__, align 8
  %15 = alloca %struct.TYPE_20__, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_20__, align 8
  %22 = alloca [4 x i32], align 16
  %23 = alloca [4 x i32], align 16
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_20__, align 8
  %27 = alloca i64, align 8
  %28 = alloca [2 x i32], align 4
  %29 = alloca %struct.TYPE_20__, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_20__, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %32 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  store i64 %32, i64* %12, align 8
  %33 = load i32, i32* @GSS_C_NO_CREDENTIAL, align 4
  store i32 %33, i32* %13, align 4
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %17, align 8
  %34 = load i32, i32* @mech, align 4
  %35 = call i32 @select_mech(i32 %34)
  store i32 %35, i32* %24, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @asprintf(i8** %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %37)
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load i8*, i8** %25, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %3
  %45 = load i8*, i8** %25, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* @GSS_C_NT_HOSTBASED_SERVICE, align 4
  %48 = call i32 @gss_import_name(i32* %19, %struct.TYPE_20__* %21, i32 %47, i32* %20)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = call i64 @GSS_ERROR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i32, i32* %19, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 (i32, i32, i8*, ...) @gss_err(i32 1, i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %54, i8* %55)
  br label %57

57:                                               ; preds = %52, %44
  %58 = load i8*, i8** @password, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load i8*, i8** @password, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  store i8* %61, i8** %62, align 8
  %63 = load i8*, i8** @password, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* @GSS_C_NO_NAME, align 4
  %67 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %68 = load i32, i32* @GSS_C_NO_OID_SET, align 4
  %69 = load i32, i32* @GSS_C_INITIATE, align 4
  %70 = call i32 @gss_acquire_cred_with_password(i32* %19, i32 %66, %struct.TYPE_20__* %26, i32 %67, i32 %68, i32 %69, i32* %13, i32* null, i32* null)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = call i64 @GSS_ERROR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %60
  %75 = load i32, i32* %19, align 4
  %76 = call i32 (i32, i32, i8*, ...) @gss_err(i32 1, i32 %75, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %60
  br label %78

78:                                               ; preds = %77, %57
  store i32 8, i32* %10, align 4
  %79 = load i32, i32* %5, align 4
  %80 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %81 = call i64 @getsockname(i32 %79, %struct.sockaddr* %80, i32* %10)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ugt i64 %85, 8
  br i1 %86, label %87, label %90

87:                                               ; preds = %83, %78
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %87, %83
  store i32 8, i32* %10, align 4
  %91 = load i32, i32* %5, align 4
  %92 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %93 = call i64 @getpeername(i32 %91, %struct.sockaddr* %92, i32* %10)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ugt i64 %97, 8
  br i1 %98, label %99, label %102

99:                                               ; preds = %95, %90
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %99, %95
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %158, %102
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br i1 %110, label %111, label %159

111:                                              ; preds = %107
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* @GSS_C_MUTUAL_FLAG, align 4
  %116 = load i32, i32* @GSS_C_SEQUENCE_FLAG, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %120 = call i32 @gss_init_sec_context(i32* %19, i32 %112, i64* %12, i32 %113, i32 %114, i32 %117, i32 0, i32* null, %struct.TYPE_20__* %118, i32* null, %struct.TYPE_20__* %119, i32* null, i32* null)
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %18, align 4
  %122 = call i64 @GSS_ERROR(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %111
  %125 = load i32, i32* %19, align 4
  %126 = call i32 (i32, i32, i8*, ...) @gss_err(i32 1, i32 %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %111
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %135 = call i32 @write_token(i32 %133, %struct.TYPE_20__* %134)
  br label %136

136:                                              ; preds = %132, %127
  %137 = load i32, i32* %18, align 4
  %138 = call i64 @GSS_ERROR(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i64, i64* %12, align 8
  %142 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %146 = call i32 @gss_delete_sec_context(i32* %19, i64* %12, i32 %145)
  br label %147

147:                                              ; preds = %144, %140
  br label %159

148:                                              ; preds = %136
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* @GSS_S_CONTINUE_NEEDED, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %156 = call i32 @read_token(i32 %154, %struct.TYPE_20__* %155)
  br label %158

157:                                              ; preds = %148
  store i32 1, i32* %11, align 4
  br label %158

158:                                              ; preds = %157, %153
  br label %107

159:                                              ; preds = %147, %107
  %160 = load i64, i64* @fork_flag, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %212

162:                                              ; preds = %159
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  %164 = call i64 @pipe(i32* %163)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %162
  %169 = call i64 (...) @fork()
  store i64 %169, i64* %27, align 8
  %170 = load i64, i64* %27, align 8
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %168
  %175 = load i64, i64* %27, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %174
  %178 = call i32 @gss_export_sec_context(i32* %19, i64* %12, %struct.TYPE_20__* %29)
  store i32 %178, i32* %18, align 4
  %179 = load i32, i32* %18, align 4
  %180 = call i64 @GSS_ERROR(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i32, i32* %19, align 4
  %184 = call i32 (i32, i32, i8*, ...) @gss_err(i32 1, i32 %183, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %177
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @write_token(i32 %187, %struct.TYPE_20__* %29)
  %189 = call i32 @exit(i32 0) #3
  unreachable

190:                                              ; preds = %174
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @close(i32 %192)
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @read_token(i32 %195, %struct.TYPE_20__* %31)
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @close(i32 %198)
  %200 = call i32 @gss_import_sec_context(i32* %19, %struct.TYPE_20__* %31, i64* %30)
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %18, align 4
  %202 = call i64 @GSS_ERROR(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %190
  %205 = load i32, i32* %19, align 4
  %206 = call i32 (i32, i32, i8*, ...) @gss_err(i32 1, i32 %205, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %207

207:                                              ; preds = %204, %190
  %208 = call i32 @gss_release_buffer(i32* %19, %struct.TYPE_20__* %31)
  %209 = load i32, i32* %5, align 4
  %210 = load i64, i64* %30, align 8
  %211 = call i32 @do_trans(i32 %209, i64 %210)
  store i32 %211, i32* %4, align 4
  br label %216

212:                                              ; preds = %159
  %213 = load i32, i32* %5, align 4
  %214 = load i64, i64* %12, align 8
  %215 = call i32 @do_trans(i32 %213, i64 %214)
  store i32 %215, i32* %4, align 4
  br label %216

216:                                              ; preds = %212, %207
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @select_mech(i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @gss_import_name(i32*, %struct.TYPE_20__*, i32, i32*) #1

declare dso_local i64 @GSS_ERROR(i32) #1

declare dso_local i32 @gss_err(i32, i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @gss_acquire_cred_with_password(i32*, i32, %struct.TYPE_20__*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @gss_init_sec_context(i32*, i32, i64*, i32, i32, i32, i32, i32*, %struct.TYPE_20__*, i32*, %struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32 @write_token(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @gss_delete_sec_context(i32*, i64*, i32) #1

declare dso_local i32 @read_token(i32, %struct.TYPE_20__*) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @gss_export_sec_context(i32*, i64*, %struct.TYPE_20__*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @gss_import_sec_context(i32*, %struct.TYPE_20__*, i64*) #1

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @do_trans(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
