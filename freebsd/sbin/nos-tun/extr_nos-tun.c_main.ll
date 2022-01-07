; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nos-tun/extr_nos-tun.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nos-tun/extr_nos-tun.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ip = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"d:s:t:p:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"nos-tun\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@net = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"can't open socket - %m\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"can't bind source address - %m\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"can't connect to target - %m\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@tun = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"interrupted select\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"timeout in select\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"can't send - %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr, align 4
  %17 = alloca %struct.sockaddr, align 4
  %18 = alloca %struct.sockaddr, align 4
  %19 = alloca %struct.sockaddr_in*, align 8
  %20 = alloca [8192 x i8], align 16
  %21 = alloca %struct.ip*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %25 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  %26 = bitcast i8* %25 to %struct.ip*
  store %struct.ip* %26, %struct.ip** %21, align 8
  br label %27

27:                                               ; preds = %42, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 @getopt(i32 %28, i8** %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %6, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %42 [
    i32 100, label %34
    i32 115, label %36
    i32 116, label %38
    i32 112, label %40
  ]

34:                                               ; preds = %32
  %35 = load i8*, i8** @optarg, align 8
  store i8* %35, i8** %11, align 8
  br label %42

36:                                               ; preds = %32
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** %10, align 8
  br label %42

38:                                               ; preds = %32
  %39 = load i8*, i8** @optarg, align 8
  store i8* %39, i8** %9, align 8
  br label %42

40:                                               ; preds = %32
  %41 = load i8*, i8** @optarg, align 8
  store i8* %41, i8** %14, align 8
  br label %42

42:                                               ; preds = %32, %40, %38, %36, %34
  br label %27

43:                                               ; preds = %27
  %44 = load i64, i64* @optind, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %4, align 4
  %49 = load i64, i64* @optind, align 8
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 %49
  store i8** %51, i8*** %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 2
  br i1 %56, label %66, label %57

57:                                               ; preds = %54, %43
  %58 = load i8*, i8** %9, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %10, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %11, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63, %60, %57, %54
  %67 = call i32 (...) @usage()
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i8*, i8** %14, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 94, i32* %15, align 4
  br label %75

72:                                               ; preds = %68
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 @atoi(i8* %73)
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %72, %71
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8**, i8*** %5, align 8
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %12, align 8
  br label %87

81:                                               ; preds = %75
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i32 1
  store i8** %83, i8*** %5, align 8
  %84 = load i8*, i8** %82, align 8
  store i8* %84, i8** %13, align 8
  %85 = load i8**, i8*** %5, align 8
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %12, align 8
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i32, i32* @LOG_PID, align 4
  %89 = load i32, i32* @LOG_DAEMON, align 4
  %90 = call i32 @openlog(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i8*, i8** %10, align 8
  %92 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_in*
  %93 = call i64 @Set_address(i8* %91, %struct.sockaddr_in* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = call i32 (...) @closelog()
  %97 = call i32 @exit(i32 2) #3
  unreachable

98:                                               ; preds = %87
  %99 = load i8*, i8** %9, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = call i64 @tun_open(i8* %99, %struct.sockaddr* %16, i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = call i32 (...) @closelog()
  %105 = call i32 @exit(i32 3) #3
  unreachable

106:                                              ; preds = %98
  %107 = bitcast %struct.sockaddr* %17 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %107, %struct.sockaddr_in** %19, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load %struct.sockaddr_in*, %struct.sockaddr_in** %19, align 8
  %110 = call i64 @Set_address(i8* %108, %struct.sockaddr_in* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = call i32 @Finish(i32 4)
  br label %114

114:                                              ; preds = %112, %106
  %115 = load i32, i32* @AF_INET, align 4
  %116 = load i32, i32* @SOCK_RAW, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @socket(i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* @net, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32, i32* @LOG_ERR, align 4
  %122 = call i32 @syslog(i32 %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %123 = call i32 @Finish(i32 5)
  br label %124

124:                                              ; preds = %120, %114
  %125 = load i8*, i8** %13, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %143

127:                                              ; preds = %124
  %128 = load i8*, i8** %13, align 8
  %129 = bitcast %struct.sockaddr* %18 to %struct.sockaddr_in*
  %130 = call i64 @Set_address(i8* %128, %struct.sockaddr_in* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = call i32 @Finish(i32 9)
  br label %134

134:                                              ; preds = %132, %127
  %135 = load i32, i32* @net, align 4
  %136 = call i64 @bind(i32 %135, %struct.sockaddr* %18, i32 4)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load i32, i32* @LOG_ERR, align 4
  %140 = call i32 @syslog(i32 %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %141 = call i32 @Finish(i32 10)
  br label %142

142:                                              ; preds = %138, %134
  br label %143

143:                                              ; preds = %142, %124
  %144 = load i32, i32* @net, align 4
  %145 = call i64 @connect(i32 %144, %struct.sockaddr* %17, i32 8)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load i32, i32* @LOG_ERR, align 4
  %149 = call i32 @syslog(i32 %148, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %150 = load i32, i32* @net, align 4
  %151 = call i32 @close(i32 %150)
  %152 = call i32 @Finish(i32 6)
  br label %153

153:                                              ; preds = %147, %143
  %154 = call i32 @daemon(i32 0, i32 0)
  %155 = load i32, i32* @SIGHUP, align 4
  %156 = call i32 @signal(i32 %155, i32 (i32)* @Finish)
  %157 = load i32, i32* @SIGINT, align 4
  %158 = call i32 @signal(i32 %157, i32 (i32)* @Finish)
  %159 = load i32, i32* @SIGTERM, align 4
  %160 = call i32 @signal(i32 %159, i32 (i32)* @Finish)
  %161 = load i32, i32* @tun, align 4
  %162 = load i32, i32* @net, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %153
  %165 = load i32, i32* @tun, align 4
  store i32 %165, i32* %24, align 4
  br label %168

166:                                              ; preds = %153
  %167 = load i32, i32* @net, align 4
  store i32 %167, i32* %24, align 4
  br label %168

168:                                              ; preds = %166, %164
  br label %169

169:                                              ; preds = %244, %168
  %170 = call i32 @FD_ZERO(i32* %22)
  %171 = load i32, i32* @tun, align 4
  %172 = call i32 @FD_SET(i32 %171, i32* %22)
  %173 = load i32, i32* @net, align 4
  %174 = call i32 @FD_SET(i32 %173, i32* %22)
  %175 = load i32, i32* %24, align 4
  %176 = add nsw i32 %175, 1
  %177 = call i32 @select(i32 %176, i32* %22, i32* null, i32* null, i32* null)
  store i32 %177, i32* %23, align 4
  %178 = load i32, i32* %23, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %169
  %181 = load i32, i32* @LOG_ERR, align 4
  %182 = call i32 @syslog(i32 %181, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %183 = load i32, i32* @net, align 4
  %184 = call i32 @close(i32 %183)
  %185 = call i32 @Finish(i32 7)
  br label %186

186:                                              ; preds = %180, %169
  %187 = load i32, i32* %23, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load i32, i32* @LOG_ERR, align 4
  %191 = call i32 @syslog(i32 %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %192 = load i32, i32* @net, align 4
  %193 = call i32 @close(i32 %192)
  %194 = call i32 @Finish(i32 8)
  br label %195

195:                                              ; preds = %189, %186
  %196 = load i32, i32* @net, align 4
  %197 = call i64 @FD_ISSET(i32 %196, i32* %22)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %227

199:                                              ; preds = %195
  %200 = load i32, i32* @net, align 4
  %201 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  %202 = call i32 @read(i32 %200, i8* %201, i32 8192)
  store i32 %202, i32* %7, align 4
  %203 = load %struct.ip*, %struct.ip** %21, align 8
  %204 = getelementptr inbounds %struct.ip, %struct.ip* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.sockaddr_in*, %struct.sockaddr_in** %19, align 8
  %208 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %206, %210
  br i1 %211, label %212, label %226

212:                                              ; preds = %199
  %213 = load %struct.ip*, %struct.ip** %21, align 8
  %214 = getelementptr inbounds %struct.ip, %struct.ip* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = shl i32 %215, 2
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* @tun, align 4
  %218 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* %8, align 4
  %224 = sub nsw i32 %222, %223
  %225 = call i32 @write(i32 %217, i8* %221, i32 %224)
  br label %226

226:                                              ; preds = %212, %199
  br label %227

227:                                              ; preds = %226, %195
  %228 = load i32, i32* @tun, align 4
  %229 = call i64 @FD_ISSET(i32 %228, i32* %22)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %227
  %232 = load i32, i32* @tun, align 4
  %233 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  %234 = call i32 @read(i32 %232, i8* %233, i32 8192)
  store i32 %234, i32* %7, align 4
  %235 = load i32, i32* @net, align 4
  %236 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  %237 = load i32, i32* %7, align 4
  %238 = call i64 @send(i32 %235, i8* %236, i32 %237, i32 0)
  %239 = icmp sle i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %231
  %241 = load i32, i32* @LOG_ERR, align 4
  %242 = call i32 @syslog(i32 %241, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %243

243:                                              ; preds = %240, %231
  br label %244

244:                                              ; preds = %243, %227
  br label %169
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i64 @Set_address(i8*, %struct.sockaddr_in*) #1

declare dso_local i32 @closelog(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @tun_open(i8*, %struct.sockaddr*, i8*) #1

declare dso_local i32 @Finish(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @daemon(i32, i32) #1

declare dso_local i32 @signal(i32, i32 (i32)*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @send(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
