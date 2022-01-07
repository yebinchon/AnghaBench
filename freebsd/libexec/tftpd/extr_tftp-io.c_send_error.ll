; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-io.c_send_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-io.c_send_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.errmsg = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tftphdr = type { i8*, i8*, i8* }
%struct.sockaddr = type { i32 }

@MAXPKTSIZE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_PACKETS = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Sending ERROR %d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"send_error\00", align 1
@ERROR = common dso_local global i64 0, align 8
@errmsgs = common dso_local global %struct.errmsg* null, align 8
@EUNDEF = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Sending ERROR %d: %s\00", align 1
@peer_sock = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"send_error: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_error(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tftphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.errmsg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @MAXPKTSIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i32, i32* @debug, align 4
  %15 = load i32, i32* @DEBUG_PACKETS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @LOG_DEBUG, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i32, i8*, i32, ...) @tftp_log(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = call i32 @DROPPACKET(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %24 = bitcast i8* %13 to %struct.tftphdr*
  store %struct.tftphdr* %24, %struct.tftphdr** %5, align 8
  %25 = load i64, i64* @ERROR, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i8* @htons(i32 %26)
  %28 = load %struct.tftphdr*, %struct.tftphdr** %5, align 8
  %29 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i8* @htons(i32 %30)
  %32 = load %struct.tftphdr*, %struct.tftphdr** %5, align 8
  %33 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.errmsg*, %struct.errmsg** @errmsgs, align 8
  store %struct.errmsg* %34, %struct.errmsg** %7, align 8
  br label %35

35:                                               ; preds = %48, %22
  %36 = load %struct.errmsg*, %struct.errmsg** %7, align 8
  %37 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.errmsg*, %struct.errmsg** %7, align 8
  %42 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %51

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.errmsg*, %struct.errmsg** %7, align 8
  %50 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %49, i32 1
  store %struct.errmsg* %50, %struct.errmsg** %7, align 8
  br label %35

51:                                               ; preds = %46, %35
  %52 = load %struct.errmsg*, %struct.errmsg** %7, align 8
  %53 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 %57, 100
  %59 = call i32 @strerror(i32 %58)
  %60 = load %struct.errmsg*, %struct.errmsg** %7, align 8
  %61 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i8*, i8** @EUNDEF, align 8
  %63 = load %struct.tftphdr*, %struct.tftphdr** %5, align 8
  %64 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %56, %51
  %66 = load %struct.tftphdr*, %struct.tftphdr** %5, align 8
  %67 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.errmsg*, %struct.errmsg** %7, align 8
  %70 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strcpy(i8* %68, i32 %71)
  %73 = load %struct.errmsg*, %struct.errmsg** %7, align 8
  %74 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @strlen(i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load %struct.tftphdr*, %struct.tftphdr** %5, align 8
  %78 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 5
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @debug, align 4
  %86 = load i32, i32* @DEBUG_PACKETS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %65
  %90 = load i32, i32* @LOG_DEBUG, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.tftphdr*, %struct.tftphdr** %5, align 8
  %93 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32, i8*, i32, ...) @tftp_log(i32 %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %91, i8* %94)
  br label %96

96:                                               ; preds = %89, %65
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @peer_sock, i32 0, i32 0), align 4
  %100 = call i32 @sendto(i32 %97, i8* %13, i32 %98, i32 0, %struct.sockaddr* bitcast (%struct.TYPE_2__* @peer_sock to %struct.sockaddr*), i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load i32, i32* @LOG_ERR, align 4
  %105 = load i32, i32* @errno, align 4
  %106 = call i32 @strerror(i32 %105)
  %107 = call i32 (i32, i8*, i32, ...) @tftp_log(i32 %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %103, %96
  %109 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %109)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tftp_log(i32, i8*, i32, ...) #2

declare dso_local i32 @DROPPACKET(i8*) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
