; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.bind.c_bindkey_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.bind.c_bindkey_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Usage: bindkey [options] [--] [KEY [COMMAND]]\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"    -a   list or bind KEY in alternative key map\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"    -b   interpret KEY as a C-, M-, F- or X- key name\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"    -s   interpret COMMAND as a literal string to be output\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"    -c   interpret COMMAND as a builtin or external command\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"    -v   bind all keys to vi bindings\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"    -e   bind all keys to emacs bindings\0A\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"    -d   bind all keys to default editor's bindings (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"    -l   list editor commands with descriptions\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"    -r   remove KEY's binding\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"    -k   interpret KEY as a symbolic arrow-key name\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"    --   force a break from option processing\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"    -u   (or any invalid option) this message\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"Without KEY or COMMAND, prints all bindings\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"Without COMMAND, prints the binding for KEY.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bindkey_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bindkey_usage() #0 {
  %1 = call i8* @CGETS(i32 20, i32 12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %1)
  %3 = call i8* @CGETS(i32 20, i32 13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = call i8* @CGETS(i32 20, i32 14, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = call i8* @CGETS(i32 20, i32 15, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = call i8* @CGETS(i32 20, i32 16, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = call i8* @CGETS(i32 20, i32 17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = call i8* @CGETS(i32 20, i32 18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = call i8* @CGETS(i32 20, i32 19, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @xprintf(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %17 = call i8* @CGETS(i32 20, i32 20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = call i8* @CGETS(i32 20, i32 21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i8* @CGETS(i32 20, i32 22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = call i8* @CGETS(i32 20, i32 23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i8* @CGETS(i32 20, i32 24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %28 = call i8* @CGETS(i32 20, i32 25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = call i8* @CGETS(i32 20, i32 26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %30)
  ret void
}

declare dso_local i32 @xprintf(i8*, ...) #1

declare dso_local i8* @CGETS(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
