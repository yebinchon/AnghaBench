; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protocol = type { i32 (%struct.protocol*)*, %struct.interface_info*, %struct.protocol*, i32 }
%struct.interface_info = type { i64 }
%struct.timeout = type { i64, %struct.timeout*, i32, i32 (i32)* }
%struct.pollfd = type { i32, i32, i32 }

@protocols = common dso_local global %struct.protocol* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Can't allocate poll structures.\00", align 1
@timeouts = common dso_local global %struct.timeout* null, align 8
@cur_time = common dso_local global i64 0, align 8
@free_timeouts = common dso_local global %struct.timeout* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"No live interfaces to poll on - exiting.\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"poll: %m\00", align 1
@POLLHUP = common dso_local global i32 0, align 4
@interfaces_invalidated = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispatch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.protocol*, align 8
  %7 = alloca %struct.pollfd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeout*, align 8
  %10 = alloca %struct.interface_info*, align 8
  %11 = alloca %struct.interface_info*, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.protocol*, %struct.protocol** @protocols, align 8
  store %struct.protocol* %12, %struct.protocol** %6, align 8
  br label %13

13:                                               ; preds = %19, %0
  %14 = load %struct.protocol*, %struct.protocol** %6, align 8
  %15 = icmp ne %struct.protocol* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16
  %20 = load %struct.protocol*, %struct.protocol** %6, align 8
  %21 = getelementptr inbounds %struct.protocol, %struct.protocol* %20, i32 0, i32 2
  %22 = load %struct.protocol*, %struct.protocol** %21, align 8
  store %struct.protocol* %22, %struct.protocol** %6, align 8
  br label %13

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 12
  %27 = trunc i64 %26 to i32
  %28 = call %struct.pollfd* @malloc(i32 %27)
  store %struct.pollfd* %28, %struct.pollfd** %7, align 8
  %29 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %30 = icmp eq %struct.pollfd* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %23
  br label %34

34:                                               ; preds = %212, %33
  br label %35

35:                                               ; preds = %44, %34
  %36 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  %37 = icmp ne %struct.timeout* %36, null
  br i1 %37, label %38, label %77

38:                                               ; preds = %35
  %39 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  %40 = getelementptr inbounds %struct.timeout, %struct.timeout* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @cur_time, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  store %struct.timeout* %45, %struct.timeout** %9, align 8
  %46 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  %47 = getelementptr inbounds %struct.timeout, %struct.timeout* %46, i32 0, i32 1
  %48 = load %struct.timeout*, %struct.timeout** %47, align 8
  store %struct.timeout* %48, %struct.timeout** @timeouts, align 8
  %49 = load %struct.timeout*, %struct.timeout** %9, align 8
  %50 = getelementptr inbounds %struct.timeout, %struct.timeout* %49, i32 0, i32 3
  %51 = load i32 (i32)*, i32 (i32)** %50, align 8
  %52 = load %struct.timeout*, %struct.timeout** %9, align 8
  %53 = getelementptr inbounds %struct.timeout, %struct.timeout* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %51(i32 %54)
  %56 = load %struct.timeout*, %struct.timeout** @free_timeouts, align 8
  %57 = load %struct.timeout*, %struct.timeout** %9, align 8
  %58 = getelementptr inbounds %struct.timeout, %struct.timeout* %57, i32 0, i32 1
  store %struct.timeout* %56, %struct.timeout** %58, align 8
  %59 = load %struct.timeout*, %struct.timeout** %9, align 8
  store %struct.timeout* %59, %struct.timeout** @free_timeouts, align 8
  br label %35

60:                                               ; preds = %38
  %61 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  %62 = getelementptr inbounds %struct.timeout, %struct.timeout* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @cur_time, align 8
  %65 = sub nsw i64 %63, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @INT_MAX, align 4
  %69 = sdiv i32 %68, 1000
  %70 = icmp sgt i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load i32, i32* @INT_MAX, align 4
  %73 = sdiv i32 %72, 1000
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %71, %60
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 %75, 1000
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %74
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %79 = load %struct.protocol*, %struct.protocol** @protocols, align 8
  store %struct.protocol* %79, %struct.protocol** %6, align 8
  br label %80

80:                                               ; preds = %125, %78
  %81 = load %struct.protocol*, %struct.protocol** %6, align 8
  %82 = icmp ne %struct.protocol* %81, null
  br i1 %82, label %83, label %129

83:                                               ; preds = %80
  %84 = load %struct.protocol*, %struct.protocol** %6, align 8
  %85 = getelementptr inbounds %struct.protocol, %struct.protocol* %84, i32 0, i32 1
  %86 = load %struct.interface_info*, %struct.interface_info** %85, align 8
  store %struct.interface_info* %86, %struct.interface_info** %10, align 8
  %87 = load %struct.interface_info*, %struct.interface_info** %10, align 8
  %88 = icmp eq %struct.interface_info* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %83
  %90 = load %struct.interface_info*, %struct.interface_info** %10, align 8
  %91 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89, %83
  br label %125

