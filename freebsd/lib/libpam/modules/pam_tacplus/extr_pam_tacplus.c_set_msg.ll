; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_tacplus/extr_pam_tacplus.c_set_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_tacplus/extr_pam_tacplus.c_set_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i32 }

@LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"tac_set_msg: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tac_handle*, i8*)* @set_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_msg(%struct.tac_handle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tac_handle*, align 8
  %5 = alloca i8*, align 8
  store %struct.tac_handle* %0, %struct.tac_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @tac_set_msg(%struct.tac_handle* %6, i8* %7)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* @LOG_CRIT, align 4
  %12 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %13 = call i32 @tac_strerror(%struct.tac_handle* %12)
  %14 = call i32 @syslog(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %16 = call i32 @tac_close(%struct.tac_handle* %15)
  store i32 -1, i32* %3, align 4
  br label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %10
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @tac_set_msg(%struct.tac_handle*, i8*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @tac_strerror(%struct.tac_handle*) #1

declare dso_local i32 @tac_close(%struct.tac_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
