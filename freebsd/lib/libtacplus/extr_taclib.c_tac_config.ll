; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i32 }

@MAXCONFLINE = common dso_local global i32 0, align 4
@PATH_TACPLUS_CONF = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Cannot open \22%s\22: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@ERRSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s:%d: line too long\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s:%d: missing newline\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s:%d: missing shared secret\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%s:%d: invalid port\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"%s:%d: invalid timeout\00", align 1
@TIMEOUT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"single-connection\00", align 1
@TAC_SRVR_SINGLE_CONNECT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"%s:%d: invalid option \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tac_config(%struct.tac_handle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tac_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i8*], align 16
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  store %struct.tac_handle* %0, %struct.tac_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %29 = load i32, i32* @MAXCONFLINE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %7, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %8, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i8*, i8** @PATH_TACPLUS_CONF, align 8
  store i8* %36, i8** %5, align 8
  br label %37

37:                                               ; preds = %35, %2
  %38 = load i8*, i8** %5, align 8
  %39 = call i32* @fopen(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %39, i32** %6, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @strerror(i32 %44)
  %46 = call i32 (%struct.tac_handle*, i8*, i8*, i32, ...) @generr(%struct.tac_handle* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %45)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %223

47:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %216, %213, %47
  %49 = trunc i64 %30 to i32
  %50 = load i32*, i32** %6, align 8
  %51 = call i32* @fgets(i8* %32, i32 %49, i32* %50)
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %217

53:                                               ; preds = %48
  %54 = load i32, i32* @ERRSIZE, align 4
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %15, align 8
  %57 = alloca i8, i64 %55, align 16
  store i64 %55, i64* %16, align 8
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  %60 = call i32 @strlen(i8* %32)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %32, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 10
  br i1 %67, label %68, label %84

68:                                               ; preds = %53
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 %30, 1
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (%struct.tac_handle*, i8*, i8*, i32, ...) @generr(%struct.tac_handle* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %75, i32 %76)
  br label %83

78:                                               ; preds = %68
  %79 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (%struct.tac_handle*, i8*, i8*, i32, ...) @generr(%struct.tac_handle* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %73
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %213

84:                                               ; preds = %53
  %85 = load i32, i32* %12, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %32, i64 %87
  store i8 0, i8* %88, align 1
  %89 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %90 = trunc i64 %55 to i32
  %91 = call i32 @split(i8* %32, i8** %89, i32 4, i8* %57, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 (%struct.tac_handle*, i8*, i8*, i32, ...) @generr(%struct.tac_handle* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %96, i32 %97, i8* %57)
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %213

99:                                               ; preds = %84
  %100 = load i32, i32* %14, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 2, i32* %11, align 4
  br label %213

103:                                              ; preds = %99
  %104 = load i32, i32* %14, align 4
  %105 = icmp slt i32 %104, 2
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 (%struct.tac_handle*, i8*, i8*, i32, ...) @generr(%struct.tac_handle* %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %108, i32 %109)
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %213

111:                                              ; preds = %103
  %112 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %113 = load i8*, i8** %112, align 16
  store i8* %113, i8** %17, align 8
  %114 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %20, align 8
  %116 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 2
  %117 = load i8*, i8** %116, align 16
  store i8* %117, i8** %21, align 8
  %118 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 3
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %22, align 8
  %120 = load i8*, i8** %17, align 8
  store i8* %120, i8** %18, align 8
  %121 = call i8* @strsep(i8** %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %121, i8** %17, align 8
  %122 = call i8* @strsep(i8** %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %122, i8** %19, align 8
  %123 = load i8*, i8** %19, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %145

125:                                              ; preds = %111
  %126 = load i8*, i8** %19, align 8
  %127 = call i8* @strtoul(i8* %126, i8** %23, i32 10)
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %25, align 4
  %129 = load i8*, i8** %19, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %125
  %135 = load i8*, i8** %23, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134, %125
  %140 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 (%struct.tac_handle*, i8*, i8*, i32, ...) @generr(%struct.tac_handle* %140, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %141, i32 %142)
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %213

144:                                              ; preds = %134
  br label %146

145:                                              ; preds = %111
  store i32 0, i32* %25, align 4
  br label %146

146:                                              ; preds = %145, %144
  %147 = load i8*, i8** %21, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %169

149:                                              ; preds = %146
  %150 = load i8*, i8** %21, align 8
  %151 = call i8* @strtoul(i8* %150, i8** %23, i32 10)
  %152 = ptrtoint i8* %151 to i64
  store i64 %152, i64* %24, align 8
  %153 = load i8*, i8** %21, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %149
  %159 = load i8*, i8** %23, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158, %149
  %164 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %165 = load i8*, i8** %5, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 (%struct.tac_handle*, i8*, i8*, i32, ...) @generr(%struct.tac_handle* %164, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %165, i32 %166)
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %213

168:                                              ; preds = %158
  br label %171

169:                                              ; preds = %146
  %170 = load i64, i64* @TIMEOUT, align 8
  store i64 %170, i64* %24, align 8
  br label %171

171:                                              ; preds = %169, %168
  store i32 0, i32* %26, align 4
  %172 = load i8*, i8** %22, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %189

174:                                              ; preds = %171
  %175 = load i8*, i8** %22, align 8
  %176 = call i64 @strcmp(i8* %175, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load i32, i32* @TAC_SRVR_SINGLE_CONNECT, align 4
  %180 = load i32, i32* %26, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %26, align 4
  br label %188

182:                                              ; preds = %174
  %183 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %184 = load i8*, i8** %5, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load i8*, i8** %22, align 8
  %187 = call i32 (%struct.tac_handle*, i8*, i8*, i32, ...) @generr(%struct.tac_handle* %183, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %184, i32 %185, i8* %186)
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %213

188:                                              ; preds = %178
  br label %189

189:                                              ; preds = %188, %171
  %190 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %191 = load i8*, i8** %17, align 8
  %192 = load i32, i32* %25, align 4
  %193 = load i8*, i8** %20, align 8
  %194 = load i64, i64* %24, align 8
  %195 = load i32, i32* %26, align 4
  %196 = call i32 @tac_add_server(%struct.tac_handle* %190, i8* %191, i32 %192, i8* %193, i64 %194, i32 %195)
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %212

198:                                              ; preds = %189
  %199 = load i32, i32* @ERRSIZE, align 4
  %200 = zext i32 %199 to i64
  %201 = call i8* @llvm.stacksave()
  store i8* %201, i8** %27, align 8
  %202 = alloca i8, i64 %200, align 16
  store i64 %200, i64* %28, align 8
  %203 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %204 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @strcpy(i8* %202, i32 %205)
  %207 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %208 = load i8*, i8** %5, align 8
  %209 = load i32, i32* %9, align 4
  %210 = call i32 (%struct.tac_handle*, i8*, i8*, i32, ...) @generr(%struct.tac_handle* %207, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %208, i32 %209, i8* %202)
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  %211 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %211)
  br label %213

212:                                              ; preds = %189
  store i32 0, i32* %11, align 4
  br label %213

213:                                              ; preds = %212, %198, %182, %163, %139, %106, %102, %94, %83
  %214 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i32, i32* %11, align 4
  switch i32 %215, label %226 [
    i32 0, label %216
    i32 3, label %217
    i32 2, label %48
  ]

216:                                              ; preds = %213
  br label %48

217:                                              ; preds = %213, %48
  %218 = trunc i64 %30 to i32
  %219 = call i32 @memset(i8* %32, i32 0, i32 %218)
  %220 = load i32*, i32** %6, align 8
  %221 = call i32 @fclose(i32* %220)
  %222 = load i32, i32* %10, align 4
  store i32 %222, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %223

223:                                              ; preds = %217, %41
  %224 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load i32, i32* %3, align 4
  ret i32 %225

226:                                              ; preds = %213
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @generr(%struct.tac_handle*, i8*, i8*, i32, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @split(i8*, i8**, i32, i8*, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i8* @strtoul(i8*, i8**, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @tac_add_server(%struct.tac_handle*, i8*, i32, i8*, i64, i32) #2

declare dso_local i32 @strcpy(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
