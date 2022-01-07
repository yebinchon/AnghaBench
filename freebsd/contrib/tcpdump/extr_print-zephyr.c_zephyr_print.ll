; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-zephyr.c_zephyr_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-zephyr.c_zephyr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_packet = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i64, i64, i64, i8*, i8*, i64, i64, i8* }

@.str = private unnamed_addr constant [5 x i8] c"ZEPH\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" zephyr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"0.2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" v%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@z_types = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"type %d\00", align 1
@Z_PACKET_SERVACK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"SENT\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"USER_LOCATE\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"USER_HIDE\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" hide\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"USER_UNHIDE\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c" unhide\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c" locate %s\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"ZEPHYR_ADMIN\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c" zephyr-admin %s\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"ZEPHYR_CTL\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"CLIENT\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"SUBSCRIBE\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"SUBSCRIBE_NODEFS\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"UNSUBSCRIBE\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c" %ssub%s\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"-nodefs\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"GIMME\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c" ret\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"GIMMEDEFS\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" gimme-defs\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"CLEARSUB\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c" clear-subs\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"HM\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"REALM\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"ADD_SUBSCRIBE\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c" realm add-subs\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"REQ_SUBSCRIBE\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c" realm req-subs\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"RLM_SUBSCRIBE\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c" realm rlm-sub\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"RLM_UNSUBSCRIBE\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c" realm rlm-unsub\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"HM_CTL\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c" hm_ctl %s\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"HM_STAT\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"HMST_CLIENT\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"GIMMESTATS\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c" get-client-stats\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"WG_CTL\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c" wg_ctl %s\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"LOGIN\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"USER_FLUSH\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c" flush_locs\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"OPSTAFF\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"REALM-VISIBLE\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"REALM-ANNOUNCED\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"NET-VISIBLE\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"NET-ANNOUNCED\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c" set-exposure %s\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c" to %s\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c" op %s\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c" [|zephyr] (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zephyr_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_packet, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to i8*
  store i8* %18, i8** %8, align 8
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 1
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 2
  store i8* null, i8** %22, align 8
  %23 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  store i8* null, i8** %23, align 8
  %24 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 4
  store i8* null, i8** %24, align 8
  %25 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 5
  store i8* null, i8** %25, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %26, i8** %8, i32* %9, i32* %12)
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %10, align 8
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %800

33:                                               ; preds = %3
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 1, i32* %11, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 6
  store i8* %41, i8** %42, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %806

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 6
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strncmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %806

53:                                               ; preds = %47
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %54, i8** %8, i32* %9, i32* %12)
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %10, align 8
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %800

61:                                               ; preds = %53
  %62 = load i8*, i8** %10, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load i8*, i8** %10, align 8
  %70 = call i64 @strtol(i8* %69, i8** null, i32 16)
  %71 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 7
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %73, i8** %8, i32* %9, i32* %12)
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %10, align 8
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %800

80:                                               ; preds = %72
  %81 = load i8*, i8** %10, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  store i32 1, i32* %11, align 4
  br label %84

84:                                               ; preds = %83, %80
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** %10, align 8
  %89 = call i64 @strtol(i8* %88, i8** null, i32 16)
  %90 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 0
  store i64 %89, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %92, i8** %8, i32* %9, i32* %12)
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %10, align 8
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %800

99:                                               ; preds = %91
  %100 = load i8*, i8** %10, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 1, i32* %11, align 4
  br label %103

103:                                              ; preds = %102, %99
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 8
  store i8* %107, i8** %108, align 8
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %110, i8** %8, i32* %9, i32* %12)
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  store i8* %113, i8** %10, align 8
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %800

117:                                              ; preds = %109
  %118 = load i8*, i8** %10, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  store i32 1, i32* %11, align 4
  br label %121

121:                                              ; preds = %120, %117
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = load i8*, i8** %10, align 8
  %126 = call i64 @strtol(i8* %125, i8** null, i32 16)
  %127 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 9
  store i64 %126, i64* %127, align 8
  br label %128

128:                                              ; preds = %124, %121
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %129, i8** %8, i32* %9, i32* %12)
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  store i8* %132, i8** %10, align 8
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %800

136:                                              ; preds = %128
  %137 = load i8*, i8** %10, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  store i32 1, i32* %11, align 4
  br label %140

