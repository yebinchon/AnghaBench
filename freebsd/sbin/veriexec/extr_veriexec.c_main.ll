; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/veriexec/extr_veriexec.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/veriexec/extr_veriexec.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_DEV_VERIEXEC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@dev_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"C:i:x:vz:\00", align 1
@optarg = common dso_local global i8* null, align 8
@Cdir = common dso_local global i8* null, align 8
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot open veriexec\00", align 1
@VERIEXEC_GETSTATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Cannot get veriexec state\00", align 1
@VERIEXEC_STATE_ACTIVE = common dso_local global i64 0, align 8
@VERIEXEC_STATE_ENFORCE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@VERIEXEC_STATE_LOCKED = common dso_local global i64 0, align 8
@VERIEXEC_STATE_LOADED = common dso_local global i64 0, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"unknown state %s\00", align 1
@Verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@VERIEXEC_ACTIVE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@VERIEXEC_DEBUG_OFF = common dso_local global i64 0, align 8
@VERIEXEC_DEBUG_ON = common dso_local global i64 0, align 8
@VERIEXEC_ENFORCE = common dso_local global i64 0, align 8
@VERIEXEC_LOCK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"unknown command %s\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"cannot %s veriexec\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"debug is: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%#o\0A\00", align 1
@EX_OK = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_AUTH = common dso_local global i32 0, align 4
@EX_OSFILE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"cannot initialize trust store\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"cannot load %s\00", align 1
@VERIEXEC_GETVERSION = common dso_local global i64 0, align 8
@VeriexecVersion = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @_PATH_DEV_VERIEXEC, align 4
  %10 = load i32, i32* @O_WRONLY, align 4
  %11 = call i32 @open(i32 %9, i32 %10, i32 0)
  store i32 %11, i32* @dev_fd, align 4
  br label %12

