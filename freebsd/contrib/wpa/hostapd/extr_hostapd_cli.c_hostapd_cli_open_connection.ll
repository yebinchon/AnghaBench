; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_open_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_open_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

@ctrl_iface_dir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@client_socket_dir = common dso_local global i64* null, align 8
@F_OK = common dso_local global i32 0, align 4
@ctrl_conn = common dso_local global %struct.wpa_ctrl* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_ctrl* (i8*)* @hostapd_cli_open_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_ctrl* @hostapd_cli_open_connection(i8* %0) #0 {
  %2 = alloca %struct.wpa_ctrl*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.wpa_ctrl* null, %struct.wpa_ctrl** %2, align 8
  br label %51

9:                                                ; preds = %1
  %10 = load i8*, i8** @ctrl_iface_dir, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = add nsw i32 %11, %13
  %15 = add nsw i32 %14, 2
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @malloc(i32 %16)
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  store %struct.wpa_ctrl* null, %struct.wpa_ctrl** %2, align 8
  br label %51

21:                                               ; preds = %9
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i8*, i8** @ctrl_iface_dir, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @snprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25)
  %27 = load i64*, i64** @client_socket_dir, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %21
  %30 = load i64*, i64** @client_socket_dir, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i64*, i64** @client_socket_dir, align 8
  %36 = load i32, i32* @F_OK, align 4
  %37 = call i64 @access(i64* %35, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i64*, i64** @client_socket_dir, align 8
  %41 = call i32 @perror(i64* %40)
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @free(i8* %42)
  store %struct.wpa_ctrl* null, %struct.wpa_ctrl** %2, align 8
  br label %51

44:                                               ; preds = %34, %29, %21
  %45 = load i8*, i8** %4, align 8
  %46 = load i64*, i64** @client_socket_dir, align 8
  %47 = call %struct.wpa_ctrl* @wpa_ctrl_open2(i8* %45, i64* %46)
  store %struct.wpa_ctrl* %47, %struct.wpa_ctrl** @ctrl_conn, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** @ctrl_conn, align 8
  store %struct.wpa_ctrl* %50, %struct.wpa_ctrl** %2, align 8
  br label %51

51:                                               ; preds = %44, %39, %20, %8
  %52 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %2, align 8
  ret %struct.wpa_ctrl* %52
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @access(i64*, i32) #1

declare dso_local i32 @perror(i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.wpa_ctrl* @wpa_ctrl_open2(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
