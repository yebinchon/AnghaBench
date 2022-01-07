; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_sys_bsd.c_TerminalDefaultChars.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_sys_bsd.c_TerminalDefaultChars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@new_tc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@old_tc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@termFlushChar = common dso_local global i8* null, align 8
@termWerasChar = common dso_local global i8* null, align 8
@termRprntChar = common dso_local global i8* null, align 8
@termLiteralNextChar = common dso_local global i8* null, align 8
@termStartChar = common dso_local global i8* null, align 8
@termStopChar = common dso_local global i8* null, align 8
@termAytChar = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TerminalDefaultChars() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @new_tc, i32 0, i32 0), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @old_tc, i32 0, i32 0), align 4
  %3 = call i32 @memmove(i32 %1, i32 %2, i32 4)
  %4 = call i8* @CONTROL(i8 signext 79)
  store i8* %4, i8** @termFlushChar, align 8
  %5 = call i8* @CONTROL(i8 signext 87)
  store i8* %5, i8** @termWerasChar, align 8
  %6 = call i8* @CONTROL(i8 signext 82)
  store i8* %6, i8** @termRprntChar, align 8
  %7 = call i8* @CONTROL(i8 signext 86)
  store i8* %7, i8** @termLiteralNextChar, align 8
  %8 = call i8* @CONTROL(i8 signext 81)
  store i8* %8, i8** @termStartChar, align 8
  %9 = call i8* @CONTROL(i8 signext 83)
  store i8* %9, i8** @termStopChar, align 8
  %10 = call i8* @CONTROL(i8 signext 84)
  store i8* %10, i8** @termAytChar, align 8
  ret void
}

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i8* @CONTROL(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
