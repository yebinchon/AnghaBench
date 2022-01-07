; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_nchan.c_chan_is_dead.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_nchan.c_chan_is_dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i32, i32, i32, i32 }

@SSH_CHANNEL_ZOMBIE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"channel %d: zombie\00", align 1
@CHAN_INPUT_CLOSED = common dso_local global i64 0, align 8
@CHAN_OUTPUT_CLOSED = common dso_local global i64 0, align 8
@datafellows = common dso_local global i32 0, align 4
@SSH_BUG_EXTEOF = common dso_local global i32 0, align 4
@CHAN_EXTENDED_WRITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"channel %d: active efd: %d len %zu\00", align 1
@CHAN_LOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"channel %d: is dead (local)\00", align 1
@CHAN_CLOSE_SENT = common dso_local global i32 0, align 4
@CHAN_CLOSE_RCVD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"channel %d: almost dead\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"channel %d: is dead\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chan_is_dead(%struct.ssh* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SSH_CHANNEL_ZOMBIE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, i32, ...) @debug2(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 1, i32* %4, align 4
  br label %125

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CHAN_INPUT_CLOSED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHAN_OUTPUT_CLOSED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %18
  store i32 0, i32* %4, align 4
  br label %125

31:                                               ; preds = %24
  %32 = load i32, i32* @datafellows, align 4
  %33 = load i32, i32* @SSH_BUG_EXTEOF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CHAN_EXTENDED_WRITE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @sshbuf_len(i32 %50)
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @sshbuf_len(i32 %62)
  %64 = call i32 (i8*, i32, ...) @debug2(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59, i64 %63)
  store i32 0, i32* %4, align 4
  br label %125

65:                                               ; preds = %47, %42, %36, %31
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CHAN_LOCAL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, i32, ...) @debug2(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  store i32 1, i32* %4, align 4
  br label %125

77:                                               ; preds = %65
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CHAN_CLOSE_SENT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %105, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.ssh*, %struct.ssh** %5, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %90 = call i32 @chan_send_close2(%struct.ssh* %88, %struct.TYPE_4__* %89)
  br label %104

91:                                               ; preds = %84
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CHAN_CLOSE_RCVD, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, i32, ...) @debug2(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  store i32 1, i32* %4, align 4
  br label %125

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %87
  br label %105

105:                                              ; preds = %104, %77
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CHAN_CLOSE_SENT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CHAN_CLOSE_RCVD, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i8*, i32, ...) @debug2(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  store i32 1, i32* %4, align 4
  br label %125

124:                                              ; preds = %112, %105
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %119, %98, %72, %53, %30, %13
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @debug2(i8*, i32, ...) #1

declare dso_local i64 @sshbuf_len(i32) #1

declare dso_local i32 @chan_send_close2(%struct.ssh*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