140:                                              ; preds = %139, %136
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = load i8*, i8** %10, align 8
  %145 = call i64 @strtol(i8* %144, i8** null, i32 16)
  %146 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 10
  store i64 %145, i64* %146, align 8
  br label %147

147:                                              ; preds = %143, %140
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %148, i8** %8, i32* %9, i32* %12)
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  store i8* %151, i8** %10, align 8
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %800

155:                                              ; preds = %147
  %156 = load i8*, i8** %10, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  store i32 1, i32* %11, align 4
  br label %159

159:                                              ; preds = %158, %155
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = load i8*, i8** %10, align 8
  %164 = call i64 @strtol(i8* %163, i8** null, i32 16)
  %165 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 11
  store i64 %164, i64* %165, align 8
  br label %166

166:                                              ; preds = %162, %159
  %167 = load i32*, i32** %4, align 8
  %168 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %167, i8** %8, i32* %9, i32* %12)
  %169 = sext i32 %168 to i64
  %170 = inttoptr i64 %169 to i8*
  store i8* %170, i8** %10, align 8
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %800

174:                                              ; preds = %166
  %175 = load i8*, i8** %10, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  store i32 1, i32* %11, align 4
  br label %178

178:                                              ; preds = %177, %174
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i8*, i8** %10, align 8
  %183 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 12
  store i8* %182, i8** %183, align 8
  br label %184

184:                                              ; preds = %181, %178
  %185 = load i32*, i32** %4, align 8
  %186 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %185, i8** %8, i32* %9, i32* %12)
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  store i8* %188, i8** %10, align 8
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %800

192:                                              ; preds = %184
  %193 = load i8*, i8** %10, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  store i32 1, i32* %11, align 4
  br label %196

196:                                              ; preds = %195, %192
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = load i8*, i8** %10, align 8
  %201 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 1
  store i8* %200, i8** %201, align 8
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %203, i8** %8, i32* %9, i32* %12)
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to i8*
  store i8* %206, i8** %10, align 8
  %207 = load i32, i32* %12, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  br label %800

210:                                              ; preds = %202
  %211 = load i8*, i8** %10, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %210
  store i32 1, i32* %11, align 4
  br label %214

214:                                              ; preds = %213, %210
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = load i8*, i8** %10, align 8
  %219 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 2
  store i8* %218, i8** %219, align 8
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i32*, i32** %4, align 8
  %222 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %221, i8** %8, i32* %9, i32* %12)
  %223 = sext i32 %222 to i64
  %224 = inttoptr i64 %223 to i8*
  store i8* %224, i8** %10, align 8
  %225 = load i32, i32* %12, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  br label %800

228:                                              ; preds = %220
  %229 = load i8*, i8** %10, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %228
  store i32 1, i32* %11, align 4
  br label %232

232:                                              ; preds = %231, %228
  %233 = load i32, i32* %11, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %232
  %236 = load i8*, i8** %10, align 8
  %237 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  store i8* %236, i8** %237, align 8
  br label %238

238:                                              ; preds = %235, %232
  %239 = load i32*, i32** %4, align 8
  %240 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %239, i8** %8, i32* %9, i32* %12)
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i8*
  store i8* %242, i8** %10, align 8
  %243 = load i32, i32* %12, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  br label %800

246:                                              ; preds = %238
  %247 = load i8*, i8** %10, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %246
  store i32 1, i32* %11, align 4
  br label %250

250:                                              ; preds = %249, %246
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %250
  %254 = load i8*, i8** %10, align 8
  %255 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 4
  store i8* %254, i8** %255, align 8
  br label %256

256:                                              ; preds = %253, %250
  %257 = load i32*, i32** %4, align 8
  %258 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %257, i8** %8, i32* %9, i32* %12)
  %259 = sext i32 %258 to i64
  %260 = inttoptr i64 %259 to i8*
  store i8* %260, i8** %10, align 8
  %261 = load i32, i32* %12, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  br label %800

264:                                              ; preds = %256
  %265 = load i8*, i8** %10, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %264
  store i32 1, i32* %11, align 4
  br label %268

268:                                              ; preds = %267, %264
  %269 = load i32, i32* %11, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %268
  %272 = load i8*, i8** %10, align 8
  %273 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 5
  store i8* %272, i8** %273, align 8
  br label %274

