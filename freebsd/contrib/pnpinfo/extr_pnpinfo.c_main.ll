; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pnpinfo/extr_pnpinfo.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pnpinfo/extr_pnpinfo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Checking for Plug-n-Play devices...\0A\00", align 1
@rd_port = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Trying Read_Port at %x...\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"No Plug-n-Play devices were found\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 128, i32* @rd_port, align 4
  br label %8

8:                                                ; preds = %22, %2
  %9 = load i32, i32* @rd_port, align 4
  %10 = icmp slt i32 %9, 255
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load i32, i32* @rd_port, align 4
  %13 = shl i32 %12, 2
  %14 = or i32 %13, 3
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = call i32 @DEB(i32 %15)
  %17 = call i32 (...) @isolation_protocol()
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %25

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* @rd_port, align 4
  %24 = add nsw i32 %23, 16
  store i32 %24, i32* @rd_port, align 4
  br label %8

25:                                               ; preds = %20, %8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %31

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %28
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @isolation_protocol(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
