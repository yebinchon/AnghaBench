; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/audit/extr_audit.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/audit/extr_audit.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"einst\00", align 1
@AUDIT_TRIGGER_EXPIRE_TRAILS = common dso_local global i32 0, align 4
@AUDIT_TRIGGER_INITIALIZE = common dso_local global i32 0, align 4
@AUDIT_TRIGGER_ROTATE_USER = common dso_local global i32 0, align 4
@AUDIT_TRIGGER_READ_FILE = common dso_local global i32 0, align 4
@AUDIT_TRIGGER_CLOSE_AND_DIE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Trigger sent.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (...) @usage()
  br label %12

12:                                               ; preds = %10, %2
  br label %13

13:                                               ; preds = %33, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %31 [
    i32 101, label %20
    i32 105, label %22
    i32 110, label %24
    i32 115, label %26
    i32 116, label %28
    i32 63, label %30
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @AUDIT_TRIGGER_EXPIRE_TRAILS, align 4
  store i32 %21, i32* %7, align 4
  br label %33

22:                                               ; preds = %18
  %23 = load i32, i32* @AUDIT_TRIGGER_INITIALIZE, align 4
  store i32 %23, i32* %7, align 4
  br label %33

24:                                               ; preds = %18
  %25 = load i32, i32* @AUDIT_TRIGGER_ROTATE_USER, align 4
  store i32 %25, i32* %7, align 4
  br label %33

26:                                               ; preds = %18
  %27 = load i32, i32* @AUDIT_TRIGGER_READ_FILE, align 4
  store i32 %27, i32* %7, align 4
  br label %33

28:                                               ; preds = %18
  %29 = load i32, i32* @AUDIT_TRIGGER_CLOSE_AND_DIE, align 4
  store i32 %29, i32* %7, align 4
  br label %33

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %18, %30
  %32 = call i32 (...) @usage()
  br label %33

33:                                               ; preds = %31, %28, %26, %24, %22, %20
  br label %13

34:                                               ; preds = %13
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @send_trigger(i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @exit(i32 -1) #3
  unreachable

40:                                               ; preds = %34
  %41 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @send_trigger(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