274:                                              ; preds = %271, %268
  %275 = load i32*, i32** %4, align 8
  %276 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %275, i8** %8, i32* %9, i32* %12)
  %277 = sext i32 %276 to i64
  %278 = inttoptr i64 %277 to i8*
  store i8* %278, i8** %10, align 8
  %279 = load i32, i32* %12, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  br label %800

282:                                              ; preds = %274
  %283 = load i8*, i8** %10, align 8
  %284 = icmp ne i8* %283, null
  br i1 %284, label %286, label %285

285:                                              ; preds = %282
  store i32 1, i32* %11, align 4
  br label %286

286:                                              ; preds = %285, %282
  %287 = load i32, i32* %11, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %286
  %290 = load i8*, i8** %10, align 8
  %291 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 13
  store i8* %290, i8** %291, align 8
  br label %292

292:                                              ; preds = %289, %286
  %293 = load i32*, i32** %4, align 8
  %294 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %293, i8** %8, i32* %9, i32* %12)
  %295 = sext i32 %294 to i64
  %296 = inttoptr i64 %295 to i8*
  store i8* %296, i8** %10, align 8
  %297 = load i32, i32* %12, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %292
  br label %800

300:                                              ; preds = %292
  %301 = load i8*, i8** %10, align 8
  %302 = icmp ne i8* %301, null
  br i1 %302, label %304, label %303

303:                                              ; preds = %300
  store i32 1, i32* %11, align 4
  br label %304

304:                                              ; preds = %303, %300
  %305 = load i32, i32* %11, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %304
  %308 = load i8*, i8** %10, align 8
  %309 = call i64 @strtol(i8* %308, i8** null, i32 16)
  %310 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 14
  store i64 %309, i64* %310, align 8
  br label %311

311:                                              ; preds = %307, %304
  %312 = load i32*, i32** %4, align 8
  %313 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %312, i8** %8, i32* %9, i32* %12)
  %314 = sext i32 %313 to i64
  %315 = inttoptr i64 %314 to i8*
  store i8* %315, i8** %10, align 8
  %316 = load i32, i32* %12, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %311
  br label %800

319:                                              ; preds = %311
  %320 = load i8*, i8** %10, align 8
  %321 = icmp ne i8* %320, null
  br i1 %321, label %323, label %322

322:                                              ; preds = %319
  store i32 1, i32* %11, align 4
  br label %323

323:                                              ; preds = %322, %319
  %324 = load i32, i32* %11, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %330, label %326

326:                                              ; preds = %323
  %327 = load i8*, i8** %10, align 8
  %328 = call i64 @strtol(i8* %327, i8** null, i32 16)
  %329 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 15
  store i64 %328, i64* %329, align 8
  br label %330

330:                                              ; preds = %326, %323
  %331 = load i32*, i32** %4, align 8
  %332 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %331, i8** %8, i32* %9, i32* %12)
  %333 = sext i32 %332 to i64
  %334 = inttoptr i64 %333 to i8*
  store i8* %334, i8** %10, align 8
  %335 = load i32, i32* %12, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %330
  br label %800

338:                                              ; preds = %330
  %339 = load i8*, i8** %10, align 8
  %340 = icmp ne i8* %339, null
  br i1 %340, label %342, label %341

341:                                              ; preds = %338
  store i32 1, i32* %11, align 4
  br label %342

342:                                              ; preds = %341, %338
  %343 = load i32, i32* %11, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %348, label %345

345:                                              ; preds = %342
  %346 = load i8*, i8** %10, align 8
  %347 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 16
  store i8* %346, i8** %347, align 8
  br label %348

348:                                              ; preds = %345, %342
  %349 = load i32, i32* %11, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %348
  br label %800

