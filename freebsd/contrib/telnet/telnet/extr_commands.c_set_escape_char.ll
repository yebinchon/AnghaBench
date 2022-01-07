; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_set_escape_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_set_escape_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rlogin = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Telnet rlogin escape character is '%s'.\0A\00", align 1
@escape = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Telnet escape character is '%s'.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_escape_char(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @rlogin, align 8
  %4 = load i64, i64* @_POSIX_VDISABLE, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i8*, i8** %2, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @special(i8* %15)
  br label %19

17:                                               ; preds = %9, %6
  %18 = load i64, i64* @_POSIX_VDISABLE, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i64 [ %16, %14 ], [ %18, %17 ]
  store i64 %20, i64* @rlogin, align 8
  %21 = load i64, i64* @rlogin, align 8
  %22 = call i8* @control(i64 %21)
  %23 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %42

24:                                               ; preds = %1
  %25 = load i8*, i8** %2, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i8*, i8** %2, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %2, align 8
  %34 = call i64 @special(i8* %33)
  br label %37

35:                                               ; preds = %27, %24
  %36 = load i64, i64* @_POSIX_VDISABLE, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i64 [ %34, %32 ], [ %36, %35 ]
  store i64 %38, i64* @escape, align 8
  %39 = load i64, i64* @escape, align 8
  %40 = call i8* @control(i64 %39)
  %41 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %37, %19
  ret void
}

declare dso_local i64 @special(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @control(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
