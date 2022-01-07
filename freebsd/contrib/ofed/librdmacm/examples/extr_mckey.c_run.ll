; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"mckey: starting %s\0A\00", align 1
@is_sender = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@src_addr = common dso_local global i64 0, align 8
@test = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@dst_addr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"mckey: joining\0A\00", align 1
@connections = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"mckey: addr bind failure\00", align 1
@unmapped_addr = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"mckey: resolve addr failure\00", align 1
@cma_thread = common dso_local global i32 0, align 4
@message_count = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"initiating data transfers\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"receiving data transfers\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"data transfers complete\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"mckey: failure leaving\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* @is_sender, align 8
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i64, i64* @src_addr, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %0
  %13 = load i64, i64* @src_addr, align 8
  %14 = call i32 @get_addr(i64 %13, %struct.sockaddr* bitcast (i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 5) to %struct.sockaddr*))
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %1, align 4
  br label %151

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %0
  %21 = load i32, i32* @dst_addr, align 4
  %22 = call i32 @get_dst_addr(i32 %21, %struct.sockaddr* bitcast (i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 4) to %struct.sockaddr*))
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %1, align 4
  br label %151

27:                                               ; preds = %20
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %79, %27
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @connections, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %82

33:                                               ; preds = %29
  %34 = load i64, i64* @src_addr, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 1), align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 3), align 4
  %44 = call i32 @rdma_bind_addr(i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %49 = call i32 (...) @connect_error()
  %50 = load i32, i32* %3, align 4
  store i32 %50, i32* %1, align 4
  br label %151

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i64, i64* @unmapped_addr, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 1), align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = call i32 @addr_handler(%struct.TYPE_5__* %59)
  store i32 %60, i32* %3, align 4
  br label %71

61:                                               ; preds = %52
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 1), align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 3), align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 0), align 8
  %70 = call i32 @rdma_resolve_addr(i32 %67, i32 %68, i32 %69, i32 2000)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %61, %55
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = call i32 @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %76 = call i32 (...) @connect_error()
  %77 = load i32, i32* %3, align 4
  store i32 %77, i32* %1, align 4
  br label %151

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %29

82:                                               ; preds = %29
  %83 = call i32 (...) @connect_events()
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %126

87:                                               ; preds = %82
  %88 = load i32, i32* @cma_thread, align 4
  %89 = call i32 @pthread_create(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 2), i32* null, i32 %88, i32* null)
  %90 = call i32 @sleep(i32 3)
  %91 = load i64, i64* @message_count, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %125

93:                                               ; preds = %87
  %94 = load i64, i64* @is_sender, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %112, %96
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @connections, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 1), align 8
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = call i32 @post_sends(%struct.TYPE_5__* %106, i32 0)
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* %3, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %126

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %2, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %2, align 4
  br label %98

115:                                              ; preds = %98
  br label %123

116:                                              ; preds = %93
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %118 = call i32 (...) @poll_cqs()
  store i32 %118, i32* %3, align 4
  %119 = load i32, i32* %3, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %126

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %115
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %87
  br label %126

126:                                              ; preds = %125, %121, %110, %86
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %146, %126
  %128 = load i32, i32* %2, align 4
  %129 = load i32, i32* @connections, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %149

131:                                              ; preds = %127
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 1), align 8
  %133 = load i32, i32* %2, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 0), align 8
  %139 = call i32 @rdma_leave_multicast(i32 %137, i32 %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %131
  %143 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %144 = load i32, i32* %4, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %142, %131
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %2, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %2, align 4
  br label %127

149:                                              ; preds = %127
  %150 = load i32, i32* %3, align 4
  store i32 %150, i32* %1, align 4
  br label %151

151:                                              ; preds = %149, %74, %47, %25, %17
  %152 = load i32, i32* %1, align 4
  ret i32 %152
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @get_addr(i64, %struct.sockaddr*) #1

declare dso_local i32 @get_dst_addr(i32, %struct.sockaddr*) #1

declare dso_local i32 @rdma_bind_addr(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @connect_error(...) #1

declare dso_local i32 @addr_handler(%struct.TYPE_5__*) #1

declare dso_local i32 @rdma_resolve_addr(i32, i32, i32, i32) #1

declare dso_local i32 @connect_events(...) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @post_sends(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @poll_cqs(...) #1

declare dso_local i32 @rdma_leave_multicast(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