352:                                              ; preds = %348
  %353 = load i32*, i32** %4, align 8
  %354 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.1 to i32*))
  %355 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 6
  %356 = load i8*, i8** %355, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 4
  %358 = call i64 @strncmp(i8* %357, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %367

360:                                              ; preds = %352
  %361 = load i32*, i32** %4, align 8
  %362 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 6
  %363 = load i8*, i8** %362, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 4
  %365 = bitcast i8* %364 to i32*
  %366 = call i32 @ND_PRINT(i32* %365)
  br label %806

367:                                              ; preds = %352
  %368 = load i32*, i32** %4, align 8
  %369 = load i32, i32* @z_types, align 4
  %370 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = call i32 @tok2str(i32 %369, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %371)
  %373 = sext i32 %372 to i64
  %374 = inttoptr i64 %373 to i32*
  %375 = call i32 @ND_PRINT(i32* %374)
  %376 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* @Z_PACKET_SERVACK, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %412

380:                                              ; preds = %367
  store i8* null, i8** %13, align 8
  %381 = load i32*, i32** %4, align 8
  %382 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %381, i8** %8, i32* %9, i32* %12)
  %383 = sext i32 %382 to i64
  %384 = inttoptr i64 %383 to i8*
  store i8* %384, i8** %10, align 8
  %385 = load i32, i32* %12, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %380
  br label %800

388:                                              ; preds = %380
  %389 = load i8*, i8** %10, align 8
  %390 = icmp ne i8* %389, null
  br i1 %390, label %392, label %391

391:                                              ; preds = %388
  store i32 1, i32* %11, align 4
  br label %392

392:                                              ; preds = %391, %388
  %393 = load i32, i32* %11, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %397, label %395

395:                                              ; preds = %392
  %396 = load i8*, i8** %10, align 8
  store i8* %396, i8** %13, align 8
  br label %397

397:                                              ; preds = %395, %392
  %398 = load i32, i32* %11, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %411, label %400

400:                                              ; preds = %397
  %401 = load i8*, i8** %13, align 8
  %402 = call i64 @strcmp(i8* %401, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %411

404:                                              ; preds = %400
  %405 = load i32*, i32** %4, align 8
  %406 = load i8*, i8** %13, align 8
  %407 = call i32 @str_to_lower(i8* %406)
  %408 = sext i32 %407 to i64
  %409 = inttoptr i64 %408 to i32*
  %410 = call i32 @ND_PRINT(i32* %409)
  br label %411

411:                                              ; preds = %404, %400, %397
  br label %412

412:                                              ; preds = %411, %367
  %413 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 4
  %414 = load i8*, i8** %413, align 8
  %415 = load i8, i8* %414, align 1
  %416 = icmp ne i8 %415, 0
  br i1 %416, label %417, label %423

417:                                              ; preds = %412
  %418 = load i32*, i32** %4, align 8
  %419 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 4
  %420 = load i8*, i8** %419, align 8
  %421 = bitcast i8* %420 to i32*
  %422 = call i32 @ND_PRINT(i32* %421)
  br label %423

423:                                              ; preds = %417, %412
  %424 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 1
  %425 = load i8*, i8** %424, align 8
  %426 = call i64 @strcmp(i8* %425, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %452, label %428

428:                                              ; preds = %423
  %429 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %430 = load i8*, i8** %429, align 8
  %431 = call i64 @strcmp(i8* %430, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %436, label %433

433:                                              ; preds = %428
  %434 = load i32*, i32** %4, align 8
  %435 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.10 to i32*))
  br label %451

436:                                              ; preds = %428
  %437 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %438 = load i8*, i8** %437, align 8
  %439 = call i64 @strcmp(i8* %438, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %436
  %442 = load i32*, i32** %4, align 8
  %443 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.12 to i32*))
  br label %450

444:                                              ; preds = %436
  %445 = load i32*, i32** %4, align 8
  %446 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 2
  %447 = load i8*, i8** %446, align 8
  %448 = bitcast i8* %447 to i32*
  %449 = call i32 @ND_PRINT(i32* %448)
  br label %450

450:                                              ; preds = %444, %441
  br label %451

451:                                              ; preds = %450, %433
  br label %806

