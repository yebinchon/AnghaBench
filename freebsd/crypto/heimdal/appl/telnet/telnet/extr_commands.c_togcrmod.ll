; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_togcrmod.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_togcrmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crmod = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Deprecated usage - please use 'toggle crmod' in the future.\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s map carriage return on output.\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Will\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Won't\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @togcrmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @togcrmod() #0 {
  %1 = load i32, i32* @crmod, align 4
  %2 = icmp ne i32 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  store i32 %4, i32* @crmod, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @crmod, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* @stdout, align 4
  %12 = call i32 @fflush(i32 %11)
  ret i32 1
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
