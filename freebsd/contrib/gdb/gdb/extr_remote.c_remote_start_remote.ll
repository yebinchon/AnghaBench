; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_start_remote.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_start_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }

@immediate_quit = common dso_local global i32 0, align 4
@remote_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ui_out*, i8*)* @remote_start_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_start_remote(%struct.ui_out* %0, i8* %1) #0 {
  %3 = alloca %struct.ui_out*, align 8
  %4 = alloca i8*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @immediate_quit, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @immediate_quit, align 4
  %7 = load i32, i32* @remote_desc, align 4
  %8 = call i32 @serial_write(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %9 = call i32 @set_thread(i32 -1, i32 0)
  %10 = load i32, i32* @inferior_ptid, align 4
  %11 = call i32 @remote_current_thread(i32 %10)
  store i32 %11, i32* @inferior_ptid, align 4
  %12 = call i32 (...) @get_offsets()
  %13 = call i32 @putpkt(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @immediate_quit, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* @immediate_quit, align 4
  %16 = load %struct.ui_out*, %struct.ui_out** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @remote_start_remote_dummy(%struct.ui_out* %16, i8* %17)
  ret i32 %18
}

declare dso_local i32 @serial_write(i32, i8*, i32) #1

declare dso_local i32 @set_thread(i32, i32) #1

declare dso_local i32 @remote_current_thread(i32) #1

declare dso_local i32 @get_offsets(...) #1

declare dso_local i32 @putpkt(i8*) #1

declare dso_local i32 @remote_start_remote_dummy(%struct.ui_out*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
