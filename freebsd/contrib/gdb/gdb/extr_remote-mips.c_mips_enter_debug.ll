; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_enter_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_enter_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mips_send_seq = common dso_local global i64 0, align 8
@mips_receive_seq = common dso_local global i64 0, align 8
@mips_monitor = common dso_local global i64 0, align 8
@MON_IDT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"debug\0D\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"db tty0\0D\00", align 1
@mips_desc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@DATA_MAXLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Failed to initialize (didn't receive packet).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips_enter_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_enter_debug() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* @mips_send_seq, align 8
  store i64 0, i64* @mips_receive_seq, align 8
  %3 = load i64, i64* @mips_monitor, align 8
  %4 = load i64, i64* @MON_IDT, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @mips_send_command(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %10

8:                                                ; preds = %0
  %9 = call i32 @mips_send_command(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %10

10:                                               ; preds = %8, %6
  %11 = call i32 @sleep(i32 1)
  %12 = load i32, i32* @mips_desc, align 4
  %13 = call i32 @serial_write(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %14 = load i64, i64* @mips_monitor, align 8
  %15 = load i64, i64* @MON_IDT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = call i32 @mips_expect(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %10
  %20 = load i32, i32* @DATA_MAXLEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %1, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %2, align 8
  %25 = call i64 @mips_receive_packet(i8* %24, i32 1, i32 3)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 @mips_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %30)
  ret void
}

declare dso_local i32 @mips_send_command(i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @serial_write(i32, i8*, i32) #1

declare dso_local i32 @mips_expect(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @mips_receive_packet(i8*, i32, i32) #1

declare dso_local i32 @mips_error(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
