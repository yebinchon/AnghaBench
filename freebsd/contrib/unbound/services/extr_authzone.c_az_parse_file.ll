; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_parse_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.sldns_file_parse_state = type { i32 }
%struct.config_file = type { i8* }

@LDNS_WIREPARSE_ERR_INCLUDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"$INCLUDE \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"$INCLUDE\09\00", align 1
@MAX_INCLUDE_DEPTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s:%d max include depthexceeded\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"opening $INCLUDE %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"%s:%d cannot open include file %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"%s:%d cannot parse include file %s\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"done with $INCLUDE %s\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"parse error %s %d:%d: %s\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"%s:%d cannot insert RR of type %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, i32*, i32*, i64, %struct.sldns_file_parse_state*, i8*, i32, %struct.config_file*)* @az_parse_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_parse_file(%struct.auth_zone* %0, i32* %1, i32* %2, i64 %3, %struct.sldns_file_parse_state* %4, i8* %5, i32 %6, %struct.config_file* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.auth_zone*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sldns_file_parse_state*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.config_file*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca [17 x i8], align 16
  store %struct.auth_zone* %0, %struct.auth_zone** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.sldns_file_parse_state* %4, %struct.sldns_file_parse_state** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.config_file* %7, %struct.config_file** %17, align 8
  %25 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %14, align 8
  %26 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %212, %191, %174, %8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @feof(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %213

32:                                               ; preds = %27
  %33 = load i64, i64* %13, align 8
  store i64 %33, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %14, align 8
  %37 = call i32 @sldns_fp2wire_rr_buf(i32* %34, i32* %35, i64* %18, i64* %19, %struct.sldns_file_parse_state* %36)
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %20, align 4
  %39 = load i32, i32* @LDNS_WIREPARSE_ERR_INCLUDE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %175

41:                                               ; preds = %32
  %42 = load i64, i64* %18, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %175

44:                                               ; preds = %41
  %45 = load i32*, i32** %12, align 8
  %46 = bitcast i32* %45 to i8*
  %47 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %12, align 8
  %51 = bitcast i32* %50 to i8*
  %52 = call i64 @strncmp(i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %174

54:                                               ; preds = %49, %44
  %55 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %14, align 8
  %56 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %22, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = getelementptr inbounds i8, i8* %59, i64 8
  store i8* %60, i8** %23, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @MAX_INCLUDE_DEPTH, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %54
  %65 = load i8*, i8** %15, align 8
  %66 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %14, align 8
  %67 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %65, i32 %68)
  store i32 0, i32* %9, align 4
  br label %214

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %83, %70
  %72 = load i8*, i8** %23, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %23, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 9
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i1 [ true, %71 ], [ %80, %76 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i8*, i8** %23, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %23, align 8
  br label %71

86:                                               ; preds = %81
  %87 = load %struct.config_file*, %struct.config_file** %17, align 8
  %88 = getelementptr inbounds %struct.config_file, %struct.config_file* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %118

91:                                               ; preds = %86
  %92 = load %struct.config_file*, %struct.config_file** %17, align 8
  %93 = getelementptr inbounds %struct.config_file, %struct.config_file* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %91
  %100 = load i8*, i8** %23, align 8
  %101 = load %struct.config_file*, %struct.config_file** %17, align 8
  %102 = getelementptr inbounds %struct.config_file, %struct.config_file* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.config_file*, %struct.config_file** %17, align 8
  %105 = getelementptr inbounds %struct.config_file, %struct.config_file* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = call i64 @strncmp(i8* %100, i8* %103, i32 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %99
  %111 = load %struct.config_file*, %struct.config_file** %17, align 8
  %112 = getelementptr inbounds %struct.config_file, %struct.config_file* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @strlen(i8* %113)
  %115 = load i8*, i8** %23, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %23, align 8
  br label %118

118:                                              ; preds = %110, %99, %91, %86
  %119 = load i8*, i8** %23, align 8
  %120 = call i8* @strdup(i8* %119)
  store i8* %120, i8** %23, align 8
  %121 = load i8*, i8** %23, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %214

125:                                              ; preds = %118
  %126 = load i32, i32* @VERB_ALGO, align 4
  %127 = load i8*, i8** %23, align 8
  %128 = call i32 @verbose(i32 %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %127)
  %129 = load i8*, i8** %23, align 8
  %130 = call i32* @fopen(i8* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %130, i32** %21, align 8
  %131 = load i32*, i32** %21, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %142, label %133

133:                                              ; preds = %125
  %134 = load i8*, i8** %15, align 8
  %135 = load i32, i32* %22, align 4
  %136 = load i8*, i8** %23, align 8
  %137 = load i32, i32* @errno, align 4
  %138 = call i32 @strerror(i32 %137)
  %139 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %134, i32 %135, i8* %136, i32 %138)
  %140 = load i8*, i8** %23, align 8
  %141 = call i32 @free(i8* %140)
  store i32 0, i32* %9, align 4
  br label %214

142:                                              ; preds = %125
  %143 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %144 = load i32*, i32** %21, align 8
  %145 = load i32*, i32** %12, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %14, align 8
  %148 = load i8*, i8** %23, align 8
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  %151 = load %struct.config_file*, %struct.config_file** %17, align 8
  %152 = call i32 @az_parse_file(%struct.auth_zone* %143, i32* %144, i32* %145, i64 %146, %struct.sldns_file_parse_state* %147, i8* %148, i32 %150, %struct.config_file* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %142
  %155 = load i8*, i8** %15, align 8
  %156 = load i32, i32* %22, align 4
  %157 = load i8*, i8** %23, align 8
  %158 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %155, i32 %156, i8* %157)
  %159 = load i32*, i32** %21, align 8
  %160 = call i32 @fclose(i32* %159)
  %161 = load i8*, i8** %23, align 8
  %162 = call i32 @free(i8* %161)
  store i32 0, i32* %9, align 4
  br label %214

163:                                              ; preds = %142
  %164 = load i32*, i32** %21, align 8
  %165 = call i32 @fclose(i32* %164)
  %166 = load i32, i32* @VERB_ALGO, align 4
  %167 = load i8*, i8** %23, align 8
  %168 = call i32 @verbose(i32 %166, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %167)
  %169 = load i8*, i8** %23, align 8
  %170 = call i32 @free(i8* %169)
  %171 = load i32, i32* %22, align 4
  %172 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %14, align 8
  %173 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %163, %49
  br label %27

175:                                              ; preds = %41, %32
  %176 = load i32, i32* %20, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %175
  %179 = load i8*, i8** %15, align 8
  %180 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %14, align 8
  %181 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %20, align 4
  %184 = call i32 @LDNS_WIREPARSE_OFFSET(i32 %183)
  %185 = load i32, i32* %20, align 4
  %186 = call i32 @sldns_get_errorstr_parse(i32 %185)
  %187 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %179, i32 %182, i32 %184, i32 %186)
  store i32 0, i32* %9, align 4
  br label %214

188:                                              ; preds = %175
  %189 = load i64, i64* %18, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %27

192:                                              ; preds = %188
  %193 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %194 = load i32*, i32** %12, align 8
  %195 = load i64, i64* %18, align 8
  %196 = load i64, i64* %19, align 8
  %197 = call i32 @az_insert_rr(%struct.auth_zone* %193, i32* %194, i64 %195, i64 %196, i32* null)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %212, label %199

199:                                              ; preds = %192
  %200 = load i32*, i32** %12, align 8
  %201 = load i64, i64* %18, align 8
  %202 = load i64, i64* %19, align 8
  %203 = call i32 @sldns_wirerr_get_type(i32* %200, i64 %201, i64 %202)
  %204 = getelementptr inbounds [17 x i8], [17 x i8]* %24, i64 0, i64 0
  %205 = call i32 @sldns_wire2str_type_buf(i32 %203, i8* %204, i32 17)
  %206 = load i8*, i8** %15, align 8
  %207 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %14, align 8
  %208 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds [17 x i8], [17 x i8]* %24, i64 0, i64 0
  %211 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %206, i32 %209, i8* %210)
  store i32 0, i32* %9, align 4
  br label %214

212:                                              ; preds = %192
  br label %27

213:                                              ; preds = %27
  store i32 1, i32* %9, align 4
  br label %214

214:                                              ; preds = %213, %199, %178, %154, %133, %123, %64
  %215 = load i32, i32* %9, align 4
  ret i32 %215
}

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @sldns_fp2wire_rr_buf(i32*, i32*, i64*, i64*, %struct.sldns_file_parse_state*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @verbose(i32, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @LDNS_WIREPARSE_OFFSET(i32) #1

declare dso_local i32 @sldns_get_errorstr_parse(i32) #1

declare dso_local i32 @az_insert_rr(%struct.auth_zone*, i32*, i64, i64, i32*) #1

declare dso_local i32 @sldns_wire2str_type_buf(i32, i8*, i32) #1

declare dso_local i32 @sldns_wirerr_get_type(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
