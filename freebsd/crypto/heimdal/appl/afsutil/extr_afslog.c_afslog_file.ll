; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/afsutil/extr_afslog.c_afslog_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/afsutil/extr_afslog.c_afslog_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"No cell found for file \22%s\22.\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"File \22%s\22 lives in cell \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @afslog_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afslog_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %7 = call i64 @k_afs_cell_of_file(i8* %5, i8* %6, i32 64)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 -1, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load i64, i64* @verbose, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %18 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8* %17)
  br label %19

19:                                               ; preds = %15, %12
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %21 = call i32 @afslog_cell(i8* %20, i32 0)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @k_afs_cell_of_file(i8*, i8*, i32) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @afslog_cell(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
