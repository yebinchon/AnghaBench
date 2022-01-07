; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_sys_bsd.c_TerminalSaveState.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_sys_bsd.c_TerminalSaveState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIOCGETP = common dso_local global i32 0, align 4
@ottyb = common dso_local global i64 0, align 8
@TIOCGETC = common dso_local global i32 0, align 4
@otc = common dso_local global i64 0, align 8
@TIOCGLTC = common dso_local global i32 0, align 4
@oltc = common dso_local global i64 0, align 8
@TIOCLGET = common dso_local global i32 0, align 4
@olmode = common dso_local global i32 0, align 4
@ntc = common dso_local global i64 0, align 8
@nltc = common dso_local global i64 0, align 8
@nttyb = common dso_local global i64 0, align 8
@new_tc = common dso_local global i32 0, align 4
@old_tc = common dso_local global i32 0, align 4
@termAytChar = common dso_local global i8* null, align 8
@termFlushChar = common dso_local global i8* null, align 8
@termLiteralNextChar = common dso_local global i8* null, align 8
@termRprntChar = common dso_local global i8* null, align 8
@termStartChar = common dso_local global i8* null, align 8
@termStopChar = common dso_local global i8* null, align 8
@termWerasChar = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TerminalSaveState() #0 {
  %1 = load i32, i32* @TIOCGETP, align 4
  %2 = call i32 @ioctl(i32 0, i32 %1, i8* bitcast (i64* @ottyb to i8*))
  %3 = load i32, i32* @TIOCGETC, align 4
  %4 = call i32 @ioctl(i32 0, i32 %3, i8* bitcast (i64* @otc to i8*))
  %5 = load i32, i32* @TIOCGLTC, align 4
  %6 = call i32 @ioctl(i32 0, i32 %5, i8* bitcast (i64* @oltc to i8*))
  %7 = load i32, i32* @TIOCLGET, align 4
  %8 = call i32 @ioctl(i32 0, i32 %7, i8* bitcast (i32* @olmode to i8*))
  %9 = load i64, i64* @otc, align 8
  store i64 %9, i64* @ntc, align 8
  %10 = load i64, i64* @oltc, align 8
  store i64 %10, i64* @nltc, align 8
  %11 = load i64, i64* @ottyb, align 8
  store i64 %11, i64* @nttyb, align 8
  ret void
}

declare dso_local i32 @ioctl(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