12:                                               ; preds = %180, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %181

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %180 [
    i32 67, label %19
    i32 105, label %21
    i32 118, label %66
    i32 120, label %69
    i32 122, label %96
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** @optarg, align 8
  store i8* %20, i8** @Cdir, align 8
  br label %180

21:                                               ; preds = %17
  %22 = load i32, i32* @dev_fd, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EX_UNAVAILABLE, align 4
  %26 = call i32 (i32, i8*, ...) @err(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @dev_fd, align 4
  %29 = load i64, i64* @VERIEXEC_GETSTATE, align 8
  %30 = call i64 @ioctl(i32 %28, i64 %29, i32* %8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EX_UNAVAILABLE, align 4
  %34 = call i32 (i32, i8*, ...) @err(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i8*, i8** @optarg, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %54 [
    i32 97, label %40
    i32 101, label %42
    i32 108, label %44
  ]

40:                                               ; preds = %35
  %41 = load i64, i64* @VERIEXEC_STATE_ACTIVE, align 8
  store i64 %41, i64* %6, align 8
  br label %58

42:                                               ; preds = %35
  %43 = load i64, i64* @VERIEXEC_STATE_ENFORCE, align 8
  store i64 %43, i64* %6, align 8
  br label %58

44:                                               ; preds = %35
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32 @strncmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* @VERIEXEC_STATE_LOCKED, align 8
  br label %52

50:                                               ; preds = %44
  %51 = load i64, i64* @VERIEXEC_STATE_LOADED, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i64 [ %49, %48 ], [ %51, %50 ]
  store i64 %53, i64* %6, align 8
  br label %58

54:                                               ; preds = %35
  %55 = load i32, i32* @EX_USAGE, align 4
  %56 = load i8*, i8** @optarg, align 8
  %57 = call i32 (i32, i8*, ...) @errx(i32 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %54, %52, %42, %40
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %6, align 8
  %62 = and i64 %60, %61
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @exit(i32 %64) #3
  unreachable

66:                                               ; preds = %17
  %67 = load i32, i32* @Verbose, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @Verbose, align 4
  br label %180

69:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %90, %69
  %71 = load i32, i32* @optind, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* @optind, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @veriexec_check_path(i8* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* @optind, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %87)
  store i32 2, i32* %8, align 4
  br label %89

89:                                               ; preds = %82, %74
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* @optind, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @optind, align 4
  br label %70

93:                                               ; preds = %70
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @exit(i32 %94) #3
  unreachable

96:                                               ; preds = %17
  %97 = load i8*, i8** @optarg, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  switch i32 %100, label %139 [
    i32 97, label %101
    i32 100, label %103
    i32 101, label %133
    i32 103, label %135
    i32 108, label %137
  ]

101:                                              ; preds = %96
  %102 = load i64, i64* @VERIEXEC_ACTIVE, align 8
  store i64 %102, i64* %6, align 8
  br label %143

103:                                              ; preds = %96
  %104 = load i8*, i8** @optarg, align 8
  %105 = call i32 @strstr(i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i64, i64* @VERIEXEC_DEBUG_OFF, align 8
  br label %111

109:                                              ; preds = %103
  %110 = load i64, i64* @VERIEXEC_DEBUG_ON, align 8
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i64 [ %108, %107 ], [ %110, %109 ]
  store i64 %112, i64* %6, align 8
  %113 = load i32, i32* @optind, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @VERIEXEC_DEBUG_ON, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load i8**, i8*** %5, align 8
  %122 = load i32, i32* @optind, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @atoi(i8* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i64, i64* @VERIEXEC_DEBUG_OFF, align 8
  store i64 %130, i64* %6, align 8
  br label %131

131:                                              ; preds = %129, %120
  br label %132

132:                                              ; preds = %131, %116, %111
  br label %143

133:                                              ; preds = %96
  %134 = load i64, i64* @VERIEXEC_ENFORCE, align 8
  store i64 %134, i64* %6, align 8
  br label %143

135:                                              ; preds = %96
  %136 = load i64, i64* @VERIEXEC_GETSTATE, align 8
  store i64 %136, i64* %6, align 8
  br label %143

137:                                              ; preds = %96
  %138 = load i64, i64* @VERIEXEC_LOCK, align 8
  store i64 %138, i64* %6, align 8
  br label %143

139:                                              ; preds = %96
  %140 = load i32, i32* @EX_USAGE, align 4
  %141 = load i8*, i8** @optarg, align 8
  %142 = call i32 (i32, i8*, ...) @errx(i32 %140, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %141)
  br label %143

143:                                              ; preds = %139, %137, %135, %133, %132, %101
  %144 = load i32, i32* @dev_fd, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* @EX_UNAVAILABLE, align 4
  %148 = call i32 (i32, i8*, ...) @err(i32 %147, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* @dev_fd, align 4
  %151 = load i64, i64* %6, align 8
  %152 = call i64 @ioctl(i32 %150, i64 %151, i32* %8)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i32, i32* @EX_UNAVAILABLE, align 4
  %156 = load i8*, i8** @optarg, align 8
  %157 = call i32 (i32, i8*, ...) @err(i32 %155, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %154, %149
  %159 = load i64, i64* %6, align 8
  %160 = load i64, i64* @VERIEXEC_DEBUG_ON, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = load i64, i64* %6, align 8
  %164 = load i64, i64* @VERIEXEC_DEBUG_OFF, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %162, %158
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %167)
  br label %177

169:                                              ; preds = %162
  %170 = load i64, i64* %6, align 8
  %171 = load i64, i64* @VERIEXEC_GETSTATE, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %173, %169
  br label %177

177:                                              ; preds = %176, %166
  %178 = load i32, i32* @EX_OK, align 4
  %179 = call i32 @exit(i32 %178) #3
  unreachable

180:                                              ; preds = %17, %66, %19
  br label %12

181:                                              ; preds = %12
  %182 = call i32 (...) @getprogname()
  %183 = load i32, i32* @LOG_PID, align 4
  %184 = load i32, i32* @LOG_AUTH, align 4
  %185 = call i32 @openlog(i32 %182, i32 %183, i32 %184)
  %186 = call i32 (...) @ve_trust_init()
  %187 = icmp slt i32 %186, 1
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  %189 = load i32, i32* @EX_OSFILE, align 4
  %190 = call i32 (i32, i8*, ...) @errx(i32 %189, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %181
  br label %192

192:                                              ; preds = %213, %191
  %193 = load i32, i32* @optind, align 4
  %194 = load i32, i32* %4, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %216

196:                                              ; preds = %192
  %197 = load i8**, i8*** %5, align 8
  %198 = load i32, i32* @optind, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %197, i64 %199
  %201 = load i8*, i8** %200, align 8
  %202 = call i64 @veriexec_load(i8* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %196
  %205 = load i32, i32* @EX_DATAERR, align 4
  %206 = load i8**, i8*** %5, align 8
  %207 = load i32, i32* @optind, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 (i32, i8*, ...) @err(i32 %205, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %210)
  br label %212

212:                                              ; preds = %204, %196
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* @optind, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* @optind, align 4
  br label %192

216:                                              ; preds = %192
  %217 = load i32, i32* @EX_OK, align 4
  %218 = call i32 @exit(i32 %217) #3
  unreachable
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @ioctl(i32, i64, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @veriexec_check_path(i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @openlog(i32, i32, i32) #1

declare dso_local i32 @getprogname(...) #1

declare dso_local i32 @ve_trust_init(...) #1

declare dso_local i64 @veriexec_load(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
