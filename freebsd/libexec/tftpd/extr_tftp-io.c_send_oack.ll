; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-io.c_send_oack.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-io.c_send_oack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.tftphdr = type { i32 }
%struct.sockaddr = type { i32 }

@MAXPKTSIZE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_PACKETS = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Sending OACK\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"send_oack\00", align 1
@OACK = common dso_local global i64 0, align 8
@options = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"oack: buffer overflow\00", align 1
@peer_sock = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"send_oack: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_oack(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tftphdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @MAXPKTSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @debug, align 4
  %17 = load i32, i32* @DEBUG_PACKETS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @LOG_DEBUG, align 4
  %22 = call i32 (i32, i8*, ...) @tftp_log(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %1
  %24 = call i32 @DROPPACKETn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %25 = bitcast i8* %15 to %struct.tftphdr*
  store %struct.tftphdr* %25, %struct.tftphdr** %4, align 8
  %26 = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %26, i8** %8, align 8
  %27 = sub i64 %13, 2
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load i64, i64* @OACK, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @htons(i32 %30)
  %32 = load %struct.tftphdr*, %struct.tftphdr** %4, align 8
  %33 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %83, %23
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %86

42:                                               ; preds = %34
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %82

50:                                               ; preds = %42
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @snprintf(i8* %51, i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %58, i32 0, i32* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i8*, i8** %8, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %8, align 8
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %5, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %50
  %78 = load i32, i32* @LOG_ERR, align 4
  %79 = call i32 (i32, i8*, ...) @tftp_log(i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 @exit(i32 1) #4
  unreachable

81:                                               ; preds = %50
  br label %82

82:                                               ; preds = %81, %42
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %34

86:                                               ; preds = %34
  %87 = load i8*, i8** %8, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = ptrtoint i8* %15 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @peer_sock, i32 0, i32 0), align 4
  %95 = call i32 @sendto(i32 %92, i8* %15, i32 %93, i32 0, %struct.sockaddr* bitcast (%struct.TYPE_3__* @peer_sock to %struct.sockaddr*), i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %86
  %99 = load i32, i32* @LOG_INFO, align 4
  %100 = load i32, i32* @errno, align 4
  %101 = call i32 @strerror(i32 %100)
  %102 = call i32 (i32, i8*, ...) @tftp_log(i32 %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %104

103:                                              ; preds = %86
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %104

104:                                              ; preds = %103, %98
  %105 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tftp_log(i32, i8*, ...) #2

declare dso_local i32 @DROPPACKETn(i8*, i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
