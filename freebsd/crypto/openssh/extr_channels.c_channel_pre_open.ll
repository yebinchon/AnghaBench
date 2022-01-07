; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_pre_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_pre_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i32, i64, i32, i32, i64, i32, i32, i32, i32, i32 }

@CHAN_INPUT_OPEN = common dso_local global i64 0, align 8
@CHAN_RBUF = common dso_local global i32 0, align 4
@CHAN_OUTPUT_OPEN = common dso_local global i64 0, align 8
@CHAN_OUTPUT_WAIT_DRAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"channel %d: obuf_empty delayed efd %d/(%zu)\00", align 1
@CHAN_INPUT_CLOSED = common dso_local global i64 0, align 8
@CHAN_OUTPUT_CLOSED = common dso_local global i64 0, align 8
@CHAN_EXTENDED_WRITE = common dso_local global i64 0, align 8
@CHAN_EOF_SENT = common dso_local global i32 0, align 4
@CHAN_EXTENDED_READ = common dso_local global i64 0, align 8
@CHAN_EXTENDED_IGNORE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*, %struct.TYPE_5__*, i32*, i32*)* @channel_pre_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_pre_open(%struct.ssh* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.ssh* %0, %struct.ssh** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHAN_INPUT_OPEN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @sshbuf_len(i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CHAN_RBUF, align 4
  %33 = call i64 @sshbuf_check_reserve(i32 %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @FD_SET(i32 %38, i32* %39)
  br label %41

41:                                               ; preds = %35, %28, %19, %14, %4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CHAN_OUTPUT_OPEN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CHAN_OUTPUT_WAIT_DRAIN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %94

53:                                               ; preds = %47, %41
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @sshbuf_len(i32 %56)
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @FD_SET(i32 %62, i32* %63)
  br label %93

65:                                               ; preds = %53
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CHAN_OUTPUT_WAIT_DRAIN, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %65
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = call i64 @CHANNEL_EFD_OUTPUT_ACTIVE(%struct.TYPE_5__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @sshbuf_len(i32 %84)
  %86 = call i32 @debug2(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %81, i64 %85)
  br label %91

87:                                               ; preds = %71
  %88 = load %struct.ssh*, %struct.ssh** %5, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = call i32 @chan_obuf_empty(%struct.ssh* %88, %struct.TYPE_5__* %89)
  br label %91

91:                                               ; preds = %87, %75
  br label %92

92:                                               ; preds = %91, %65
  br label %93

93:                                               ; preds = %92, %59
  br label %94

94:                                               ; preds = %93, %47
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, -1
  br i1 %98, label %99, label %170

99:                                               ; preds = %94
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @CHAN_INPUT_CLOSED, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CHAN_OUTPUT_CLOSED, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %170, label %111

111:                                              ; preds = %105, %99
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CHAN_EXTENDED_WRITE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %111
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @sshbuf_len(i32 %120)
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @FD_SET(i32 %126, i32* %127)
  br label %169

129:                                              ; preds = %117, %111
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, -1
  br i1 %133, label %134, label %168

134:                                              ; preds = %129
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @CHAN_EOF_SENT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %168, label %141

141:                                              ; preds = %134
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @CHAN_EXTENDED_READ, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CHAN_EXTENDED_IGNORE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %147, %141
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @sshbuf_len(i32 %156)
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp slt i64 %157, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %153
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %7, align 8
  %167 = call i32 @FD_SET(i32 %165, i32* %166)
  br label %168

168:                                              ; preds = %162, %153, %147, %134, %129
  br label %169

169:                                              ; preds = %168, %123
  br label %170

170:                                              ; preds = %169, %105, %94
  ret void
}

declare dso_local i64 @sshbuf_len(i32) #1

declare dso_local i64 @sshbuf_check_reserve(i32, i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i64 @CHANNEL_EFD_OUTPUT_ACTIVE(%struct.TYPE_5__*) #1

declare dso_local i32 @debug2(i8*, i32, i32, i64) #1

declare dso_local i32 @chan_obuf_empty(%struct.ssh*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
