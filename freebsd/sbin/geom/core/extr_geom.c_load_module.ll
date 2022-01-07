; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_load_module.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_load_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"g_%s\00", align 1
@class_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"geom_%s\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"cannot load %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_module() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %4 = load i8*, i8** @class_name, align 8
  %5 = call i32 @snprintf(i8* %3, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %7 = load i8*, i8** @class_name, align 8
  %8 = call i32 @snprintf(i8* %6, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %10 = call i64 @modfind(i8* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %0
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %14 = call i64 @kldload(i8* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %18 = call i64 @modfind(i8* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16, %12
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EEXIST, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %27 = call i32 @err(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %28, %16
  br label %30

30:                                               ; preds = %29, %0
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @modfind(i8*) #1

declare dso_local i64 @kldload(i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