452:                                              ; preds = %423
  %453 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 1
  %454 = load i8*, i8** %453, align 8
  %455 = call i64 @strcmp(i8* %454, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %465, label %457

457:                                              ; preds = %452
  %458 = load i32*, i32** %4, align 8
  %459 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %460 = load i8*, i8** %459, align 8
  %461 = call i32 @str_to_lower(i8* %460)
  %462 = sext i32 %461 to i64
  %463 = inttoptr i64 %462 to i32*
  %464 = call i32 @ND_PRINT(i32* %463)
  br label %806

465:                                              ; preds = %452
  %466 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 1
  %467 = load i8*, i8** %466, align 8
  %468 = call i64 @strcmp(i8* %467, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %659, label %470

470:                                              ; preds = %465
  %471 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 2
  %472 = load i8*, i8** %471, align 8
  %473 = call i64 @strcmp(i8* %472, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %607, label %475

475:                                              ; preds = %470
  %476 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %477 = load i8*, i8** %476, align 8
  %478 = call i64 @strcmp(i8* %477, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %490

480:                                              ; preds = %475
  %481 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %482 = load i8*, i8** %481, align 8
  %483 = call i64 @strcmp(i8* %482, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %490

485:                                              ; preds = %480
  %486 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %487 = load i8*, i8** %486, align 8
  %488 = call i64 @strcmp(i8* %487, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %575, label %490

490:                                              ; preds = %485, %480, %475
  %491 = load i32*, i32** %4, align 8
  %492 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %493 = load i8*, i8** %492, align 8
  %494 = call i64 @strcmp(i8* %493, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %495 = icmp ne i64 %494, 0
  %496 = zext i1 %495 to i64
  %497 = select i1 %495, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0)
  %498 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %499 = load i8*, i8** %498, align 8
  %500 = call i64 @strcmp(i8* %499, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %501 = icmp ne i64 %500, 0
  %502 = zext i1 %501 to i64
  %503 = select i1 %501, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)
  %504 = bitcast i8* %503 to i32*
  %505 = call i32 @ND_PRINT(i32* %504)
  %506 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = load i64, i64* @Z_PACKET_SERVACK, align 8
  %509 = icmp ne i64 %507, %508
  br i1 %509, label %510, label %574

510:                                              ; preds = %490
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %511 = load i32*, i32** %4, align 8
  %512 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %511, i8** %8, i32* %9, i32* %12)
  %513 = sext i32 %512 to i64
  %514 = inttoptr i64 %513 to i8*
  store i8* %514, i8** %10, align 8
  %515 = load i32, i32* %12, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %518

517:                                              ; preds = %510
  br label %800

518:                                              ; preds = %510
  %519 = load i8*, i8** %10, align 8
  %520 = icmp ne i8* %519, null
  br i1 %520, label %522, label %521

521:                                              ; preds = %518
  store i32 1, i32* %11, align 4
  br label %522

522:                                              ; preds = %521, %518
  %523 = load i32, i32* %11, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %527, label %525

525:                                              ; preds = %522
  %526 = load i8*, i8** %10, align 8
  store i8* %526, i8** %14, align 8
  br label %527

527:                                              ; preds = %525, %522
  %528 = load i32*, i32** %4, align 8
  %529 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %528, i8** %8, i32* %9, i32* %12)
  %530 = sext i32 %529 to i64
  %531 = inttoptr i64 %530 to i8*
  store i8* %531, i8** %10, align 8
  %532 = load i32, i32* %12, align 4
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %535

534:                                              ; preds = %527
  br label %800

535:                                              ; preds = %527
  %536 = load i8*, i8** %10, align 8
  %537 = icmp ne i8* %536, null
  br i1 %537, label %539, label %538

538:                                              ; preds = %535
  store i32 1, i32* %11, align 4
  br label %539

539:                                              ; preds = %538, %535
  %540 = load i32, i32* %11, align 4
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %544, label %542

542:                                              ; preds = %539
  %543 = load i8*, i8** %10, align 8
  store i8* %543, i8** %15, align 8
  br label %544

544:                                              ; preds = %542, %539
  %545 = load i32*, i32** %4, align 8
  %546 = call i32 (i32*, i8**, i32*, i32*, ...) bitcast (i32 (...)* @parse_field to i32 (i32*, i8**, i32*, i32*, ...)*)(i32* %545, i8** %8, i32* %9, i32* %12)
  %547 = sext i32 %546 to i64
  %548 = inttoptr i64 %547 to i8*
  store i8* %548, i8** %10, align 8
  %549 = load i32, i32* %12, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %552

551:                                              ; preds = %544
  br label %800

552:                                              ; preds = %544
  %553 = load i8*, i8** %10, align 8
  %554 = icmp ne i8* %553, null
  br i1 %554, label %556, label %555

555:                                              ; preds = %552
  store i32 1, i32* %11, align 4
  br label %556

556:                                              ; preds = %555, %552
  %557 = load i32, i32* %11, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %561, label %559

559:                                              ; preds = %556
  %560 = load i8*, i8** %10, align 8
  store i8* %560, i8** %16, align 8
  br label %561

561:                                              ; preds = %559, %556
  %562 = load i32, i32* %11, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %573, label %564

564:                                              ; preds = %561
  %565 = load i32*, i32** %4, align 8
  %566 = load i8*, i8** %14, align 8
  %567 = load i8*, i8** %15, align 8
  %568 = load i8*, i8** %16, align 8
  %569 = call i32 @z_triple(i8* %566, i8* %567, i8* %568)
  %570 = sext i32 %569 to i64
  %571 = inttoptr i64 %570 to i32*
  %572 = call i32 @ND_PRINT(i32* %571)
  br label %573

573:                                              ; preds = %564, %561
  br label %574

574:                                              ; preds = %573, %490
  br label %806

575:                                              ; preds = %485
  %576 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %577 = load i8*, i8** %576, align 8
  %578 = call i64 @strcmp(i8* %577, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %583, label %580

580:                                              ; preds = %575
  %581 = load i32*, i32** %4, align 8
  %582 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.26 to i32*))
  br label %806

583:                                              ; preds = %575
  %584 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %585 = load i8*, i8** %584, align 8
  %586 = call i64 @strcmp(i8* %585, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %591, label %588

588:                                              ; preds = %583
  %589 = load i32*, i32** %4, align 8
  %590 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.28 to i32*))
  br label %806

591:                                              ; preds = %583
  %592 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %593 = load i8*, i8** %592, align 8
  %594 = call i64 @strcmp(i8* %593, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  %595 = icmp ne i64 %594, 0
  br i1 %595, label %599, label %596

596:                                              ; preds = %591
  %597 = load i32*, i32** %4, align 8
  %598 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.30 to i32*))
  br label %806

599:                                              ; preds = %591
  %600 = load i32*, i32** %4, align 8
  %601 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %602 = load i8*, i8** %601, align 8
  %603 = call i32 @str_to_lower(i8* %602)
  %604 = sext i32 %603 to i64
  %605 = inttoptr i64 %604 to i32*
  %606 = call i32 @ND_PRINT(i32* %605)
  br label %806

607:                                              ; preds = %470
  %608 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 2
  %609 = load i8*, i8** %608, align 8
  %610 = call i64 @strcmp(i8* %609, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  %611 = icmp ne i64 %610, 0
  br i1 %611, label %620, label %612

612:                                              ; preds = %607
  %613 = load i32*, i32** %4, align 8
  %614 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %615 = load i8*, i8** %614, align 8
  %616 = call i32 @str_to_lower(i8* %615)
  %617 = sext i32 %616 to i64
  %618 = inttoptr i64 %617 to i32*
  %619 = call i32 @ND_PRINT(i32* %618)
  br label %806

620:                                              ; preds = %607
  %621 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 2
  %622 = load i8*, i8** %621, align 8
  %623 = call i64 @strcmp(i8* %622, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0))
  %624 = icmp ne i64 %623, 0
  br i1 %624, label %658, label %625

625:                                              ; preds = %620
  %626 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %627 = load i8*, i8** %626, align 8
  %628 = call i64 @strcmp(i8* %627, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0))
  %629 = icmp ne i64 %628, 0
  br i1 %629, label %633, label %630

