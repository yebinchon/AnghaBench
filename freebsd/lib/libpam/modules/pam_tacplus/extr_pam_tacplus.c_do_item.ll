; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_tacplus/extr_pam_tacplus.c_do_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_tacplus/extr_pam_tacplus.c_do_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i32 }

@PAM_SUCCESS = common dso_local global i32 0, align 4
@LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@PAM_SERVICE_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.tac_handle*, i32, i32 (%struct.tac_handle*, i8*)*, i8*)* @do_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_item(i32* %0, %struct.tac_handle* %1, i32 %2, i32 (%struct.tac_handle*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tac_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (%struct.tac_handle*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.tac_handle* %1, %struct.tac_handle** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 (%struct.tac_handle*, i8*)* %3, i32 (%struct.tac_handle*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @pam_get_item(i32* %14, i32 %15, i8** %13)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @PAM_SUCCESS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %6, align 4
  br label %42

22:                                               ; preds = %5
  %23 = load i8*, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load i32 (%struct.tac_handle*, i8*)*, i32 (%struct.tac_handle*, i8*)** %10, align 8
  %27 = load %struct.tac_handle*, %struct.tac_handle** %8, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 %26(%struct.tac_handle* %27, i8* %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i32, i32* @LOG_CRIT, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load %struct.tac_handle*, %struct.tac_handle** %8, align 8
  %35 = call i32 @tac_strerror(%struct.tac_handle* %34)
  %36 = call i32 @syslog(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %35)
  %37 = load %struct.tac_handle*, %struct.tac_handle** %8, align 8
  %38 = call i32 @tac_close(%struct.tac_handle* %37)
  %39 = load i32, i32* @PAM_SERVICE_ERR, align 4
  store i32 %39, i32* %6, align 4
  br label %42

40:                                               ; preds = %25, %22
  %41 = load i32, i32* @PAM_SUCCESS, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %31, %20
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @pam_get_item(i32*, i32, i8**) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i32) #1

declare dso_local i32 @tac_strerror(%struct.tac_handle*) #1

declare dso_local i32 @tac_close(%struct.tac_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
