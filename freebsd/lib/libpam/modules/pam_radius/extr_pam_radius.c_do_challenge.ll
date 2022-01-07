; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_radius/extr_pam_radius.c_do_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_radius/extr_pam_radius.c_do_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i32 }
%struct.pam_response = type { %struct.pam_response* }
%struct.pam_conv = type { i32 (i32, %struct.pam_message**, %struct.pam_response**, i32)*, i32 }
%struct.pam_message = type { %struct.pam_response*, i8* }

@MAX_CHALLENGE_MSGS = common dso_local global i32 0, align 4
@LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Too many RADIUS challenge messages\00", align 1
@PAM_SERVICE_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"rad_cvt_string: out of memory\00", align 1
@PAM_TEXT_INFO = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"rad_get_attr: %s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"(null RADIUS challenge): \00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@PAM_PROMPT_ECHO_ON = common dso_local global i8* null, align 8
@PAM_CONV = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"do_challenge: cannot get PAM_CONV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.rad_handle*, i8*, i8*, i8*, i8*)* @do_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_challenge(i32* %0, %struct.rad_handle* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rad_handle*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.pam_response*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca %struct.pam_conv*, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.rad_handle* %1, %struct.rad_handle** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %28 = load i32, i32* @MAX_CHALLENGE_MSGS, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %20, align 8
  %31 = alloca %struct.pam_message, i64 %29, align 16
  store i64 %29, i64* %21, align 8
  %32 = load i32, i32* @MAX_CHALLENGE_MSGS, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca %struct.pam_message*, i64 %33, align 16
  store i64 %33, i64* %22, align 8
  store i8* null, i8** %18, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %24, align 4
  br label %35

35:                                               ; preds = %84, %6
  %36 = load %struct.rad_handle*, %struct.rad_handle** %9, align 8
  %37 = call i32 @rad_get_attr(%struct.rad_handle* %36, i8** %16, i64* %17)
  store i32 %37, i32* %15, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %85

39:                                               ; preds = %35
  %40 = load i32, i32* %15, align 4
  switch i32 %40, label %84 [
    i32 128, label %41
    i32 129, label %44
  ]

41:                                               ; preds = %39
  %42 = load i8*, i8** %16, align 8
  store i8* %42, i8** %18, align 8
  %43 = load i64, i64* %17, align 8
  store i64 %43, i64* %19, align 8
  br label %84

