; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"recvfrom\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Received: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to process request\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"No response\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Send: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1000 x i8], align 16
  %5 = alloca [1000 x i8], align 16
  %6 = alloca %struct.sockaddr_un, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 4, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  %11 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %12 = call i64 @recvfrom(i32 %9, i8* %10, i32 1000, i32 0, %struct.sockaddr* %11, i32* %7)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ult i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %57

17:                                               ; preds = %1
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %57

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = icmp uge i64 %22, 1000
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i64 999, i64* %8, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 %26
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  %31 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %32 = call i64 @process_cmd(i8* %30, i8* %31, i32 1000)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %57

36:                                               ; preds = %25
  %37 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %38 = load i8, i8* %37, align 16
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %57

43:                                               ; preds = %36
  %44 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* %3, align 4
  %47 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %48 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %49 = call i32 @os_strlen(i8* %48)
  %50 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @sendto(i32 %46, i8* %47, i32 %49, i32 0, %struct.sockaddr* %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %43
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %41, %34, %20, %15
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @process_cmd(i8*, i8*, i32) #1

declare dso_local i64 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
