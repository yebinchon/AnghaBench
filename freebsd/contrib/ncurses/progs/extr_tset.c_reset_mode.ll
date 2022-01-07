; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tset.c_reset_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tset.c_reset_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i8** }

@STDERR_FILENO = common dso_local global i32 0, align 4
@mode = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@BRKINT = common dso_local global i32 0, align 4
@BSDLY = common dso_local global i32 0, align 4
@CDISCARD = common dso_local global i32 0, align 4
@CEOF = common dso_local global i32 0, align 4
@CERASE = common dso_local global i32 0, align 4
@CFLUSH = common dso_local global i32 0, align 4
@CINTR = common dso_local global i32 0, align 4
@CKILL = common dso_local global i32 0, align 4
@CLNEXT = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@CQUIT = common dso_local global i32 0, align 4
@CRDLY = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CRPRNT = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSTART = common dso_local global i32 0, align 4
@CSTOP = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@CSUSP = common dso_local global i32 0, align 4
@CWERASE = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@ECHOK = common dso_local global i32 0, align 4
@ECHOKE = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@ECHOPRT = common dso_local global i32 0, align 4
@FFDLY = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IMAXBEL = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@IUCLC = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@NLDLY = common dso_local global i32 0, align 4
@NOFLSH = common dso_local global i32 0, align 4
@OCRNL = common dso_local global i32 0, align 4
@OFDEL = common dso_local global i32 0, align 4
@OFILL = common dso_local global i32 0, align 4
@OLCUC = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@ONLRET = common dso_local global i32 0, align 4
@ONOCR = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@TABDLY = common dso_local global i32 0, align 4
@TOSTOP = common dso_local global i32 0, align 4
@VDISCARD = common dso_local global i64 0, align 8
@VEOF = common dso_local global i64 0, align 8
@VERASE = common dso_local global i64 0, align 8
@VFLUSH = common dso_local global i64 0, align 8
@VINTR = common dso_local global i64 0, align 8
@VKILL = common dso_local global i64 0, align 8
@VLNEXT = common dso_local global i64 0, align 8
@VQUIT = common dso_local global i64 0, align 8
@VREPRINT = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@VSUSP = common dso_local global i64 0, align 8
@VTDLY = common dso_local global i32 0, align 4
@VWERASE = common dso_local global i64 0, align 8
@XCASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reset_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_mode() #0 {
  %1 = load i32, i32* @STDERR_FILENO, align 4
  %2 = call i32 @stty(i32 %1, %struct.TYPE_5__* @mode)
  %3 = load i32, i32* @STDERR_FILENO, align 4
  %4 = call i32 @SET_TTY(i32 %3, %struct.TYPE_5__* @mode)
  ret void
}

declare dso_local i32 @stty(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @SET_TTY(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
