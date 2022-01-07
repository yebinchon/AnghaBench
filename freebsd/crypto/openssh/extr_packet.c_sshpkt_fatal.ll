; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_sshpkt_fatal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_sshpkt_fatal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Connection closed by %s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Connection %s %s timed out\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Disconnected from %s\00", align 1
@errno = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Connection reset by %s\00", align 1
@BLACKLIST_AUTH_FAIL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Unable to negotiate with %s: %s. Their offer: %s\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s%sConnection %s %s: %s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c": \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sshpkt_fatal(%struct.ssh* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [512 x i8], align 16
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ssh*, %struct.ssh** %4, align 8
  %9 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %10 = call i32 @sshpkt_fmt_connection_id(%struct.ssh* %8, i8* %9, i32 512)
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %75 [
    i32 136, label %12
    i32 135, label %17
    i32 134, label %30
    i32 128, label %35
    i32 133, label %45
    i32 129, label %45
    i32 132, label %45
    i32 130, label %45
    i32 131, label %45
  ]

12:                                               ; preds = %3
  %13 = load %struct.ssh*, %struct.ssh** %4, align 8
  %14 = call i32 @ssh_packet_clear_keys(%struct.ssh* %13)
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %16 = call i32 (i8*, i8*, ...) @logdie(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %3, %12
  %18 = load %struct.ssh*, %struct.ssh** %4, align 8
  %19 = call i32 @ssh_packet_clear_keys(%struct.ssh* %18)
  %20 = load %struct.ssh*, %struct.ssh** %4, align 8
  %21 = getelementptr inbounds %struct.ssh, %struct.ssh* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %29 = call i32 (i8*, i8*, ...) @logdie(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  br label %30

30:                                               ; preds = %3, %17
  %31 = load %struct.ssh*, %struct.ssh** %4, align 8
  %32 = call i32 @ssh_packet_clear_keys(%struct.ssh* %31)
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %34 = call i32 (i8*, i8*, ...) @logdie(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %3, %30
  %36 = load i32, i32* @errno, align 4
  %37 = load i32, i32* @ECONNRESET, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.ssh*, %struct.ssh** %4, align 8
  %41 = call i32 @ssh_packet_clear_keys(%struct.ssh* %40)
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %43 = call i32 (i8*, i8*, ...) @logdie(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %39, %35
  br label %45

45:                                               ; preds = %3, %3, %3, %3, %3, %44
  %46 = load %struct.ssh*, %struct.ssh** %4, align 8
  %47 = icmp ne %struct.ssh* %46, null
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  %49 = load %struct.ssh*, %struct.ssh** %4, align 8
  %50 = getelementptr inbounds %struct.ssh, %struct.ssh* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = load %struct.ssh*, %struct.ssh** %4, align 8
  %55 = getelementptr inbounds %struct.ssh, %struct.ssh* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %53
  %61 = load i32, i32* @BLACKLIST_AUTH_FAIL, align 4
  %62 = call i32 @BLACKLIST_NOTIFY(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %63 = load %struct.ssh*, %struct.ssh** %4, align 8
  %64 = call i32 @ssh_packet_clear_keys(%struct.ssh* %63)
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @ssh_err(i32 %66)
  %68 = load %struct.ssh*, %struct.ssh** %4, align 8
  %69 = getelementptr inbounds %struct.ssh, %struct.ssh* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, i8*, ...) @logdie(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %65, i32 %67, i32 %72)
  br label %74

74:                                               ; preds = %60, %53, %48, %45
  br label %75

75:                                               ; preds = %3, %74
  %76 = load %struct.ssh*, %struct.ssh** %4, align 8
  %77 = call i32 @ssh_packet_clear_keys(%struct.ssh* %76)
  %78 = load i8*, i8** %5, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i8*, i8** %5, align 8
  br label %83

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i8* [ %81, %80 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %82 ]
  %85 = load i8*, i8** %5, align 8
  %86 = icmp ne i8* %85, null
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %89 = load %struct.ssh*, %struct.ssh** %4, align 8
  %90 = getelementptr inbounds %struct.ssh, %struct.ssh* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %97 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @ssh_err(i32 %98)
  %100 = call i32 (i8*, i8*, ...) @logdie(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %84, i8* %88, i8* %96, i8* %97, i32 %99)
  br label %101

101:                                              ; preds = %83
  ret void
}

declare dso_local i32 @sshpkt_fmt_connection_id(%struct.ssh*, i8*, i32) #1

declare dso_local i32 @ssh_packet_clear_keys(%struct.ssh*) #1

declare dso_local i32 @logdie(i8*, i8*, ...) #1

declare dso_local i32 @BLACKLIST_NOTIFY(i32, i8*) #1

declare dso_local i32 @ssh_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
