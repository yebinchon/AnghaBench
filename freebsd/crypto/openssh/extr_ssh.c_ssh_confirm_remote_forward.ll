; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh.c_ssh_confirm_remote_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh.c_ssh_confirm_remote_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.ssh = type { i32 }
%struct.Forward = type { i8*, i8*, i8*, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [52 x i8] c"remote forward %s for: listen %s%s%d, connect %s:%d\00", align 1
@SSH2_MSG_REQUEST_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Allocated port %u for remote forward to %s:%d\00", align 1
@SSH2_MSG_REQUEST_FAILURE = common dso_local global i32 0, align 4
@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [56 x i8] c"Error: remote port forwarding failed for listen path %s\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Error: remote port forwarding failed for listen port %d\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Warning: remote port forwarding failed for listen path %s\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"Warning: remote port forwarding failed for listen port %d\00", align 1
@remote_forward_confirms_received = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [41 x i8] c"All remote forwarding requests processed\00", align 1
@fork_after_authentication_flag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*, i32, i32, i8*)* @ssh_confirm_remote_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssh_confirm_remote_forward(%struct.ssh* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.Forward*, align 8
  store %struct.ssh* %0, %struct.ssh** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.Forward*
  store %struct.Forward* %11, %struct.Forward** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SSH2_MSG_REQUEST_SUCCESS, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %17 = load %struct.Forward*, %struct.Forward** %9, align 8
  %18 = getelementptr inbounds %struct.Forward, %struct.Forward* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.Forward*, %struct.Forward** %9, align 8
  %23 = getelementptr inbounds %struct.Forward, %struct.Forward* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %37

25:                                               ; preds = %4
  %26 = load %struct.Forward*, %struct.Forward** %9, align 8
  %27 = getelementptr inbounds %struct.Forward, %struct.Forward* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.Forward*, %struct.Forward** %9, align 8
  %32 = getelementptr inbounds %struct.Forward, %struct.Forward* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i8* [ %33, %30 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %34 ]
  br label %37

37:                                               ; preds = %35, %21
  %38 = phi i8* [ %24, %21 ], [ %36, %35 ]
  %39 = load %struct.Forward*, %struct.Forward** %9, align 8
  %40 = getelementptr inbounds %struct.Forward, %struct.Forward* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.Forward*, %struct.Forward** %9, align 8
  %45 = getelementptr inbounds %struct.Forward, %struct.Forward* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br label %48

48:                                               ; preds = %43, %37
  %49 = phi i1 [ true, %37 ], [ %47, %43 ]
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %52 = load %struct.Forward*, %struct.Forward** %9, align 8
  %53 = getelementptr inbounds %struct.Forward, %struct.Forward* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.Forward*, %struct.Forward** %9, align 8
  %56 = getelementptr inbounds %struct.Forward, %struct.Forward* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.Forward*, %struct.Forward** %9, align 8
  %61 = getelementptr inbounds %struct.Forward, %struct.Forward* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  br label %67

63:                                               ; preds = %48
  %64 = load %struct.Forward*, %struct.Forward** %9, align 8
  %65 = getelementptr inbounds %struct.Forward, %struct.Forward* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i64 [ %62, %59 ], [ %66, %63 ]
  %69 = load %struct.Forward*, %struct.Forward** %9, align 8
  %70 = getelementptr inbounds %struct.Forward, %struct.Forward* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %38, i8* %51, i8* %54, i64 %68, i32 %71)
  %73 = load %struct.Forward*, %struct.Forward** %9, align 8
  %74 = getelementptr inbounds %struct.Forward, %struct.Forward* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %115

77:                                               ; preds = %67
  %78 = load %struct.Forward*, %struct.Forward** %9, align 8
  %79 = getelementptr inbounds %struct.Forward, %struct.Forward* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %115

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @SSH2_MSG_REQUEST_SUCCESS, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %82
  %87 = call i32 (...) @packet_get_int()
  %88 = load %struct.Forward*, %struct.Forward** %9, align 8
  %89 = getelementptr inbounds %struct.Forward, %struct.Forward* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.Forward*, %struct.Forward** %9, align 8
  %91 = getelementptr inbounds %struct.Forward, %struct.Forward* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.Forward*, %struct.Forward** %9, align 8
  %94 = getelementptr inbounds %struct.Forward, %struct.Forward* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.Forward*, %struct.Forward** %9, align 8
  %97 = getelementptr inbounds %struct.Forward, %struct.Forward* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i8*, ...) @logit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %92, i64 %95, i32 %98)
  %100 = load %struct.ssh*, %struct.ssh** %5, align 8
  %101 = load %struct.Forward*, %struct.Forward** %9, align 8
  %102 = getelementptr inbounds %struct.Forward, %struct.Forward* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.Forward*, %struct.Forward** %9, align 8
  %105 = getelementptr inbounds %struct.Forward, %struct.Forward* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @channel_update_permission(%struct.ssh* %100, i32 %103, i32 %106)
  br label %114

108:                                              ; preds = %82
  %109 = load %struct.ssh*, %struct.ssh** %5, align 8
  %110 = load %struct.Forward*, %struct.Forward** %9, align 8
  %111 = getelementptr inbounds %struct.Forward, %struct.Forward* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @channel_update_permission(%struct.ssh* %109, i32 %112, i32 -1)
  br label %114

114:                                              ; preds = %108, %86
  br label %115

115:                                              ; preds = %114, %77, %67
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @SSH2_MSG_REQUEST_FAILURE, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %155

119:                                              ; preds = %115
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 1), align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %119
  %123 = load %struct.Forward*, %struct.Forward** %9, align 8
  %124 = getelementptr inbounds %struct.Forward, %struct.Forward* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.Forward*, %struct.Forward** %9, align 8
  %129 = getelementptr inbounds %struct.Forward, %struct.Forward* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @fatal(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i8* %130)
  br label %137

132:                                              ; preds = %122
  %133 = load %struct.Forward*, %struct.Forward** %9, align 8
  %134 = getelementptr inbounds %struct.Forward, %struct.Forward* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @fatal(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %132, %127
  br label %154

138:                                              ; preds = %119
  %139 = load %struct.Forward*, %struct.Forward** %9, align 8
  %140 = getelementptr inbounds %struct.Forward, %struct.Forward* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.Forward*, %struct.Forward** %9, align 8
  %145 = getelementptr inbounds %struct.Forward, %struct.Forward* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (i8*, ...) @logit(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i8* %146)
  br label %153

148:                                              ; preds = %138
  %149 = load %struct.Forward*, %struct.Forward** %9, align 8
  %150 = getelementptr inbounds %struct.Forward, %struct.Forward* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (i8*, ...) @logit(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %148, %143
  br label %154

154:                                              ; preds = %153, %137
  br label %155

155:                                              ; preds = %154, %115
  %156 = load i64, i64* @remote_forward_confirms_received, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* @remote_forward_confirms_received, align 8
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %162 = load i64, i64* @fork_after_authentication_flag, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = call i32 (...) @fork_postauth()
  br label %166

166:                                              ; preds = %164, %160
  br label %167

167:                                              ; preds = %166, %155
  ret void
}

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @packet_get_int(...) #1

declare dso_local i32 @logit(i8*, ...) #1

declare dso_local i32 @channel_update_permission(%struct.ssh*, i32, i32) #1

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local i32 @fork_postauth(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
