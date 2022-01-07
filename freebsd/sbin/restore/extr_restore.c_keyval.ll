; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_keyval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_keyval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@keyval.keybuf = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"|NIL\00", align 1
@ONTAPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"|ONTAPE\00", align 1
@INOFND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"|INOFND\00", align 1
@NAMEFND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"|NAMEFND\00", align 1
@MODECHG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"|MODECHG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @keyval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @keyval(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @strcpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @keyval.keybuf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @keyval.keybuf, i64 0, i64 0), align 16
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @ONTAPE, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @strcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @keyval.keybuf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @INOFND, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @strcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @keyval.keybuf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @NAMEFND, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @strcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @keyval.keybuf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @MODECHG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @strcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @keyval.keybuf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @keyval.keybuf, i64 0, i64 1)
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
