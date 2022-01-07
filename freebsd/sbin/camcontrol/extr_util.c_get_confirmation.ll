; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_util.c_get_confirmation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_util.c_get_confirmation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Are you SURE you want to do this? (yes/no) \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Please answer \22yes\22 or \22no\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_confirmation() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca i32, align 4
  store i32 -1, i32* %2, align 4
  br label %3

3:                                                ; preds = %27, %0
  %4 = load i32, i32* @stdout, align 4
  %5 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %7 = load i32, i32* @stdin, align 4
  %8 = call i32* @fgets(i8* %6, i32 1024, i32 %7)
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %12 = call i64 @strncasecmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %24

15:                                               ; preds = %10
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %17 = call i64 @strncasecmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %19
  br label %24

24:                                               ; preds = %23, %14
  br label %26

25:                                               ; preds = %3
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %3, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
