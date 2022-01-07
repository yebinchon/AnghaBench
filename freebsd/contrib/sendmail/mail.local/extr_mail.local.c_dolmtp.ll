; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/mail.local/extr_mail.local.c_dolmtp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/mail.local/extr_mail.local.c_dolmtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"220 %s LMTP ready\0D\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@EX_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"503 5.5.1\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"No recipients\00", align 1
@HoldErrs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"lhlo \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"503\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%s Duplicate LHLO\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"250-%s\0D\0A\00", align 1
@EightBitMime = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"250-8BITMIME\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"250-ENHANCEDSTATUSCODES\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"250 PIPELINING\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"mail \00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Nested MAIL command\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"from:\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"501 5.5.4\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Syntax error in parameters\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"250 2.5.0 Ok\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"noop\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"250 2.0.0 Ok\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"221 2.0.0 Bye\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"rcpt \00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Need MAIL command\00", align 1
@RCPT_GROW = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"421 4.3.0\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Memory exhausted\00", align 1
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"to:\00", align 1
@StripRcptDomain = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"250 2.1.5 Ok\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"rset\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"vrfy \00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"252 2.3.3 Try RCPT to attempt delivery\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"500 5.5.2\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Syntax error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dolmtp() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca [4096 x i8], align 16
  %12 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  store i8** null, i8*** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %14 = call i32 @memset(i8* %13, i8 signext 0, i32 1024)
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %16 = call i32 @gethostname(i8* %15, i32 1023)
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %18 = load i8, i8* %17, align 16
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %23 = call i32 @sm_strlcpy(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1024)
  br label %24

