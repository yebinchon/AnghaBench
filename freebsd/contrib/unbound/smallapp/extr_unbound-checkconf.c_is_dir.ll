; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_is_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_is_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"warning: no search permission for one of the directories in path: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s is not a directory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_dir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @stat(i8* %5, %struct.stat* %4)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load i64, i64* @errno, align 8
  %10 = load i64, i64* @EACCES, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 1, i32* %2, align 4
  br label %27

15:                                               ; preds = %8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @perror(i8* %16)
  store i32 0, i32* %2, align 4
  br label %27

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @S_ISDIR(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 0, i32* %2, align 4
  br label %27

26:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23, %15, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
