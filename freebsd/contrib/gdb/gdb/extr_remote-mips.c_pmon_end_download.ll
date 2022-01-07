; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_pmon_end_download.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_pmon_end_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@tftp_in_use = common dso_local global i64 0, align 8
@pmon_end_download.load_cmd_prefix = internal global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [12 x i8] c"load -b -s \00", align 1
@tftp_file = common dso_local global i32* null, align 8
@tftp_localname = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"initEther\0D\00", align 1
@tftp_name = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Downloading from \00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c", ^C to abort\0D\0A\00", align 1
@mips_monitor = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"termination\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Entry address is \00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Entry Address  = \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @pmon_end_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmon_end_download(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [9 x i8], align 1
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @tftp_in_use, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %2
  %11 = load i32*, i32** @tftp_file, align 8
  %12 = call i32 @fclose(i32* %11)
  store i32* null, i32** @tftp_file, align 8
  %13 = load i32, i32* @tftp_localname, align 4
  %14 = call i64 @stat(i32 %13, %struct.stat* %7)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load i32, i32* @tftp_localname, align 4
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @S_IROTH, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @chmod(i32 %17, i32 %21)
  br label %23

23:                                               ; preds = %16, %10
  %24 = call i32 @mips_send_command(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %25 = load i8*, i8** @pmon_end_download.load_cmd_prefix, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = load i8*, i8** @tftp_name, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = add nsw i64 %26, %28
  %30 = add nsw i64 %29, 2
  %31 = call i8* @xmalloc(i64 %30)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** @pmon_end_download.load_cmd_prefix, align 8
  %34 = call i32 @strcpy(i8* %32, i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** @tftp_name, align 8
  %37 = call i32 @strcat(i8* %35, i8* %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strcat(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @mips_send_command(i8* %40, i32 0)
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @xfree(i8* %42)
  %44 = call i32 @mips_expect_download(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %23
  br label %83

47:                                               ; preds = %23
  %48 = load i8*, i8** @tftp_name, align 8
  %49 = call i32 @mips_expect_download(i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %83

52:                                               ; preds = %47
  %53 = call i32 @mips_expect_download(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  br label %83

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %2
  %58 = load i32, i32* @mips_monitor, align 4
  switch i32 %58, label %68 [
    i32 128, label %59
  ]

59:                                               ; preds = %57
  %60 = call i32 @pmon_check_ack(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @pmon_check_entry_address(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @pmon_check_total(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %83

67:                                               ; preds = %59
  br label %77

68:                                               ; preds = %57
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @pmon_check_entry_address(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %69)
  %71 = call i32 @pmon_check_ack(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @pmon_check_total(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  br label %83

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %67
  %78 = load i64, i64* @tftp_in_use, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @tftp_localname, align 4
  %82 = call i32 @remove(i32 %81)
  br label %83

83:                                               ; preds = %46, %51, %55, %66, %75, %80, %77
  ret void
}

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @chmod(i32, i32) #1

declare dso_local i32 @mips_send_command(i8*, i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @mips_expect_download(i8*) #1

declare dso_local i32 @pmon_check_ack(i8*) #1

declare dso_local i32 @pmon_check_entry_address(i8*, i32) #1

declare dso_local i32 @pmon_check_total(i32) #1

declare dso_local i32 @remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
