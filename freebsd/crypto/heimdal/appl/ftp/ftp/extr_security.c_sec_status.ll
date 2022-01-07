; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_security.c_sec_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_security.c_sec_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@sec_complete = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Using %s for authentication.\0A\00", align 1
@mech = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Using %s command channel.\0A\00", align 1
@command_prot = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Using %s data channel.\0A\00", align 1
@data_prot = common dso_local global i32 0, align 4
@buffer_size = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Protection buffer size: %lu.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Not using any security mechanism.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sec_status() #0 {
  %1 = load i64, i64* @sec_complete, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %20

3:                                                ; preds = %0
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mech, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i32, i32* @command_prot, align 4
  %9 = call i8* @level_to_name(i32 %8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* @data_prot, align 4
  %12 = call i8* @level_to_name(i32 %11)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  %14 = load i64, i64* @buffer_size, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* @buffer_size, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %17)
  br label %19

19:                                               ; preds = %16, %3
  br label %22

20:                                               ; preds = %0
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @level_to_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
