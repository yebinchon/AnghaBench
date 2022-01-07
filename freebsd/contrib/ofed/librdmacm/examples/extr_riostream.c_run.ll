; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_riostream.c_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_riostream.c_run.c"
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
@size_option = common dso_local global i64 0, align 8
@rs = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
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
  br label %146

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
  br label %142

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %23
  %33 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %34 = load i32, i32* @custom, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %122, label %36

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
  br label %142

49:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %73, %49
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @TEST_CNT, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_size, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @size_option, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %73

64:                                               ; preds = %54
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_size, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @init_latency_test(i32 %70)
  %72 = call i32 (...) @run_test()
  br label %73

73:                                               ; preds = %64, %63
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %2, align 4
  br label %50

76:                                               ; preds = %50
  %77 = load i32, i32* @rs, align 4
  %78 = load i32, i32* @SHUT_RDWR, align 4
  %79 = call i32 @rshutdown(i32 %77, i32 %78)
  %80 = load i32, i32* @rs, align 4
  %81 = call i32 @rclose(i32 %80)
  %82 = load i32, i32* @opt_bandwidth, align 4
  store i32 %82, i32* @optimization, align 4
  %83 = load i64, i64* @dst_addr, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = call i32 (...) @client_connect()
  br label %89

87:                                               ; preds = %76
  %88 = call i32 (...) @server_connect()
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %142

94:                                               ; preds = %89
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %118, %94
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @TEST_CNT, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %121

99:                                               ; preds = %95
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_size, align 8
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @size_option, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %118

109:                                              ; preds = %99
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_size, align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @init_bandwidth_test(i32 %115)
  %117 = call i32 (...) @run_test()
  br label %118

118:                                              ; preds = %109, %108
  %119 = load i32, i32* %2, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %2, align 4
  br label %95

121:                                              ; preds = %95
  br label %136

122:                                              ; preds = %32
  %123 = load i64, i64* @dst_addr, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 (...) @client_connect()
  br label %129

127:                                              ; preds = %122
  %128 = call i32 (...) @server_connect()
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  store i32 %130, i32* %3, align 4
  %131 = load i32, i32* %3, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %142

134:                                              ; preds = %129
  %135 = call i32 (...) @run_test()
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %121
  %137 = load i32, i32* @rs, align 4
  %138 = load i32, i32* @SHUT_RDWR, align 4
  %139 = call i32 @rshutdown(i32 %137, i32 %138)
  %140 = load i32, i32* @rs, align 4
  %141 = call i32 @rclose(i32 %140)
  br label %142

142:                                              ; preds = %136, %133, %93, %48, %30
  %143 = load i32, i32* @buf, align 4
  %144 = call i32 @free(i32 %143)
  %145 = load i32, i32* %3, align 4
  store i32 %145, i32* %1, align 4
  br label %146

146:                                              ; preds = %142, %21
  %147 = load i32, i32* %1, align 4
  ret i32 %147
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @server_listen(...) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @client_connect(...) #1

declare dso_local i32 @server_connect(...) #1

declare dso_local i32 @init_latency_test(i32) #1

declare dso_local i32 @run_test(...) #1

declare dso_local i32 @rshutdown(i32, i32) #1

declare dso_local i32 @rclose(i32) #1

declare dso_local i32 @init_bandwidth_test(i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
