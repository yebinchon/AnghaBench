; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tabs.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tabs.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usage.msg = internal global [21 x i8*] [i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [37 x i8] c"Usage: tabs [options] [tabstop-list]\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Options:\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"  -0       reset tabs\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"  -8       set tabs to standard interval\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"  -a       Assembler, IBM S/370, first format\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"  -a2      Assembler, IBM S/370, second format\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"  -c       COBOL, normal format\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"  -c2      COBOL compact format\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"  -c3      COBOL compact format extended\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"  -d       debug (show ruler with expected/actual tab positions)\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"  -f       FORTRAN\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"  -n       no-op (do not modify terminal settings)\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"  -p       PL/I\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"  -s       SNOBOL\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"  -u       UNIVAC 1100 Assembler\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"  -T name  use terminal type 'name'\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"  -V       print version\00", align 1
@.str.18 = private unnamed_addr constant [67 x i8] c"A tabstop-list is an ordered list of column numbers, e.g., 1,11,21\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"or 1,+10,+10 which is the same.\00", align 1
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @stdout, align 4
  %3 = call i32 @fflush(i32 %2)
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @SIZEOF(i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @usage.msg, i64 0, i64 0))
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* %1, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [21 x i8*], [21 x i8*]* @usage.msg, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %1, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %4

18:                                               ; preds = %4
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @ExitProgram(i32 %19)
  ret void
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @SIZEOF(i8**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @ExitProgram(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
