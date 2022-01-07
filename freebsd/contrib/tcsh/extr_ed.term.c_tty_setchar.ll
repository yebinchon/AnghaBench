; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.term.c_tty_setchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.term.c_tty_setchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.termios, %struct.tchars, %struct.ttypagestat, %struct.ltchars }
%struct.termios = type { i8*, i8, i8 }
%struct.tchars = type { i8, i8, i8, i8, i8, i8 }
%struct.ttypagestat = type { i8, i8, i8, i64, i64, i64 }
%struct.ltchars = type { i8, i8, i8, i8, i8, i8 }

@C_BRK = common dso_local global i64 0, align 8
@C_DISCARD = common dso_local global i64 0, align 8
@C_DSUSP = common dso_local global i64 0, align 8
@C_DSWTCH = common dso_local global i64 0, align 8
@C_EOF = common dso_local global i64 0, align 8
@C_EOL = common dso_local global i64 0, align 8
@C_EOL2 = common dso_local global i64 0, align 8
@C_ERASE = common dso_local global i64 0, align 8
@C_ERASE2 = common dso_local global i64 0, align 8
@C_INTR = common dso_local global i64 0, align 8
@C_KILL = common dso_local global i64 0, align 8
@C_KILL2 = common dso_local global i64 0, align 8
@C_LNEXT = common dso_local global i64 0, align 8
@C_MIN = common dso_local global i64 0, align 8
@C_PAGE = common dso_local global i64 0, align 8
@C_PGOFF = common dso_local global i64 0, align 8
@C_QUIT = common dso_local global i64 0, align 8
@C_REPRINT = common dso_local global i64 0, align 8
@C_START = common dso_local global i64 0, align 8
@C_STATUS = common dso_local global i64 0, align 8
@C_STOP = common dso_local global i64 0, align 8
@C_SUSP = common dso_local global i64 0, align 8
@C_SWTCH = common dso_local global i64 0, align 8
@C_TIME = common dso_local global i64 0, align 8
@C_WERASE = common dso_local global i64 0, align 8
@VDISCARD = common dso_local global i64 0, align 8
@VDSUSP = common dso_local global i64 0, align 8
@VDSWTCH = common dso_local global i64 0, align 8
@VEOF = common dso_local global i64 0, align 8
@VEOL = common dso_local global i64 0, align 8
@VEOL2 = common dso_local global i64 0, align 8
@VERASE = common dso_local global i64 0, align 8
@VERASE2 = common dso_local global i64 0, align 8
@VINTR = common dso_local global i64 0, align 8
@VKILL = common dso_local global i64 0, align 8
@VKILL2 = common dso_local global i64 0, align 8
@VLNEXT = common dso_local global i64 0, align 8
@VMIN = common dso_local global i64 0, align 8
@VPAGE = common dso_local global i64 0, align 8
@VPGOFF = common dso_local global i64 0, align 8
@VQUIT = common dso_local global i64 0, align 8
@VREPRINT = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@VSTATUS = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@VSUSP = common dso_local global i64 0, align 8
@VSWTCH = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@VWERASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_setchar(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
