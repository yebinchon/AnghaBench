; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_tacplus/extr_pam_tacplus.c_get_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_tacplus/extr_pam_tacplus.c_get_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i32 }

@LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"tac_get_msg: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tac_handle*)* @get_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_msg(%struct.tac_handle* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tac_handle*, align 8
  %4 = alloca i8*, align 8
  store %struct.tac_handle* %0, %struct.tac_handle** %3, align 8
  %5 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %6 = call i8* @tac_get_msg(%struct.tac_handle* %5)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @LOG_CRIT, align 4
  %11 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %12 = call i32 @tac_strerror(%struct.tac_handle* %11)
  %13 = call i32 @syslog(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %15 = call i32 @tac_close(%struct.tac_handle* %14)
  store i8* null, i8** %2, align 8
  br label %18

16:                                               ; preds = %1
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %2, align 8
  br label %18

18:                                               ; preds = %16, %9
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

declare dso_local i8* @tac_get_msg(%struct.tac_handle*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @tac_strerror(%struct.tac_handle*) #1

declare dso_local i32 @tac_close(%struct.tac_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
