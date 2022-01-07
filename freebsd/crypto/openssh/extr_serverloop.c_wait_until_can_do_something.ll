; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_wait_until_can_do_something.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_wait_until_can_do_something.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ssh = type { i32 }
%struct.timeval = type { i32, i64 }

@wait_until_can_do_something.last_client_time = internal global i64 0, align 8
@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@child_terminated = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"select: %.100s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*, i32, i32, i32**, i32**, i32*, i32*, i64)* @wait_until_can_do_something to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_until_can_do_something(%struct.ssh* %0, i32 %1, i32 %2, i32** %3, i32** %4, i32* %5, i32* %6, i64 %7) #0 {
  %9 = alloca %struct.ssh*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca %struct.timeval*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.ssh* %0, %struct.ssh** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32** %3, i32*** %12, align 8
  store i32** %4, i32*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i64 %7, i64* %16, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %21, align 4
  %24 = load %struct.ssh*, %struct.ssh** %9, align 8
  %25 = load i32**, i32*** %12, align 8
  %26 = load i32**, i32*** %13, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = call i32 @channel_prepare_select(%struct.ssh* %24, i32** %25, i32** %26, i32* %27, i32* %28, i64* %20)
  %30 = load i64, i64* %20, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %8
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* %20, align 8
  %35 = trunc i64 %34 to i32
  %36 = mul nsw i32 %35, 1000
  %37 = call i64 @MINIMUM(i64 %33, i32 %36)
  store i64 %37, i64* %16, align 8
  br label %38

38:                                               ; preds = %32, %8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %43 = trunc i64 %42 to i32
  %44 = mul nsw i32 %43, 1000
  store i32 %44, i32* %22, align 4
  store i32 1, i32* %21, align 4
  %45 = load i64, i64* %16, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load i64, i64* %16, align 8
  %49 = load i32, i32* %22, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47, %41
  %53 = load i32, i32* %22, align 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %16, align 8
  br label %55

55:                                               ; preds = %52, %47
  br label %56

56:                                               ; preds = %55, %38
  %57 = load i32, i32* %10, align 4
  %58 = load i32**, i32*** %12, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @FD_SET(i32 %57, i32* %59)
  %61 = load i32**, i32*** %12, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @notify_prepare(i32* %62)
  %64 = call i64 (...) @packet_have_data_to_write()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load i32, i32* %11, align 4
  %68 = load i32**, i32*** %13, align 8
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @FD_SET(i32 %67, i32* %69)
  br label %71

71:                                               ; preds = %66, %56
  %72 = load i64, i64* @child_terminated, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = call i64 (...) @packet_not_very_much_data_to_write()
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i64, i64* %16, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %21, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %77
  store i64 100, i64* %16, align 8
  br label %84

84:                                               ; preds = %83, %80
  br label %85

85:                                               ; preds = %84, %74, %71
  %86 = load i64, i64* %16, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store %struct.timeval* null, %struct.timeval** %18, align 8
  br label %98

89:                                               ; preds = %85
  %90 = load i64, i64* %16, align 8
  %91 = sdiv i64 %90, 1000
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i64 %91, i64* %92, align 8
  %93 = load i64, i64* %16, align 8
  %94 = srem i64 %93, 1000
  %95 = mul nsw i64 1000, %94
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  store %struct.timeval* %17, %struct.timeval** %18, align 8
  br label %98

98:                                               ; preds = %89, %88
  %99 = load i32*, i32** %14, align 8
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32**, i32*** %12, align 8
  %103 = load i32*, i32** %102, align 8
  %104 = load i32**, i32*** %13, align 8
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.timeval*, %struct.timeval** %18, align 8
  %107 = call i32 @select(i32 %101, i32* %103, i32* %105, i32* null, %struct.timeval* %106)
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %129

110:                                              ; preds = %98
  %111 = load i32**, i32*** %12, align 8
  %112 = load i32*, i32** %111, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @memset(i32* %112, i32 0, i32 %114)
  %116 = load i32**, i32*** %13, align 8
  %117 = load i32*, i32** %116, align 8
  %118 = load i32*, i32** %15, align 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @memset(i32* %117, i32 0, i32 %119)
  %121 = load i64, i64* @errno, align 8
  %122 = load i64, i64* @EINTR, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %110
  %125 = load i64, i64* @errno, align 8
  %126 = call i32 @strerror(i64 %125)
  %127 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %124, %110
  br label %164

129:                                              ; preds = %98
  %130 = load i32, i32* %21, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %163

132:                                              ; preds = %129
  %133 = call i64 (...) @monotime()
  store i64 %133, i64* %23, align 8
  %134 = load i32, i32* %19, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.ssh*, %struct.ssh** %9, align 8
  %138 = call i32 @client_alive_check(%struct.ssh* %137)
  br label %162

139:                                              ; preds = %132
  %140 = load i32, i32* %10, align 4
  %141 = load i32**, i32*** %12, align 8
  %142 = load i32*, i32** %141, align 8
  %143 = call i64 @FD_ISSET(i32 %140, i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i64, i64* %23, align 8
  store i64 %146, i64* @wait_until_can_do_something.last_client_time, align 8
  br label %161

147:                                              ; preds = %139
  %148 = load i64, i64* @wait_until_can_do_something.last_client_time, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load i64, i64* @wait_until_can_do_something.last_client_time, align 8
  %152 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %153 = add nsw i64 %151, %152
  %154 = load i64, i64* %23, align 8
  %155 = icmp sle i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load %struct.ssh*, %struct.ssh** %9, align 8
  %158 = call i32 @client_alive_check(%struct.ssh* %157)
  %159 = load i64, i64* %23, align 8
  store i64 %159, i64* @wait_until_can_do_something.last_client_time, align 8
  br label %160

160:                                              ; preds = %156, %150, %147
  br label %161

161:                                              ; preds = %160, %145
  br label %162

162:                                              ; preds = %161, %136
  br label %163

163:                                              ; preds = %162, %129
  br label %164

164:                                              ; preds = %163, %128
  %165 = load i32**, i32*** %12, align 8
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @notify_done(i32* %166)
  ret void
}

declare dso_local i32 @channel_prepare_select(%struct.ssh*, i32**, i32**, i32*, i32*, i64*) #1

declare dso_local i64 @MINIMUM(i64, i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @notify_prepare(i32*) #1

declare dso_local i64 @packet_have_data_to_write(...) #1

declare dso_local i64 @packet_not_very_much_data_to_write(...) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @monotime(...) #1

declare dso_local i32 @client_alive_check(%struct.ssh*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @notify_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
