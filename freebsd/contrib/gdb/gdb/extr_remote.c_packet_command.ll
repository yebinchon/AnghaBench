; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_packet_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_packet_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_state = type { i32 }

@remote_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"command can only be used with remote target\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"remote-packet command requires packet text as argument\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sending: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"received: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @packet_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packet_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.remote_state*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %7, %struct.remote_state** %5, align 8
  %8 = load %struct.remote_state*, %struct.remote_state** %5, align 8
  %9 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @alloca(i32 %10)
  store i8* %11, i8** %6, align 8
  %12 = load i32, i32* @remote_desc, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i8*, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  %22 = call i32 @puts_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @print_packet(i8* %23)
  %25 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @putpkt(i8* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.remote_state*, %struct.remote_state** %5, align 8
  %30 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @getpkt(i8* %28, i32 %31, i32 0)
  %33 = call i32 @puts_filtered(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @print_packet(i8* %34)
  %36 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @puts_filtered(i8*) #1

declare dso_local i32 @print_packet(i8*) #1

declare dso_local i32 @putpkt(i8*) #1

declare dso_local i32 @getpkt(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
