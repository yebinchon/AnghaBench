; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_readchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_readchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sds_desc = common dso_local global i32 0, align 4
@remote_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%c(%x)\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Remote connection closed\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Remote communication error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @readchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @sds_desc, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @serial_readchar(i32 %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @remote_debug, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* @gdb_stdlog, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @fprintf_unfiltered(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %10, %1
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %26 [
    i32 130, label %20
    i32 129, label %22
    i32 128, label %24
  ]

20:                                               ; preds = %18
  %21 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %20
  %23 = call i32 @perror_with_name(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %18, %22
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 127
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %24
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @serial_readchar(i32, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @perror_with_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
