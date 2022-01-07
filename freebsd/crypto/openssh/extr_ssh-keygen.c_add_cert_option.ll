; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_add_cert_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_add_cert_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@certflags_flags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no-x11-forwarding\00", align 1
@CERTOPT_X_FWD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"permit-x11-forwarding\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"no-agent-forwarding\00", align 1
@CERTOPT_AGENT_FWD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"permit-agent-forwarding\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"no-port-forwarding\00", align 1
@CERTOPT_PORT_FWD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"permit-port-forwarding\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"no-pty\00", align 1
@CERTOPT_PTY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"permit-pty\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"no-user-rc\00", align 1
@CERTOPT_USER_RC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"permit-user-rc\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"force-command=\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Empty force-command option\00", align 1
@certflags_command = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [32 x i8] c"force-command already specified\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"source-address=\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Empty source-address option\00", align 1
@certflags_src_addr = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [33 x i8] c"source-address already specified\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Invalid source-address list\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"extension:\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"critical:\00", align 1
@cert_userext = common dso_local global %struct.TYPE_4__* null, align 8
@ncert_userext = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [36 x i8] c"Unsupported certificate option \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_cert_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_cert_option(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strcasecmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* @certflags_flags, align 4
  br label %211

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @strcasecmp(i8* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* @CERTOPT_X_FWD, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @certflags_flags, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* @certflags_flags, align 4
  br label %210

19:                                               ; preds = %10
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 @strcasecmp(i8* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @CERTOPT_X_FWD, align 4
  %25 = load i32, i32* @certflags_flags, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* @certflags_flags, align 4
  br label %209

27:                                               ; preds = %19
  %28 = load i8*, i8** %2, align 8
  %29 = call i64 @strcasecmp(i8* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* @CERTOPT_AGENT_FWD, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @certflags_flags, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* @certflags_flags, align 4
  br label %208

36:                                               ; preds = %27
  %37 = load i8*, i8** %2, align 8
  %38 = call i64 @strcasecmp(i8* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @CERTOPT_AGENT_FWD, align 4
  %42 = load i32, i32* @certflags_flags, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* @certflags_flags, align 4
  br label %207

44:                                               ; preds = %36
  %45 = load i8*, i8** %2, align 8
  %46 = call i64 @strcasecmp(i8* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* @CERTOPT_PORT_FWD, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* @certflags_flags, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* @certflags_flags, align 4
  br label %206

53:                                               ; preds = %44
  %54 = load i8*, i8** %2, align 8
  %55 = call i64 @strcasecmp(i8* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @CERTOPT_PORT_FWD, align 4
  %59 = load i32, i32* @certflags_flags, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* @certflags_flags, align 4
  br label %205

61:                                               ; preds = %53
  %62 = load i8*, i8** %2, align 8
  %63 = call i64 @strcasecmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, i32* @CERTOPT_PTY, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* @certflags_flags, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* @certflags_flags, align 4
  br label %204

70:                                               ; preds = %61
  %71 = load i8*, i8** %2, align 8
  %72 = call i64 @strcasecmp(i8* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @CERTOPT_PTY, align 4
  %76 = load i32, i32* @certflags_flags, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* @certflags_flags, align 4
  br label %203

78:                                               ; preds = %70
  %79 = load i8*, i8** %2, align 8
  %80 = call i64 @strcasecmp(i8* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, i32* @CERTOPT_USER_RC, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* @certflags_flags, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* @certflags_flags, align 4
  br label %202

87:                                               ; preds = %78
  %88 = load i8*, i8** %2, align 8
  %89 = call i64 @strcasecmp(i8* %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* @CERTOPT_USER_RC, align 4
  %93 = load i32, i32* @certflags_flags, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* @certflags_flags, align 4
  br label %201

95:                                               ; preds = %87
  %96 = load i8*, i8** %2, align 8
  %97 = call i64 @strncasecmp(i8* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 14)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %95
  %100 = load i8*, i8** %2, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 14
  store i8* %101, i8** %3, align 8
  %102 = load i8*, i8** %3, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %99
  %109 = load i8*, i8** @certflags_command, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %108
  %114 = load i8*, i8** %3, align 8
  %115 = call i8* @xstrdup(i8* %114)
  store i8* %115, i8** @certflags_command, align 8
  br label %200

116:                                              ; preds = %95
  %117 = load i8*, i8** %2, align 8
  %118 = call i64 @strncasecmp(i8* %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 15)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %116
  %121 = load i8*, i8** %2, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 15
  store i8* %122, i8** %3, align 8
  %123 = load i8*, i8** %3, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %120
  %130 = load i8*, i8** @certflags_src_addr, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %129
  %135 = load i8*, i8** %3, align 8
  %136 = call i64 @addr_match_cidr_list(i32* null, i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %134
  %141 = load i8*, i8** %3, align 8
  %142 = call i8* @xstrdup(i8* %141)
  store i8* %142, i8** @certflags_src_addr, align 8
  br label %199

143:                                              ; preds = %116
  %144 = load i8*, i8** %2, align 8
  %145 = call i64 @strncasecmp(i8* %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 10)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %143
  %148 = load i8*, i8** %2, align 8
  %149 = call i64 @strncasecmp(i8* %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 9)
  %150 = icmp eq i64 %149, 0
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %5, align 4
  br i1 %150, label %152, label %195

152:                                              ; preds = %147, %143
  %153 = load i8*, i8** %2, align 8
  %154 = call i8* @strchr(i8* %153, i8 signext 58)
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  %156 = call i8* @xstrdup(i8* %155)
  store i8* %156, i8** %3, align 8
  %157 = load i8*, i8** %3, align 8
  %158 = call i8* @strchr(i8* %157, i8 signext 61)
  store i8* %158, i8** %4, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %152
  %161 = load i8*, i8** %4, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %4, align 8
  store i8 0, i8* %161, align 1
  br label %163

163:                                              ; preds = %160, %152
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cert_userext, align 8
  %165 = load i32, i32* @ncert_userext, align 4
  %166 = add nsw i32 %165, 1
  %167 = call %struct.TYPE_4__* @xreallocarray(%struct.TYPE_4__* %164, i32 %166, i32 24)
  store %struct.TYPE_4__* %167, %struct.TYPE_4__** @cert_userext, align 8
  %168 = load i8*, i8** %3, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cert_userext, align 8
  %170 = load i32, i32* @ncert_userext, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  store i8* %168, i8** %173, align 8
  %174 = load i8*, i8** %4, align 8
  %175 = icmp eq i8* %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %163
  br label %180

177:                                              ; preds = %163
  %178 = load i8*, i8** %4, align 8
  %179 = call i8* @xstrdup(i8* %178)
  br label %180

180:                                              ; preds = %177, %176
  %181 = phi i8* [ null, %176 ], [ %179, %177 ]
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cert_userext, align 8
  %183 = load i32, i32* @ncert_userext, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  store i8* %181, i8** %186, align 8
  %187 = load i32, i32* %5, align 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cert_userext, align 8
  %189 = load i32, i32* @ncert_userext, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  store i32 %187, i32* %192, align 8
  %193 = load i32, i32* @ncert_userext, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* @ncert_userext, align 4
  br label %198

195:                                              ; preds = %147
  %196 = load i8*, i8** %2, align 8
  %197 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i8* %196)
  br label %198

198:                                              ; preds = %195, %180
  br label %199

199:                                              ; preds = %198, %140
  br label %200

200:                                              ; preds = %199, %113
  br label %201

201:                                              ; preds = %200, %91
  br label %202

202:                                              ; preds = %201, %82
  br label %203

203:                                              ; preds = %202, %74
  br label %204

204:                                              ; preds = %203, %65
  br label %205

205:                                              ; preds = %204, %57
  br label %206

206:                                              ; preds = %205, %48
  br label %207

207:                                              ; preds = %206, %40
  br label %208

208:                                              ; preds = %207, %31
  br label %209

209:                                              ; preds = %208, %23
  br label %210

210:                                              ; preds = %209, %14
  br label %211

211:                                              ; preds = %210, %9
  ret void
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @addr_match_cidr_list(i32*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_4__* @xreallocarray(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
