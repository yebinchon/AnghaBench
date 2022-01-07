; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_dconsole.c_dconsole_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_dconsole.c_dconsole_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_buf = type { i32 }

@dcons_started = common dso_local global i32 0, align 4
@DCONS_BUF_SIZE = common dso_local global i32 0, align 4
@dcons_buffer = common dso_local global i32* null, align 8
@dcons_paddr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dcons.addr\00", align 1
@sc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"dcons.size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dconsole_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dconsole_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [16 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @dcons_started, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %38

13:                                               ; preds = %9, %1
  store i32 1, i32* @dcons_started, align 4
  %14 = load i32, i32* @DCONS_BUF_SIZE, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** @dcons_buffer, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = ptrtoint i32* %16 to i32
  %18 = call i64 @round_page(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @VTOP(i8* %20)
  store i32 %21, i32* @dcons_paddr, align 4
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %23 = load i32, i32* @dcons_paddr, align 4
  %24 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %26 = call i32 @setenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 1)
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to %struct.dcons_buf*
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @sc, align 4
  %31 = call i32 @dcons_init(%struct.dcons_buf* %28, i32 %29, i32 %30)
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %36 = call i32 @setenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %35, i32 1)
  %37 = call i32 (...) @fw_enable()
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %13, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @round_page(i32) #1

declare dso_local i32 @VTOP(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @dcons_init(%struct.dcons_buf*, i32, i32) #1

declare dso_local i32 @fw_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