44:                                               ; preds = %39
  %45 = load i32, i32* %24, align 4
  %46 = load i32, i32* @MAX_CHALLENGE_MSGS, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @LOG_CRIT, align 4
  %50 = call i32 (i32, i8*, ...) @syslog(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @PAM_SERVICE_ERR, align 4
  store i32 %51, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %217

52:                                               ; preds = %44
  %53 = load i8*, i8** %16, align 8
  %54 = load i64, i64* %17, align 8
  %55 = call %struct.pam_response* @rad_cvt_string(i8* %53, i64 %54)
  %56 = load i32, i32* %24, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %31, i64 %57
  %59 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %58, i32 0, i32 0
  store %struct.pam_response* %55, %struct.pam_response** %59, align 16
  %60 = load i32, i32* %24, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %31, i64 %61
  %63 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %62, i32 0, i32 0
  %64 = load %struct.pam_response*, %struct.pam_response** %63, align 16
  %65 = icmp eq %struct.pam_response* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %52
  %67 = load i32, i32* @LOG_CRIT, align 4
  %68 = call i32 (i32, i8*, ...) @syslog(i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @PAM_SERVICE_ERR, align 4
  store i32 %69, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %217

70:                                               ; preds = %52
  %71 = load i8*, i8** @PAM_TEXT_INFO, align 8
  %72 = load i32, i32* %24, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %31, i64 %73
  %75 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %74, i32 0, i32 1
  store i8* %71, i8** %75, align 8
  %76 = load i32, i32* %24, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %31, i64 %77
  %79 = load i32, i32* %24, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.pam_message*, %struct.pam_message** %34, i64 %80
  store %struct.pam_message* %78, %struct.pam_message** %81, align 8
  %82 = load i32, i32* %24, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %24, align 4
  br label %84

84:                                               ; preds = %39, %70, %41
  br label %35

85:                                               ; preds = %35
  %86 = load i32, i32* %15, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* @LOG_CRIT, align 4
  %90 = load %struct.rad_handle*, %struct.rad_handle** %9, align 8
  %91 = call i32 @rad_strerror(%struct.rad_handle* %90)
  %92 = call i32 (i32, i8*, ...) @syslog(i32 %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @PAM_SERVICE_ERR, align 4
  store i32 %93, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %217

94:                                               ; preds = %85
  %95 = load i32, i32* %24, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %127

97:                                               ; preds = %94
  %98 = call %struct.pam_response* @strdup(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* %24, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %31, i64 %100
  %102 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %101, i32 0, i32 0
  store %struct.pam_response* %98, %struct.pam_response** %102, align 16
  %103 = load i32, i32* %24, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %31, i64 %104
  %106 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %105, i32 0, i32 0
  %107 = load %struct.pam_response*, %struct.pam_response** %106, align 16
  %108 = icmp eq %struct.pam_response* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %97
  %110 = load i32, i32* @LOG_CRIT, align 4
  %111 = call i32 (i32, i8*, ...) @syslog(i32 %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* @PAM_SERVICE_ERR, align 4
  store i32 %112, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %217

113:                                              ; preds = %97
  %114 = load i8*, i8** @PAM_TEXT_INFO, align 8
  %115 = load i32, i32* %24, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %31, i64 %116
  %118 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %117, i32 0, i32 1
  store i8* %114, i8** %118, align 8
  %119 = load i32, i32* %24, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %31, i64 %120
  %122 = load i32, i32* %24, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.pam_message*, %struct.pam_message** %34, i64 %123
  store %struct.pam_message* %121, %struct.pam_message** %124, align 8
  %125 = load i32, i32* %24, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %24, align 4
  br label %127

127:                                              ; preds = %113, %94
  %128 = load i8*, i8** @PAM_PROMPT_ECHO_ON, align 8
  %129 = load i32, i32* %24, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %31, i64 %131
  %133 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %132, i32 0, i32 1
  store i8* %128, i8** %133, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* @PAM_CONV, align 4
  %136 = call i32 @pam_get_item(i32* %134, i32 %135, i8** %25)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* @PAM_SUCCESS, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %127
  %140 = load i32, i32* @LOG_CRIT, align 4
  %141 = call i32 (i32, i8*, ...) @syslog(i32 %140, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %142 = load i32, i32* %14, align 4
  store i32 %142, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %217

143:                                              ; preds = %127
  %144 = load i8*, i8** %25, align 8
  %145 = bitcast i8* %144 to %struct.pam_conv*
  store %struct.pam_conv* %145, %struct.pam_conv** %26, align 8
  %146 = load %struct.pam_conv*, %struct.pam_conv** %26, align 8
  %147 = getelementptr inbounds %struct.pam_conv, %struct.pam_conv* %146, i32 0, i32 0
  %148 = load i32 (i32, %struct.pam_message**, %struct.pam_response**, i32)*, i32 (i32, %struct.pam_message**, %struct.pam_response**, i32)** %147, align 8
  %149 = load i32, i32* %24, align 4
  %150 = load %struct.pam_conv*, %struct.pam_conv** %26, align 8
  %151 = getelementptr inbounds %struct.pam_conv, %struct.pam_conv* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 %148(i32 %149, %struct.pam_message** %34, %struct.pam_response** %23, i32 %152)
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* @PAM_SUCCESS, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %143
  %157 = load i32, i32* %14, align 4
  store i32 %157, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %217

158:                                              ; preds = %143
  %159 = load %struct.rad_handle*, %struct.rad_handle** %9, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = load %struct.pam_response*, %struct.pam_response** %23, align 8
  %162 = load i32, i32* %24, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %161, i64 %164
  %166 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %165, i32 0, i32 0
  %167 = load %struct.pam_response*, %struct.pam_response** %166, align 8
  %168 = load i8*, i8** %11, align 8
  %169 = load i8*, i8** %12, align 8
  %170 = load i8*, i8** %13, align 8
  %171 = load i8*, i8** %18, align 8
  %172 = load i64, i64* %19, align 8
  %173 = call i32 @build_access_request(%struct.rad_handle* %159, i8* %160, %struct.pam_response* %167, i8* %168, i8* %169, i8* %170, i8* %171, i64 %172)
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %177

175:                                              ; preds = %158
  %176 = load i32, i32* @PAM_SERVICE_ERR, align 4
  store i32 %176, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %217

177:                                              ; preds = %158
  %178 = load %struct.pam_response*, %struct.pam_response** %23, align 8
  %179 = load i32, i32* %24, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %178, i64 %181
  %183 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %182, i32 0, i32 0
  %184 = load %struct.pam_response*, %struct.pam_response** %183, align 8
  %185 = load %struct.pam_response*, %struct.pam_response** %23, align 8
  %186 = load i32, i32* %24, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %185, i64 %188
  %190 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %189, i32 0, i32 0
  %191 = load %struct.pam_response*, %struct.pam_response** %190, align 8
  %192 = call i32 @strlen(%struct.pam_response* %191)
  %193 = call i32 @memset(%struct.pam_response* %184, i32 0, i32 %192)
  %194 = load %struct.pam_response*, %struct.pam_response** %23, align 8
  %195 = load i32, i32* %24, align 4
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %194, i64 %197
  %199 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %198, i32 0, i32 0
  %200 = load %struct.pam_response*, %struct.pam_response** %199, align 8
  %201 = call i32 @free(%struct.pam_response* %200)
  %202 = load %struct.pam_response*, %struct.pam_response** %23, align 8
  %203 = call i32 @free(%struct.pam_response* %202)
  br label %204

204:                                              ; preds = %207, %177
  %205 = load i32, i32* %24, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %204
  %208 = load i32, i32* %24, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %24, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %31, i64 %210
  %212 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %211, i32 0, i32 0
  %213 = load %struct.pam_response*, %struct.pam_response** %212, align 16
  %214 = call i32 @free(%struct.pam_response* %213)
  br label %204

215:                                              ; preds = %204
  %216 = load i32, i32* @PAM_SUCCESS, align 4
  store i32 %216, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %217

217:                                              ; preds = %215, %175, %156, %139, %109, %88, %66, %48
  %218 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %218)
  %219 = load i32, i32* %7, align 4
  ret i32 %219
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rad_get_attr(%struct.rad_handle*, i8**, i64*) #2

declare dso_local i32 @syslog(i32, i8*, ...) #2

declare dso_local %struct.pam_response* @rad_cvt_string(i8*, i64) #2

declare dso_local i32 @rad_strerror(%struct.rad_handle*) #2

declare dso_local %struct.pam_response* @strdup(i8*) #2

declare dso_local i32 @pam_get_item(i32*, i32, i8**) #2

declare dso_local i32 @build_access_request(%struct.rad_handle*, i8*, %struct.pam_response*, i8*, i8*, i8*, i8*, i64) #2

declare dso_local i32 @memset(%struct.pam_response*, i32, i32) #2

declare dso_local i32 @strlen(%struct.pam_response*) #2

declare dso_local i32 @free(%struct.pam_response*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