630:                                              ; preds = %625
  %631 = load i32*, i32** %4, align 8
  %632 = call i32 @ND_PRINT(i32* bitcast ([16 x i8]* @.str.34 to i32*))
  br label %633

633:                                              ; preds = %630, %625
  %634 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %635 = load i8*, i8** %634, align 8
  %636 = call i64 @strcmp(i8* %635, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0))
  %637 = icmp ne i64 %636, 0
  br i1 %637, label %641, label %638

638:                                              ; preds = %633
  %639 = load i32*, i32** %4, align 8
  %640 = call i32 @ND_PRINT(i32* bitcast ([16 x i8]* @.str.36 to i32*))
  br label %641

641:                                              ; preds = %638, %633
  %642 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %643 = load i8*, i8** %642, align 8
  %644 = call i64 @strcmp(i8* %643, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0))
  %645 = icmp ne i64 %644, 0
  br i1 %645, label %649, label %646

646:                                              ; preds = %641
  %647 = load i32*, i32** %4, align 8
  %648 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str.38 to i32*))
  br label %649

649:                                              ; preds = %646, %641
  %650 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %651 = load i8*, i8** %650, align 8
  %652 = call i64 @strcmp(i8* %651, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %653 = icmp ne i64 %652, 0
  br i1 %653, label %657, label %654

654:                                              ; preds = %649
  %655 = load i32*, i32** %4, align 8
  %656 = call i32 @ND_PRINT(i32* bitcast ([17 x i8]* @.str.40 to i32*))
  br label %657

657:                                              ; preds = %654, %649
  br label %806

658:                                              ; preds = %620
  br label %659

659:                                              ; preds = %658, %465
  %660 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 1
  %661 = load i8*, i8** %660, align 8
  %662 = call i64 @strcmp(i8* %661, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0))
  %663 = icmp ne i64 %662, 0
  br i1 %663, label %679, label %664

