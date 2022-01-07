; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rmpproto.c_ProcessPacket.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rmpproto.c_ProcessPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.rmp_packet }
%struct.rmp_packet = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }

@RMP_PROBESID = common dso_local global i32 0, align 4
@BootFiles = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: sent a boot reply\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: sent a read reply\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: unknown packet type (%u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessPacket(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.rmp_packet*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  store %struct.rmp_packet* %8, %struct.rmp_packet** %5, align 8
  %9 = load %struct.rmp_packet*, %struct.rmp_packet** %5, align 8
  %10 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %91 [
    i32 130, label %12
    i32 131, label %75
    i32 128, label %80
    i32 129, label %83
    i32 132, label %88
  ]

12:                                               ; preds = %2
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = call %struct.TYPE_17__* @NewConn(%struct.TYPE_17__* %13)
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %6, align 8
  %15 = icmp eq %struct.TYPE_17__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %99

17:                                               ; preds = %12
  %18 = load %struct.rmp_packet*, %struct.rmp_packet** %5, align 8
  %19 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohs(i32 %21)
  %23 = load i32, i32* @RMP_PROBESID, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %17
  %26 = load %struct.rmp_packet*, %struct.rmp_packet** %5, align 8
  %27 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WORDZE(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = call i32 @SendServerID(%struct.TYPE_17__* %33)
  br label %49

35:                                               ; preds = %25
  %36 = load %struct.rmp_packet*, %struct.rmp_packet** %5, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = icmp ne %struct.TYPE_18__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  br label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @BootFiles, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i32 [ %43, %40 ], [ %45, %44 ]
  %48 = call i32 @SendFileNo(%struct.rmp_packet* %36, %struct.TYPE_17__* %37, i32 %47)
  br label %49

49:                                               ; preds = %46, %32
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = call i32 @FreeConn(%struct.TYPE_17__* %50)
  br label %74

52:                                               ; preds = %17
  %53 = load %struct.rmp_packet*, %struct.rmp_packet** %5, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = icmp ne %struct.TYPE_18__* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  br label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @BootFiles, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = phi i32 [ %60, %57 ], [ %62, %61 ]
  %65 = call i32 @SendBootRepl(%struct.rmp_packet* %53, %struct.TYPE_17__* %54, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = call i32 @AddConn(%struct.TYPE_17__* %68)
  br label %73

70:                                               ; preds = %63
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = call i32 @FreeConn(%struct.TYPE_17__* %71)
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %49
  br label %99

75:                                               ; preds = %2
  %76 = load i32, i32* @LOG_WARNING, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = call i32 @EnetStr(%struct.TYPE_17__* %77)
  %79 = call i32 (i32, i8*, i32, ...) @syslog(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %99

80:                                               ; preds = %2
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %82 = call i32 @SendReadRepl(%struct.TYPE_17__* %81)
  br label %99

83:                                               ; preds = %2
  %84 = load i32, i32* @LOG_WARNING, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = call i32 @EnetStr(%struct.TYPE_17__* %85)
  %87 = call i32 (i32, i8*, i32, ...) @syslog(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %99

88:                                               ; preds = %2
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = call i32 @BootDone(%struct.TYPE_17__* %89)
  br label %99

91:                                               ; preds = %2
  %92 = load i32, i32* @LOG_WARNING, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %94 = call i32 @EnetStr(%struct.TYPE_17__* %93)
  %95 = load %struct.rmp_packet*, %struct.rmp_packet** %5, align 8
  %96 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, i32, ...) @syslog(i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %16, %91, %88, %83, %80, %75, %74
  ret void
}

declare dso_local %struct.TYPE_17__* @NewConn(%struct.TYPE_17__*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @WORDZE(i32) #1

declare dso_local i32 @SendServerID(%struct.TYPE_17__*) #1

declare dso_local i32 @SendFileNo(%struct.rmp_packet*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @FreeConn(%struct.TYPE_17__*) #1

declare dso_local i32 @SendBootRepl(%struct.rmp_packet*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @AddConn(%struct.TYPE_17__*) #1

declare dso_local i32 @syslog(i32, i8*, i32, ...) #1

declare dso_local i32 @EnetStr(%struct.TYPE_17__*) #1

declare dso_local i32 @SendReadRepl(%struct.TYPE_17__*) #1

declare dso_local i32 @BootDone(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
