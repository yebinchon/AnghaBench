; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_login_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_login_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@machine = common dso_local global i8* null, align 8
@user = common dso_local global i8* null, align 8
@passwd = common dso_local global i8* null, align 8
@dir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Set info to %s %s %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Syntax is ftplogin <machine> <user> <passwd> <directory>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @e7000_login_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e7000_login_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = call i8* @next(i8** %3)
  store i8* %8, i8** @machine, align 8
  %9 = call i8* @next(i8** %3)
  store i8* %9, i8** @user, align 8
  %10 = call i8* @next(i8** %3)
  store i8* %10, i8** @passwd, align 8
  %11 = call i8* @next(i8** %3)
  store i8* %11, i8** @dir, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %7
  %15 = load i8*, i8** @machine, align 8
  %16 = load i8*, i8** @user, align 8
  %17 = load i8*, i8** @passwd, align 8
  %18 = load i8*, i8** @dir, align 8
  %19 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16, i8* %17, i8* %18)
  br label %20

20:                                               ; preds = %14, %7
  br label %23

21:                                               ; preds = %2
  %22 = call i32 @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %20
  ret void
}

declare dso_local i8* @next(i8**) #1

declare dso_local i32 @printf_unfiltered(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