664:                                              ; preds = %659
  %665 = load i32*, i32** %4, align 8
  %666 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 2
  %667 = load i8*, i8** %666, align 8
  %668 = call i32 @str_to_lower(i8* %667)
  %669 = sext i32 %668 to i64
  %670 = inttoptr i64 %669 to i32*
  %671 = call i32 @ND_PRINT(i32* %670)
  %672 = load i32*, i32** %4, align 8
  %673 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %674 = load i8*, i8** %673, align 8
  %675 = call i32 @str_to_lower(i8* %674)
  %676 = sext i32 %675 to i64
  %677 = inttoptr i64 %676 to i32*
  %678 = call i32 @ND_PRINT(i32* %677)
  br label %806

679:                                              ; preds = %659
  %680 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 1
  %681 = load i8*, i8** %680, align 8
  %682 = call i64 @strcmp(i8* %681, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0))
  %683 = icmp ne i64 %682, 0
  br i1 %683, label %698, label %684

684:                                              ; preds = %679
  %685 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 2
  %686 = load i8*, i8** %685, align 8
  %687 = call i64 @strcmp(i8* %686, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0))
  %688 = icmp ne i64 %687, 0
  br i1 %688, label %697, label %689

689:                                              ; preds = %684
  %690 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %691 = load i8*, i8** %690, align 8
  %692 = call i64 @strcmp(i8* %691, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i64 0, i64 0))
  %693 = icmp ne i64 %692, 0
  br i1 %693, label %697, label %694

694:                                              ; preds = %689
  %695 = load i32*, i32** %4, align 8
  %696 = call i32 @ND_PRINT(i32* bitcast ([18 x i8]* @.str.46 to i32*))
  br label %806

697:                                              ; preds = %689, %684
  br label %698

698:                                              ; preds = %697, %679
  %699 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 1
  %700 = load i8*, i8** %699, align 8
  %701 = call i64 @strcmp(i8* %700, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0))
  %702 = icmp ne i64 %701, 0
  br i1 %702, label %718, label %703

703:                                              ; preds = %698
  %704 = load i32*, i32** %4, align 8
  %705 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 2
  %706 = load i8*, i8** %705, align 8
  %707 = call i32 @str_to_lower(i8* %706)
  %708 = sext i32 %707 to i64
  %709 = inttoptr i64 %708 to i32*
  %710 = call i32 @ND_PRINT(i32* %709)
  %711 = load i32*, i32** %4, align 8
  %712 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %713 = load i8*, i8** %712, align 8
  %714 = call i32 @str_to_lower(i8* %713)
  %715 = sext i32 %714 to i64
  %716 = inttoptr i64 %715 to i32*
  %717 = call i32 @ND_PRINT(i32* %716)
  br label %806

718:                                              ; preds = %698
  %719 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 1
  %720 = load i8*, i8** %719, align 8
  %721 = call i64 @strcmp(i8* %720, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0))
  %722 = icmp ne i64 %721, 0
  br i1 %722, label %770, label %723

723:                                              ; preds = %718
  %724 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %725 = load i8*, i8** %724, align 8
  %726 = call i64 @strcmp(i8* %725, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0))
  %727 = icmp ne i64 %726, 0
  br i1 %727, label %731, label %728

