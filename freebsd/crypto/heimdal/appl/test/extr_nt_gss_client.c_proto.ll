; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_nt_gss_client.c_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_nt_gss_client.c_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.TYPE_12__ = type { i64, i8* }
%struct.sockaddr = type { i32 }

@GSS_C_NO_CONTEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@GSS_C_NT_HOSTBASED_SERVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Error importing name `%s@%s':\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"getsockname(%s)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"getpeername(%s)\00", align 1
@GSS_C_NO_CREDENTIAL = common dso_local global i32 0, align 4
@GSS_C_NO_OID = common dso_local global i32 0, align 4
@GSS_C_MUTUAL_FLAG = common dso_local global i32 0, align 4
@GSS_C_SEQUENCE_FLAG = common dso_local global i32 0, align 4
@GSS_C_NO_CHANNEL_BINDINGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"gss_init_sec_context\00", align 1
@GSS_C_NO_BUFFER = common dso_local global i32 0, align 4
@GSS_S_CONTINUE_NEEDED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"hej\00", align 1
@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"gss_get_mic\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"hemligt\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"gss_wrap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca %struct.TYPE_12__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__, align 8
  %20 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %21 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @asprintf(i8** %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23)
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = load i8*, i8** %20, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %3
  %31 = load i8*, i8** %20, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* @GSS_C_NT_HOSTBASED_SERVICE, align 4
  %34 = call i32 @gss_import_name(i32* %17, %struct.TYPE_12__* %19, i32 %33, i32* %18)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i64 @GSS_ERROR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i32, i32* %17, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 (i32, i32, i8*, ...) @gss_err(i32 1, i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* %41)
  br label %43

43:                                               ; preds = %38, %30
  store i32 4, i32* %9, align 4
  %44 = load i32, i32* %4, align 4
  %45 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %46 = call i64 @getsockname(i32 %44, %struct.sockaddr* %45, i32* %9)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, 4
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %43
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %48
  store i32 4, i32* %9, align 4
  %56 = load i32, i32* %4, align 4
  %57 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %58 = call i64 @getpeername(i32 %56, %struct.sockaddr* %57, i32* %9)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ne i64 %62, 4
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %55
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %64, %60
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %13, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %124, %67
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br i1 %75, label %76, label %125

76:                                               ; preds = %72
  %77 = load i32, i32* @GSS_C_NO_CREDENTIAL, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* @GSS_C_NO_OID, align 4
  %80 = load i32, i32* @GSS_C_MUTUAL_FLAG, align 4
  %81 = load i32, i32* @GSS_C_SEQUENCE_FLAG, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @GSS_C_NO_CHANNEL_BINDINGS, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %86 = call i32 @gss_init_sec_context(i32* %17, i32 %77, i64* %11, i32 %78, i32 %79, i32 %82, i32 0, i32 %83, %struct.TYPE_12__* %84, i32* null, %struct.TYPE_12__* %85, i32* null, i32* null)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = call i64 @GSS_ERROR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %76
  %91 = load i32, i32* %17, align 4
  %92 = call i32 (i32, i32, i8*, ...) @gss_err(i32 1, i32 %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %76
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %101 = call i32 @nt_write_token(i32 %99, %struct.TYPE_12__* %100)
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* %16, align 4
  %104 = call i64 @GSS_ERROR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %112 = call i32 @gss_delete_sec_context(i32* %17, i64* %11, i32 %111)
  br label %113

113:                                              ; preds = %110, %106
  br label %125

114:                                              ; preds = %102
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @GSS_S_CONTINUE_NEEDED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %122 = call i32 @nt_read_token(i32 %120, %struct.TYPE_12__* %121)
  br label %124

123:                                              ; preds = %114
  store i32 1, i32* %10, align 4
  br label %124

124:                                              ; preds = %123, %119
  br label %72

125:                                              ; preds = %113, %72
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  store i64 3, i64* %127, align 8
  %128 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = load i64, i64* %11, align 8
  %132 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %135 = call i32 @gss_get_mic(i32* %17, i64 %131, i32 %132, %struct.TYPE_12__* %133, %struct.TYPE_12__* %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = call i64 @GSS_ERROR(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %125
  %140 = load i32, i32* %17, align 4
  %141 = call i32 (i32, i32, i8*, ...) @gss_err(i32 1, i32 %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %125
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %145 = call i32 @nt_write_token(i32 %143, %struct.TYPE_12__* %144)
  %146 = load i32, i32* %4, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %148 = call i32 @nt_write_token(i32 %146, %struct.TYPE_12__* %147)
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  store i64 7, i64* %150, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %152, align 8
  %153 = load i64, i64* %11, align 8
  %154 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %157 = call i32 @gss_wrap(i32* %17, i64 %153, i32 1, i32 %154, %struct.TYPE_12__* %155, i32* null, %struct.TYPE_12__* %156)
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %16, align 4
  %159 = call i64 @GSS_ERROR(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %142
  %162 = load i32, i32* %17, align 4
  %163 = call i32 (i32, i32, i8*, ...) @gss_err(i32 1, i32 %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %142
  %165 = load i32, i32* %4, align 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %167 = call i32 @nt_write_token(i32 %165, %struct.TYPE_12__* %166)
  ret i32 0
}

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @gss_import_name(i32*, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local i64 @GSS_ERROR(i32) #1

declare dso_local i32 @gss_err(i32, i32, i8*, ...) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @gss_init_sec_context(i32*, i32, i64*, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @nt_write_token(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @gss_delete_sec_context(i32*, i64*, i32) #1

declare dso_local i32 @nt_read_token(i32, %struct.TYPE_12__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @gss_get_mic(i32*, i64, i32, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @gss_wrap(i32*, i64, i32, i32, %struct.TYPE_12__*, i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
