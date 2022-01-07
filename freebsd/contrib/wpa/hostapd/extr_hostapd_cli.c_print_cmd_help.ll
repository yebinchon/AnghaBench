; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_print_cmd_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_print_cmd_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_cli_cmd = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s%s \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.hostapd_cli_cmd*, i8*)* @print_cmd_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cmd_help(i32* %0, %struct.hostapd_cli_cmd* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hostapd_cli_cmd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.hostapd_cli_cmd* %1, %struct.hostapd_cli_cmd** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.hostapd_cli_cmd*, %struct.hostapd_cli_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.hostapd_cli_cmd, %struct.hostapd_cli_cmd* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %48

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.hostapd_cli_cmd*, %struct.hostapd_cli_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.hostapd_cli_cmd, %struct.hostapd_cli_cmd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19)
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %42, %14
  %22 = load %struct.hostapd_cli_cmd*, %struct.hostapd_cli_cmd** %5, align 8
  %23 = getelementptr inbounds %struct.hostapd_cli_cmd, %struct.hostapd_cli_cmd* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %7, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %21
  %30 = load i32*, i32** %4, align 8
  %31 = load i8, i8* %7, align 1
  %32 = sext i8 %31 to i32
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i8, i8* %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32*, i32** %4, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %29
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %8, align 8
  br label %21

45:                                               ; preds = %21
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %13
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