95:                                               ; preds = %89
  %96 = load %struct.protocol*, %struct.protocol** %6, align 8
  %97 = getelementptr inbounds %struct.protocol, %struct.protocol* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %99, i64 %101
  %103 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %102, i32 0, i32 2
  store i32 %98, i32* %103, align 4
  %104 = load i32, i32* @POLLIN, align 4
  %105 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %105, i64 %107
  %109 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %108, i32 0, i32 0
  store i32 %104, i32* %109, align 4
  %110 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %110, i64 %112
  %114 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %3, align 4
  %117 = load %struct.protocol*, %struct.protocol** %6, align 8
  %118 = getelementptr inbounds %struct.protocol, %struct.protocol* %117, i32 0, i32 0
  %119 = load i32 (%struct.protocol*)*, i32 (%struct.protocol*)** %118, align 8
  %120 = icmp eq i32 (%struct.protocol*)* %119, @got_one
  br i1 %120, label %121, label %124

121:                                              ; preds = %95
  %122 = load i32, i32* %2, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %121, %95
  br label %125

125:                                              ; preds = %124, %94
  %126 = load %struct.protocol*, %struct.protocol** %6, align 8
  %127 = getelementptr inbounds %struct.protocol, %struct.protocol* %126, i32 0, i32 2
  %128 = load %struct.protocol*, %struct.protocol** %127, align 8
  store %struct.protocol* %128, %struct.protocol** %6, align 8
  br label %80

129:                                              ; preds = %80
  %130 = load i32, i32* %2, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %129
  %135 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @poll(%struct.pollfd* %135, i32 %136, i32 %137)
  store i32 %138, i32* %1, align 4
  %139 = load i32, i32* %1, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %154

141:                                              ; preds = %134
  %142 = load i64, i64* @errno, align 8
  %143 = load i64, i64* @EAGAIN, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i64, i64* @errno, align 8
  %147 = load i64, i64* @EINTR, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145, %141
  %150 = call i32 @time(i64* @cur_time)
  br label %212

151:                                              ; preds = %145
  %152 = call i32 @error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151
  br label %154

154:                                              ; preds = %153, %134
  %155 = call i32 @time(i64* @cur_time)
  store i32 0, i32* %3, align 4
  %156 = load %struct.protocol*, %struct.protocol** @protocols, align 8
  store %struct.protocol* %156, %struct.protocol** %6, align 8
  br label %157

157:                                              ; preds = %207, %154
  %158 = load %struct.protocol*, %struct.protocol** %6, align 8
  %159 = icmp ne %struct.protocol* %158, null
  br i1 %159, label %160, label %211

160:                                              ; preds = %157
  %161 = load %struct.protocol*, %struct.protocol** %6, align 8
  %162 = getelementptr inbounds %struct.protocol, %struct.protocol* %161, i32 0, i32 1
  %163 = load %struct.interface_info*, %struct.interface_info** %162, align 8
  store %struct.interface_info* %163, %struct.interface_info** %11, align 8
  %164 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %165 = load i32, i32* %3, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %164, i64 %166
  %168 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @POLLIN, align 4
  %171 = load i32, i32* @POLLHUP, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %169, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %204

175:                                              ; preds = %160
  %176 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %177 = load i32, i32* %3, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %176, i64 %178
  %180 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %179, i32 0, i32 1
  store i32 0, i32* %180, align 4
  %181 = load %struct.interface_info*, %struct.interface_info** %11, align 8
  %182 = icmp ne %struct.interface_info* %181, null
  br i1 %182, label %183, label %199

183:                                              ; preds = %175
  %184 = load %struct.protocol*, %struct.protocol** %6, align 8
  %185 = getelementptr inbounds %struct.protocol, %struct.protocol* %184, i32 0, i32 0
  %186 = load i32 (%struct.protocol*)*, i32 (%struct.protocol*)** %185, align 8
  %187 = icmp ne i32 (%struct.protocol*)* %186, @got_one
  br i1 %187, label %193, label %188

188:                                              ; preds = %183
  %189 = load %struct.interface_info*, %struct.interface_info** %11, align 8
  %190 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %188, %183
  %194 = load %struct.protocol*, %struct.protocol** %6, align 8
  %195 = getelementptr inbounds %struct.protocol, %struct.protocol* %194, i32 0, i32 0
  %196 = load i32 (%struct.protocol*)*, i32 (%struct.protocol*)** %195, align 8
  %197 = load %struct.protocol*, %struct.protocol** %6, align 8
  %198 = call i32 %196(%struct.protocol* %197)
  br label %199

199:                                              ; preds = %193, %188, %175
  %200 = load i64, i64* @interfaces_invalidated, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  br label %211

203:                                              ; preds = %199
  br label %204

204:                                              ; preds = %203, %160
  %205 = load i32, i32* %3, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %3, align 4
  br label %207

207:                                              ; preds = %204
  %208 = load %struct.protocol*, %struct.protocol** %6, align 8
  %209 = getelementptr inbounds %struct.protocol, %struct.protocol* %208, i32 0, i32 2
  %210 = load %struct.protocol*, %struct.protocol** %209, align 8
  store %struct.protocol* %210, %struct.protocol** %6, align 8
  br label %157

211:                                              ; preds = %202, %157
  store i64 0, i64* @interfaces_invalidated, align 8
  br label %212

212:                                              ; preds = %211, %149
  br i1 true, label %34, label %213

213:                                              ; preds = %212
  ret void
}

declare dso_local %struct.pollfd* @malloc(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @got_one(%struct.protocol*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @time(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
