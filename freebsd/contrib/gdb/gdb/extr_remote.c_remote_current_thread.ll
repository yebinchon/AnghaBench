; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_current_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_current_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_state = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"qC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @remote_current_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_current_thread(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.remote_state*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %6, %struct.remote_state** %4, align 8
  %7 = load %struct.remote_state*, %struct.remote_state** %4, align 8
  %8 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @alloca(i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = call i32 @putpkt(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.remote_state*, %struct.remote_state** %4, align 8
  %14 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @getpkt(i8* %12, i32 %15, i32 0)
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 81
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 67
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = call i32 @strtol(i8* %30, i32* null, i32 16)
  %32 = call i32 @pid_to_ptid(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %22, %1
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @putpkt(i8*) #1

declare dso_local i32 @getpkt(i8*, i32, i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
