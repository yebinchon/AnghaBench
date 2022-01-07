; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_main.c_kgdb_dmesg.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_main.c_kgdb_dmesg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quiet = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"msgbufp->msg_ptr\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"msgbufp->msg_size\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"msgbufp->msg_rseq\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"msgbufp->msg_wseq\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\0AUnread portion of the kernel message buffer:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kgdb_dmesg() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = load i64, i64* @quiet, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %63

9:                                                ; preds = %0
  %10 = call i64 @kgdb_parse(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i64 %10, i64* %1, align 8
  %11 = call i64 @kgdb_parse(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %2, align 4
  %13 = load i64, i64* %1, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %9
  br label %63

19:                                               ; preds = %15
  %20 = call i64 @kgdb_parse(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  %22 = call i64 @kgdb_parse(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @MSGBUF_SEQ_TO_POS(i32 %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @MSGBUF_SEQ_TO_POS(i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %63

34:                                               ; preds = %19
  %35 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %54, %34
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i64, i64* %1, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 @read_memory(i64 %44, i8* %5, i32 1)
  %46 = load i8, i8* %5, align 1
  %47 = call i32 @putchar(i8 signext %46)
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %40
  br label %36

55:                                               ; preds = %36
  %56 = load i8, i8* %5, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 10
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 @putchar(i8 signext 10)
  br label %61

61:                                               ; preds = %59, %55
  %62 = call i32 @putchar(i8 signext 10)
  br label %63

63:                                               ; preds = %61, %33, %18, %8
  ret void
}

declare dso_local i64 @kgdb_parse(i8*) #1

declare dso_local i32 @MSGBUF_SEQ_TO_POS(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @read_memory(i64, i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
