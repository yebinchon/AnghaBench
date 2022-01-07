; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/ses/srcs/extr_eltsub.c_scode2ascii.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/ses/srcs/extr_eltsub.c_scode2ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scode2ascii.rbuf = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"Unsupported\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Critical\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Noncritical\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Unrecoverable\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Not Installed\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Not Available\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"No Access Allowed\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"<Status 0x%x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @scode2ascii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scode2ascii(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 15
  switch i32 %4, label %23 [
    i32 128, label %5
    i32 131, label %7
    i32 136, label %9
    i32 134, label %11
    i32 129, label %13
    i32 132, label %15
    i32 130, label %17
    i32 133, label %19
    i32 135, label %21
  ]

5:                                                ; preds = %1
  %6 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @scode2ascii.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %27

7:                                                ; preds = %1
  %8 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @scode2ascii.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %27

9:                                                ; preds = %1
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @scode2ascii.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %27

11:                                               ; preds = %1
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @scode2ascii.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %27

13:                                               ; preds = %1
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @scode2ascii.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %27

15:                                               ; preds = %1
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @scode2ascii.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %27

17:                                               ; preds = %1
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @scode2ascii.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %27

19:                                               ; preds = %1
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @scode2ascii.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %27

21:                                               ; preds = %1
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @scode2ascii.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %2, align 4
  %25 = and i32 %24, 15
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @scode2ascii.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @scode2ascii.rbuf, i64 0, i64 0)
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
