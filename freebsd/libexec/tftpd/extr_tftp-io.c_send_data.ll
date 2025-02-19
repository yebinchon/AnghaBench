; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-io.c_send_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-io.c_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tftphdr = type { i32, i8*, i8* }

@MAXPKTSIZE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_PACKETS = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Sending DATA packet %d of %d bytes\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"send_data\00", align 1
@DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_data(i32 %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tftphdr*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @MAXPKTSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* @debug, align 4
  %18 = load i32, i32* @DEBUG_PACKETS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i32, i32* @LOG_DEBUG, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @tftp_log(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %4
  %27 = call i32 @DROPPACKETn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %28 = bitcast i8* %16 to %struct.tftphdr*
  store %struct.tftphdr* %28, %struct.tftphdr** %11, align 8
  %29 = load i64, i64* @DATA, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i8* @htons(i32 %30)
  %32 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %33 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* %6, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i8* @htons(i32 %35)
  %37 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %38 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %40 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @memcpy(i32 %41, i8* %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %48 = bitcast %struct.tftphdr* %47 to i8*
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 4
  %51 = call i32 @send_packet(i32 %45, i64 %46, i8* %48, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %53)
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tftp_log(i32, i8*, i64, i32) #2

declare dso_local i32 @DROPPACKETn(i8*, i32) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @send_packet(i32, i64, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
