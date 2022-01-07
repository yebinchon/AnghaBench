; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_parse_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_parse_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@using_pc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" %s %s %d %s\00", align 1
@using_tcp_remote = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" %s %d %s\00", align 1
@.str.4 = private unnamed_addr constant [154 x i8] c"Bad arguments.  Usage:\09target e7000 <device> <speed>\0Aor \09\09target e7000 <host>[:<port>]\0Aor \09\09target e7000 tcp_remote <host>[:<port>]\0Aor \09\09target e7000 pc\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c":23\00", align 1
@using_tcp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @e7000_parse_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e7000_parse_device(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strcasecmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strcpy(i8* %17, i8* %18)
  store i32 1, i32* @using_pc, align 4
  br label %71

20:                                               ; preds = %12, %3
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strncmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %32 = call i32 (i8*, i8*, i8*, ...) @sscanf(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %29, i8* %30, i32* %6, i8* %31)
  store i32 %32, i32* %8, align 4
  store i32 1, i32* @using_tcp_remote, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %8, align 4
  br label %44

35:                                               ; preds = %23, %20
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %42 = call i32 (i8*, i8*, i8*, ...) @sscanf(i8* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %40, i32* %6, i8* %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %38, %35
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 2
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @error(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47, %44
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @strchr(i8* %56, i8 signext 58)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @strcat(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %55, %52
  %63 = load i32, i32* @using_tcp_remote, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @strchr(i8* %66, i8 signext 58)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* @using_tcp, align 4
  br label %70

70:                                               ; preds = %69, %65, %62
  br label %71

71:                                               ; preds = %70, %16
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