728:                                              ; preds = %723
  %729 = load i32*, i32** %4, align 8
  %730 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.51 to i32*))
  br label %806

731:                                              ; preds = %723
  %732 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %733 = load i8*, i8** %732, align 8
  %734 = call i64 @strcmp(i8* %733, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0))
  %735 = icmp ne i64 %734, 0
  br i1 %735, label %736, label %761

736:                                              ; preds = %731
  %737 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %738 = load i8*, i8** %737, align 8
  %739 = call i64 @strcmp(i8* %738, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0))
  %740 = icmp ne i64 %739, 0
  br i1 %740, label %741, label %761

741:                                              ; preds = %736
  %742 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %743 = load i8*, i8** %742, align 8
  %744 = call i64 @strcmp(i8* %743, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0))
  %745 = icmp ne i64 %744, 0
  br i1 %745, label %746, label %761

746:                                              ; preds = %741
  %747 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %748 = load i8*, i8** %747, align 8
  %749 = call i64 @strcmp(i8* %748, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0))
  %750 = icmp ne i64 %749, 0
  br i1 %750, label %751, label %761

751:                                              ; preds = %746
  %752 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %753 = load i8*, i8** %752, align 8
  %754 = call i64 @strcmp(i8* %753, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0))
  %755 = icmp ne i64 %754, 0
  br i1 %755, label %756, label %761

756:                                              ; preds = %751
  %757 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %758 = load i8*, i8** %757, align 8
  %759 = call i64 @strcmp(i8* %758, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0))
  %760 = icmp ne i64 %759, 0
  br i1 %760, label %769, label %761

761:                                              ; preds = %756, %751, %746, %741, %736, %731
  %762 = load i32*, i32** %4, align 8
  %763 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %764 = load i8*, i8** %763, align 8
  %765 = call i32 @str_to_lower(i8* %764)
  %766 = sext i32 %765 to i64
  %767 = inttoptr i64 %766 to i32*
  %768 = call i32 @ND_PRINT(i32* %767)
  br label %806

769:                                              ; preds = %756
  br label %770

770:                                              ; preds = %769, %718
  %771 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 5
  %772 = load i8*, i8** %771, align 8
  %773 = load i8, i8* %772, align 1
  %774 = icmp ne i8 %773, 0
  br i1 %774, label %777, label %775

775:                                              ; preds = %770
  %776 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 5
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i8** %776, align 8
  br label %777

777:                                              ; preds = %775, %770
  %778 = load i32*, i32** %4, align 8
  %779 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 1
  %780 = load i8*, i8** %779, align 8
  %781 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 2
  %782 = load i8*, i8** %781, align 8
  %783 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 5
  %784 = load i8*, i8** %783, align 8
  %785 = call i32 @z_triple(i8* %780, i8* %782, i8* %784)
  %786 = sext i32 %785 to i64
  %787 = inttoptr i64 %786 to i32*
  %788 = call i32 @ND_PRINT(i32* %787)
  %789 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %790 = load i8*, i8** %789, align 8
  %791 = load i8, i8* %790, align 1
  %792 = icmp ne i8 %791, 0
  br i1 %792, label %793, label %799

793:                                              ; preds = %777
  %794 = load i32*, i32** %4, align 8
  %795 = getelementptr inbounds %struct.z_packet, %struct.z_packet* %7, i32 0, i32 3
  %796 = load i8*, i8** %795, align 8
  %797 = bitcast i8* %796 to i32*
  %798 = call i32 @ND_PRINT(i32* %797)
  br label %799

799:                                              ; preds = %793, %777
  br label %806

800:                                              ; preds = %551, %534, %517, %387, %351, %337, %318, %299, %281, %263, %245, %227, %209, %191, %173, %154, %135, %116, %98, %79, %60, %32
  %801 = load i32*, i32** %4, align 8
  %802 = load i32, i32* %6, align 4
  %803 = sext i32 %802 to i64
  %804 = inttoptr i64 %803 to i32*
  %805 = call i32 @ND_PRINT(i32* %804)
  br label %806

806:                                              ; preds = %800, %799, %761, %728, %703, %694, %664, %657, %612, %599, %596, %588, %580, %574, %457, %451, %360, %52, %46
  ret void
}

declare dso_local i32 @parse_field(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @str_to_lower(i8*) #1

declare dso_local i32 @z_triple(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
