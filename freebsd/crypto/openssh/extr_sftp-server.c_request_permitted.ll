; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-server.c_request_permitted.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-server.c_request_permitted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_handler = type { i32, i64 }

@readonly = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Refusing %s request in read-only mode\00", align 1
@request_blacklist = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Refusing blacklisted %s request\00", align 1
@request_whitelist = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Permitting whitelisted %s request\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Refusing non-whitelisted %s request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sftp_handler*)* @request_permitted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_permitted(%struct.sftp_handler* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sftp_handler*, align 8
  %4 = alloca i8*, align 8
  store %struct.sftp_handler* %0, %struct.sftp_handler** %3, align 8
  %5 = load i64, i64* @readonly, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.sftp_handler*, %struct.sftp_handler** %3, align 8
  %9 = getelementptr inbounds %struct.sftp_handler, %struct.sftp_handler* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.sftp_handler*, %struct.sftp_handler** %3, align 8
  %14 = getelementptr inbounds %struct.sftp_handler, %struct.sftp_handler* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @verbose(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %2, align 4
  br label %60

17:                                               ; preds = %7, %1
  %18 = load i32*, i32** @request_blacklist, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load %struct.sftp_handler*, %struct.sftp_handler** %3, align 8
  %22 = getelementptr inbounds %struct.sftp_handler, %struct.sftp_handler* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** @request_blacklist, align 8
  %25 = call i8* @match_list(i32 %23, i32* %24, i32* null)
  store i8* %25, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load %struct.sftp_handler*, %struct.sftp_handler** %3, align 8
  %31 = getelementptr inbounds %struct.sftp_handler, %struct.sftp_handler* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @verbose(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i32 0, i32* %2, align 4
  br label %60

34:                                               ; preds = %20, %17
  %35 = load i32*, i32** @request_whitelist, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load %struct.sftp_handler*, %struct.sftp_handler** %3, align 8
  %39 = getelementptr inbounds %struct.sftp_handler, %struct.sftp_handler* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** @request_whitelist, align 8
  %42 = call i8* @match_list(i32 %40, i32* %41, i32* null)
  store i8* %42, i8** %4, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load %struct.sftp_handler*, %struct.sftp_handler** %3, align 8
  %48 = getelementptr inbounds %struct.sftp_handler, %struct.sftp_handler* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @debug2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  store i32 1, i32* %2, align 4
  br label %60

51:                                               ; preds = %37, %34
  %52 = load i32*, i32** @request_whitelist, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.sftp_handler*, %struct.sftp_handler** %3, align 8
  %56 = getelementptr inbounds %struct.sftp_handler, %struct.sftp_handler* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @verbose(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  store i32 0, i32* %2, align 4
  br label %60

59:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %54, %44, %27, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @verbose(i8*, i32) #1

declare dso_local i8* @match_list(i32, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @debug2(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
