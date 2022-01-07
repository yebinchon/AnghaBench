; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assignment = type { %struct.TYPE_2__, %struct.assignment* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"#include <stdio.h>\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"#include <getarg.h>\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"#include <sl.h>\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"#include \22%s\22\0A\0A\00", align 1
@hname = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"SL_cmd commands[] = {\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"{ NULL }\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"extern SL_cmd commands[];\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.assignment*)* @gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen(%struct.assignment* %0) #0 {
  %2 = alloca %struct.assignment*, align 8
  %3 = alloca %struct.assignment*, align 8
  store %struct.assignment* %0, %struct.assignment** %2, align 8
  %4 = call i32 (i32, i8*, ...) @cprint(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (i32, i8*, ...) @cprint(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i32, i8*, ...) @cprint(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @hname, align 4
  %8 = call i32 (i32, i8*, ...) @cprint(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %7)
  %9 = call i32 @hprint(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @hprint(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @hprint(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %12 = load %struct.assignment*, %struct.assignment** %2, align 8
  store %struct.assignment* %12, %struct.assignment** %3, align 8
  br label %13

13:                                               ; preds = %22, %1
  %14 = load %struct.assignment*, %struct.assignment** %3, align 8
  %15 = icmp ne %struct.assignment* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load %struct.assignment*, %struct.assignment** %3, align 8
  %18 = getelementptr inbounds %struct.assignment, %struct.assignment* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @gen_wrapper(i32 %20)
  br label %22

22:                                               ; preds = %16
  %23 = load %struct.assignment*, %struct.assignment** %3, align 8
  %24 = getelementptr inbounds %struct.assignment, %struct.assignment* %23, i32 0, i32 1
  %25 = load %struct.assignment*, %struct.assignment** %24, align 8
  store %struct.assignment* %25, %struct.assignment** %3, align 8
  br label %13

26:                                               ; preds = %13
  %27 = call i32 (i32, i8*, ...) @cprint(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %28 = load %struct.assignment*, %struct.assignment** %2, align 8
  store %struct.assignment* %28, %struct.assignment** %3, align 8
  br label %29

29:                                               ; preds = %38, %26
  %30 = load %struct.assignment*, %struct.assignment** %3, align 8
  %31 = icmp ne %struct.assignment* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.assignment*, %struct.assignment** %3, align 8
  %34 = getelementptr inbounds %struct.assignment, %struct.assignment* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @gen_command(i32 %36)
  br label %38

38:                                               ; preds = %32
  %39 = load %struct.assignment*, %struct.assignment** %3, align 8
  %40 = getelementptr inbounds %struct.assignment, %struct.assignment* %39, i32 0, i32 1
  %41 = load %struct.assignment*, %struct.assignment** %40, align 8
  store %struct.assignment* %41, %struct.assignment** %3, align 8
  br label %29

42:                                               ; preds = %29
  %43 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %44 = call i32 (i32, i8*, ...) @cprint(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %45 = call i32 @hprint(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cprint(i32, i8*, ...) #1

declare dso_local i32 @hprint(i32, i8*) #1

declare dso_local i32 @gen_wrapper(i32) #1

declare dso_local i32 @gen_command(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
