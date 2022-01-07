; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/extr_t_basic.c_dofifow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/extr_t_basic.c_dofifow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"writing\0A\00", align 1
@MAGICSTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"write to fifo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @dofifow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dofifow(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [512 x i8], align 16
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i64
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %10 = load i32, i32* @MAGICSTR, align 4
  %11 = call i32 @strcpy(i8* %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %15 = call i64 @strlen(i8* %14)
  %16 = add nsw i64 %15, 1
  %17 = call i64 @rump_sys_write(i32 %12, i8* %13, i64 %16)
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %19 = call i64 @strlen(i8* %18)
  %20 = add nsw i64 %19, 1
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %1
  ret i8* null
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i64 @rump_sys_write(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
