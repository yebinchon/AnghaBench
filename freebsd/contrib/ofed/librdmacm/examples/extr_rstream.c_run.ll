; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@custom = common dso_local global i32 0, align 4
@test_size = common dso_local global %struct.TYPE_2__* null, align 8
@TEST_CNT = common dso_local global i32 0, align 4
@transfer_size = common dso_local global i32 0, align 4
@buf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@dst_addr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%-10s%-8s%-8s%-8s%-8s%8s %10s%13s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"xfers\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"iters\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Gb/sec\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"usec/xfer\00", align 1
@opt_latency = common dso_local global i32 0, align 4
@optimization = common dso_local global i32 0, align 4
@fork_pid = common dso_local global i64 0, align 8
@size_option = common dso_local global i64 0, align 8
@rs = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@use_fork = common dso_local global i64 0, align 8
@opt_bandwidth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @custom, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_size, align 8
  %8 = load i32, i32* @TEST_CNT, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  br label %16

14:                                               ; preds = %0
  %15 = load i32, i32* @transfer_size, align 4
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %13, %6 ], [ %15, %14 ]
  %18 = call i32 @malloc(i32 %17)
  store i32 %18, i32* @buf, align 4
  %19 = load i32, i32* @buf, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %186

23:                                               ; preds = %16
  %24 = load i64, i64* @dst_addr, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = call i32 (...) @server_listen()
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %182

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %23
  %33 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %34 = load i32, i32* @custom, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %151, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @opt_latency, align 4
  store i32 %37, i32* @optimization, align 4
  %38 = load i64, i64* @dst_addr, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (...) @client_connect()
  br label %44

42:                                               ; preds = %36
  %43 = call i32 (...) @server_connect()
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %182

49:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %79, %49
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @TEST_CNT, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* @fork_pid, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i1 [ false, %50 ], [ %57, %54 ]
  br i1 %59, label %60, label %82

60:                                               ; preds = %58
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_size, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @size_option, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %79

70:                                               ; preds = %60
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_size, align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @init_latency_test(i32 %76)
  %78 = call i32 (...) @run_test()
  br label %79

79:                                               ; preds = %70, %69
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %50

82:                                               ; preds = %58
  %83 = load i64, i64* @fork_pid, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i64, i64* @fork_pid, align 8
  %87 = call i32 @waitpid(i64 %86, i32* null, i32 0)
  br label %92

88:                                               ; preds = %82
  %89 = load i32, i32* @rs, align 4
  %90 = load i32, i32* @SHUT_RDWR, align 4
  %91 = call i32 @rs_shutdown(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* @rs, align 4
  %94 = call i32 @rs_close(i32 %93)
  %95 = load i64, i64* @dst_addr, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %92
  %98 = load i64, i64* @use_fork, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i64, i64* @fork_pid, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  br label %182

104:                                              ; preds = %100, %97, %92
  %105 = load i32, i32* @opt_bandwidth, align 4
  store i32 %105, i32* @optimization, align 4
  %106 = load i64, i64* @dst_addr, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = call i32 (...) @client_connect()
  br label %112

110:                                              ; preds = %104
  %111 = call i32 (...) @server_connect()
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* %3, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %182

117:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %147, %117
  %119 = load i32, i32* %2, align 4
  %120 = load i32, i32* @TEST_CNT, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i64, i64* @fork_pid, align 8
  %124 = icmp ne i64 %123, 0
  %125 = xor i1 %124, true
  br label %126

126:                                              ; preds = %122, %118
  %127 = phi i1 [ false, %118 ], [ %125, %122 ]
  br i1 %127, label %128, label %150

128:                                              ; preds = %126
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_size, align 8
  %130 = load i32, i32* %2, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @size_option, align 8
  %136 = icmp sgt i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %147

138:                                              ; preds = %128
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_size, align 8
  %140 = load i32, i32* %2, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @init_bandwidth_test(i32 %144)
  %146 = call i32 (...) @run_test()
  br label %147

147:                                              ; preds = %138, %137
  %148 = load i32, i32* %2, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %2, align 4
  br label %118

150:                                              ; preds = %126
  br label %169

151:                                              ; preds = %32
  %152 = load i64, i64* @dst_addr, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = call i32 (...) @client_connect()
  br label %158

156:                                              ; preds = %151
  %157 = call i32 (...) @server_connect()
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  store i32 %159, i32* %3, align 4
  %160 = load i32, i32* %3, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %182

163:                                              ; preds = %158
  %164 = load i64, i64* @fork_pid, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %163
  %167 = call i32 (...) @run_test()
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %166, %163
  br label %169

169:                                              ; preds = %168, %150
  %170 = load i64, i64* @fork_pid, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i64, i64* @fork_pid, align 8
  %174 = call i32 @waitpid(i64 %173, i32* null, i32 0)
  br label %179

175:                                              ; preds = %169
  %176 = load i32, i32* @rs, align 4
  %177 = load i32, i32* @SHUT_RDWR, align 4
  %178 = call i32 @rs_shutdown(i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %175, %172
  %180 = load i32, i32* @rs, align 4
  %181 = call i32 @rs_close(i32 %180)
  br label %182

182:                                              ; preds = %179, %162, %116, %103, %48, %30
  %183 = load i32, i32* @buf, align 4
  %184 = call i32 @free(i32 %183)
  %185 = load i32, i32* %3, align 4
  store i32 %185, i32* %1, align 4
  br label %186

186:                                              ; preds = %182, %21
  %187 = load i32, i32* %1, align 4
  ret i32 %187
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @server_listen(...) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @client_connect(...) #1

declare dso_local i32 @server_connect(...) #1

declare dso_local i32 @init_latency_test(i32) #1

declare dso_local i32 @run_test(...) #1

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @rs_shutdown(i32, i32) #1

declare dso_local i32 @rs_close(i32) #1

declare dso_local i32 @init_bandwidth_test(i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