24:                                               ; preds = %21, %0
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %291, %287, %280, %252, %249, %238, %198, %179, %172, %170, %158, %147, %137, %88, %78, %24
  %28 = load i32, i32* @stdout, align 4
  %29 = call i32 @fflush(i32 %28)
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %31 = load i32, i32* @stdin, align 4
  %32 = call i32* @fgets(i8* %30, i32 4095, i32 %31)
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EX_OK, align 4
  %36 = call i32 @sm_exit(i32 %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %40 = call i32 @strlen(i8* %39)
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = getelementptr inbounds i8, i8* %42, i64 -1
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %46 = icmp uge i8* %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %54, i8** %8, align 8
  store i8 0, i8* %53, align 1
  br label %55

55:                                               ; preds = %52, %47, %37
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %58 = icmp uge i8* %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 13
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 -1
  store i8* %66, i8** %8, align 8
  store i8 0, i8* %65, align 1
  br label %67

67:                                               ; preds = %64, %59, %55
  %68 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %69 = load i8, i8* %68, align 16
  %70 = sext i8 %69 to i32
  switch i32 %70, label %290 [
    i32 100, label %71
    i32 68, label %71
    i32 108, label %130
    i32 76, label %130
    i32 109, label %151
    i32 77, label %151
    i32 110, label %175
    i32 78, label %175
    i32 113, label %182
    i32 81, label %182
    i32 114, label %191
    i32 82, label %191
    i32 118, label %283
    i32 86, label %283
  ]

71:                                               ; preds = %67, %67
  %72 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %73 = call i32 @sm_strcasecmp(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %129

75:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %27

80:                                               ; preds = %75
  store i32 1, i32* @HoldErrs, align 4
  %81 = load i8*, i8** %1, align 8
  %82 = call i32 @store(i8* %81, i32* %12)
  store i32 %82, i32* %7, align 4
  store i32 0, i32* @HoldErrs, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i32 (...) @flush_error()
  br label %27

90:                                               ; preds = %85, %80
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %119, %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %3, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 (...) @flush_error()
  br label %119

100:                                              ; preds = %95
  %101 = load i8**, i8*** %2, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @strchr(i8* %105, i8 signext 43)
  store i8* %106, i8** %8, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i8*, i8** %8, align 8
  store i8 0, i8* %110, align 1
  br label %111

111:                                              ; preds = %109, %100
  %112 = load i32, i32* %7, align 4
  %113 = load i8**, i8*** %2, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @deliver(i32 %112, i8* %117)
  br label %119

119:                                              ; preds = %111, %98
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %91

122:                                              ; preds = %91
  %123 = load i32, i32* %7, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @close(i32 %126)
  br label %128

128:                                              ; preds = %125, %122
  br label %262

129:                                              ; preds = %71
  br label %291

130:                                              ; preds = %67, %67
  %131 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %132 = call i32 @sm_strncasecmp(i8* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %130
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %139 = call i32 (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %138)
  br label %27

140:                                              ; preds = %134
  store i32 1, i32* %5, align 4
  %141 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %141)
  %143 = load i32, i32* @EightBitMime, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %140
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %27

150:                                              ; preds = %130
  br label %291

151:                                              ; preds = %67, %67
  %152 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %153 = call i32 @sm_strncasecmp(i8* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 5)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %174

155:                                              ; preds = %151
  %156 = load i8*, i8** %1, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = call i32 (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %27

160:                                              ; preds = %155
  %161 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %162 = getelementptr inbounds i8, i8* %161, i64 5
  %163 = call i32 @sm_strncasecmp(i8* %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %167 = getelementptr inbounds i8, i8* %166, i64 10
  %168 = call i8* @parseaddr(i8* %167, i32 0)
  store i8* %168, i8** %1, align 8
  %169 = icmp eq i8* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %165, %160
  %171 = call i32 (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  br label %27

172:                                              ; preds = %165
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  br label %27

174:                                              ; preds = %151
  br label %291

175:                                              ; preds = %67, %67
  %176 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %177 = call i32 @sm_strcasecmp(i8* %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %27

181:                                              ; preds = %175
  br label %291

182:                                              ; preds = %67, %67
  %183 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %184 = call i32 @sm_strcasecmp(i8* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  %188 = load i32, i32* @EX_OK, align 4
  %189 = call i32 @sm_exit(i32 %188)
  br label %190

190:                                              ; preds = %186, %182
  br label %291

191:                                              ; preds = %67, %67
  %192 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %193 = call i32 @sm_strncasecmp(i8* %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 5)
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %256

195:                                              ; preds = %191
  %196 = load i8*, i8** %1, align 8
  %197 = icmp eq i8* %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = call i32 (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  br label %27

200:                                              ; preds = %195
  %201 = load i32, i32* %3, align 4
  %202 = load i32, i32* %4, align 4
  %203 = icmp sge i32 %201, %202
  br i1 %203, label %204, label %223

204:                                              ; preds = %200
  %205 = load i32, i32* @RCPT_GROW, align 4
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %4, align 4
  %208 = load i8**, i8*** %2, align 8
  %209 = bitcast i8** %208 to i8*
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = mul i64 %211, 8
  %213 = trunc i64 %212 to i32
  %214 = call i64 @REALLOC(i8* %209, i32 %213)
  %215 = inttoptr i64 %214 to i8**
  store i8** %215, i8*** %2, align 8
  %216 = load i8**, i8*** %2, align 8
  %217 = icmp eq i8** %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %204
  %219 = call i32 (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  %220 = load i32, i32* @EX_TEMPFAIL, align 4
  %221 = call i32 @sm_exit(i32 %220)
  br label %222

222:                                              ; preds = %218, %204
  br label %223

223:                                              ; preds = %222, %200
  %224 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %225 = getelementptr inbounds i8, i8* %224, i64 5
  %226 = call i32 @sm_strncasecmp(i8* %225, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i32 3)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %238, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %230 = getelementptr inbounds i8, i8* %229, i64 8
  %231 = load i32, i32* @StripRcptDomain, align 4
  %232 = call i8* @parseaddr(i8* %230, i32 %231)
  %233 = load i8**, i8*** %2, align 8
  %234 = load i32, i32* %3, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %233, i64 %235
  store i8* %232, i8** %236, align 8
  %237 = icmp eq i8* %232, null
  br i1 %237, label %238, label %240

238:                                              ; preds = %228, %223
  %239 = call i32 (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  br label %27

240:                                              ; preds = %228
  %241 = load i8**, i8*** %2, align 8
  %242 = load i32, i32* %3, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = call i8* @process_recipient(i8* %245)
  store i8* %246, i8** %6, align 8
  %247 = load i8*, i8** %6, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %240
  %250 = load i8*, i8** %6, align 8
  %251 = call i32 (i8*, i8*, ...) @mailerr(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %250)
  br label %27

252:                                              ; preds = %240
  %253 = load i32, i32* %3, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %3, align 4
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  br label %27

256:                                              ; preds = %191
  %257 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %258 = call i32 @sm_strcasecmp(i8* %257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %281

260:                                              ; preds = %256
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %262

262:                                              ; preds = %260, %128
  br label %263

263:                                              ; preds = %266, %262
  %264 = load i32, i32* %3, align 4
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %263
  %267 = load i8**, i8*** %2, align 8
  %268 = load i32, i32* %3, align 4
  %269 = add nsw i32 %268, -1
  store i32 %269, i32* %3, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8*, i8** %267, i64 %270
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @free(i8* %272)
  br label %263

274:                                              ; preds = %263
  %275 = load i8*, i8** %1, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load i8*, i8** %1, align 8
  %279 = call i32 @free(i8* %278)
  br label %280

280:                                              ; preds = %277, %274
  store i8* null, i8** %1, align 8
  br label %27

281:                                              ; preds = %256
  br label %282

282:                                              ; preds = %281
  br label %291

283:                                              ; preds = %67, %67
  %284 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %285 = call i32 @sm_strncasecmp(i8* %284, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 5)
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %283
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0))
  br label %27

289:                                              ; preds = %283
  br label %291

290:                                              ; preds = %67
  br label %291

291:                                              ; preds = %290, %289, %282, %190, %181, %174, %150, %129
  %292 = call i32 (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  br label %27
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local i32 @sm_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @sm_exit(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sm_strcasecmp(i8*, i8*) #1

declare dso_local i32 @mailerr(i8*, i8*, ...) #1

declare dso_local i32 @store(i8*, i32*) #1

declare dso_local i32 @flush_error(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @deliver(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sm_strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @parseaddr(i8*, i32) #1

declare dso_local i64 @REALLOC(i8*, i32) #1

declare dso_local i8* @process_recipient(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
