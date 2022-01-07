; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_flushroutes_fib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_flushroutes_fib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_msghdr = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"fib number %d is ignored\00", align 1
@CTL_NET = common dso_local global i32 0, align 4
@PF_ROUTE = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@NET_RT_DUMP = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"route-sysctl-estimate\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Routing table grew, retrying\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"route-sysctl-get\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"Examining routing table from sysctl\0A\00", align 1
@RTF_GATEWAY = common dso_local global i32 0, align 4
@af = common dso_local global i64 0, align 8
@debugonly = common dso_local global i64 0, align 8
@RTM_DELETE = common dso_local global i32 0, align 4
@s = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"write to routing socket\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"got only %d for rlen\0A\00", align 1
@qflag = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"%-20.20s \00", align 1
@RTF_HOST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"-fib %-3d \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @flushroutes_fib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flushroutes_fib(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt_msghdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [7 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca %struct.sockaddr*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @set_sofib(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %2, align 4
  br label %221

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %154, %68, %24
  %26 = load i32, i32* @CTL_NET, align 4
  %27 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  store i32 %26, i32* %27, align 16
  %28 = load i32, i32* @PF_ROUTE, align 4
  %29 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 2
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* @AF_UNSPEC, align 4
  %32 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 3
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @NET_RT_DUMP, align 4
  %34 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 4
  store i32 %33, i32* %34, align 16
  %35 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 5
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 6
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %39 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %40 = call i32 @nitems(i32* %39)
  %41 = call i64 @sysctl(i32* %38, i32 %40, i8* null, i64* %5, i32* null, i32 0)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = load i32, i32* @EX_OSERR, align 4
  %45 = call i32 @err(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %25
  %47 = load i64, i64* %5, align 8
  %48 = call i8* @malloc(i64 %47)
  store i8* %48, i8** %6, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EX_OSERR, align 4
  %52 = call i32 @errx(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %46
  %54 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %55 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %56 = call i32 @nitems(i32* %55)
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @sysctl(i32* %54, i32 %56, i8* %57, i64* %5, i32* null, i32 0)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %53
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @ENOMEM, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  %67 = icmp slt i32 %65, 10
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 @sleep(i32 1)
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @free(i8* %71)
  br label %25

73:                                               ; preds = %64, %60
  %74 = load i32, i32* @EX_OSERR, align 4
  %75 = call i32 @err(i32 %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %53
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %8, align 8
  %80 = load i64, i64* @verbose, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %76
  store i32 0, i32* %11, align 4
  %85 = load i8*, i8** %6, align 8
  store i8* %85, i8** %7, align 8
  br label %86

86:                                               ; preds = %210, %84
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = icmp ult i8* %87, %88
  br i1 %89, label %90, label %217

90:                                               ; preds = %86
  %91 = load i8*, i8** %7, align 8
  %92 = bitcast i8* %91 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %92, %struct.rt_msghdr** %4, align 8
  %93 = load i64, i64* @verbose, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %97 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %98 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @print_rtmsg(%struct.rt_msghdr* %96, i32 %99)
  br label %101

101:                                              ; preds = %95, %90
  %102 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %103 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @RTF_GATEWAY, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %210

109:                                              ; preds = %101
  %110 = load i64, i64* @af, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %114 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %113, i64 1
  %115 = bitcast %struct.rt_msghdr* %114 to %struct.sockaddr*
  store %struct.sockaddr* %115, %struct.sockaddr** %14, align 8
  %116 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %117 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @af, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %210

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122, %109
  %124 = load i64, i64* @debugonly, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %210

127:                                              ; preds = %123
  %128 = load i32, i32* @RTM_DELETE, align 4
  %129 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %130 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %133 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @s, align 4
  %135 = load i8*, i8** %7, align 8
  %136 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %137 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @write(i32 %134, i8* %135, i32 %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %127
  %143 = load i64, i64* @errno, align 8
  %144 = load i64, i64* @EPERM, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %142, %127
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %151 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %156 = load i32, i32* %10, align 4
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %156)
  %158 = load i8*, i8** %6, align 8
  %159 = call i32 @free(i8* %158)
  br label %25

160:                                              ; preds = %148
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  %163 = load i64, i64* @qflag, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %210

166:                                              ; preds = %160
  %167 = load i64, i64* @verbose, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @print_rtmsg(%struct.rt_msghdr* %170, i32 %171)
  br label %209

173:                                              ; preds = %166
  %174 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %175 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %174, i64 1
  %176 = bitcast %struct.rt_msghdr* %175 to %struct.sockaddr*
  store %struct.sockaddr* %176, %struct.sockaddr** %15, align 8
  %177 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %178 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @RTF_HOST, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %173
  %184 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %185 = call i8* @routename(%struct.sockaddr* %184)
  br label %189

186:                                              ; preds = %173
  %187 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %188 = call i8* @netname(%struct.sockaddr* %187)
  br label %189

189:                                              ; preds = %186, %183
  %190 = phi i8* [ %185, %183 ], [ %188, %186 ]
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %190)
  %192 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %193 = call i32 @SA_SIZE(%struct.sockaddr* %192)
  %194 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %195 = bitcast %struct.sockaddr* %194 to i8*
  %196 = sext i32 %193 to i64
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  %198 = bitcast i8* %197 to %struct.sockaddr*
  store %struct.sockaddr* %198, %struct.sockaddr** %15, align 8
  %199 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %200 = call i8* @routename(%struct.sockaddr* %199)
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %200)
  %202 = load i32, i32* %3, align 4
  %203 = icmp sge i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %189
  %205 = load i32, i32* %3, align 4
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %204, %189
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %209

209:                                              ; preds = %207, %169
  br label %210

210:                                              ; preds = %209, %165, %126, %121, %108
  %211 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %212 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i8*, i8** %7, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8* %216, i8** %7, align 8
  br label %86

217:                                              ; preds = %86
  %218 = load i8*, i8** %6, align 8
  %219 = call i32 @free(i8* %218)
  %220 = load i32, i32* %13, align 4
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %217, %20
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local i32 @set_sofib(i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_rtmsg(%struct.rt_msghdr*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i8* @routename(%struct.sockaddr*) #1

declare dso_local i8* @netname(%struct.sockaddr*) #1

declare dso_local i32 @SA_SIZE(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
