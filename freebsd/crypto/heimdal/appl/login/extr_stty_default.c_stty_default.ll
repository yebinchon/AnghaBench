; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_stty_default.c_stty_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_stty_default.c_stty_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32, i8** }

@BRKINT = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IMAXBEL = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@ECHOK = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@ECHOKE = common dso_local global i32 0, align 4
@ECHOPRT = common dso_local global i32 0, align 4
@TOSTOP = common dso_local global i32 0, align 4
@FLUSHO = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@OXTABS = common dso_local global i32 0, align 4
@VINTR = common dso_local global i64 0, align 8
@VERASE = common dso_local global i64 0, align 8
@VKILL = common dso_local global i64 0, align 8
@VEOF = common dso_local global i64 0, align 8
@VSUSP = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stty_default() #0 {
  %1 = alloca %struct.termios, align 8
  %2 = call i32 @tcgetattr(i32 0, %struct.termios* %1)
  %3 = load i32, i32* @BRKINT, align 4
  %4 = load i32, i32* @IGNPAR, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @ICRNL, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @IXON, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @IMAXBEL, align 4
  %11 = or i32 %9, %10
  %12 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %11
  store i32 %14, i32* %12, align 8
  %15 = load i32, i32* @IXANY, align 4
  %16 = xor i32 %15, -1
  %17 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %16
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* @ISIG, align 4
  %21 = load i32, i32* @IEXTEN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ICANON, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ECHO, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ECHOE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ECHOK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ECHOCTL, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ECHOKE, align 4
  %34 = or i32 %32, %33
  %35 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @ECHOPRT, align 4
  %39 = load i32, i32* @TOSTOP, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FLUSHO, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @OPOST, align 4
  %48 = load i32, i32* @ONLCR, align 4
  %49 = or i32 %47, %48
  %50 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @OXTABS, align 4
  %54 = xor i32 %53, -1
  %55 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %54
  store i32 %57, i32* %55, align 8
  %58 = call i8* @Ctl(i8 signext 67)
  %59 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 3
  %60 = load i8**, i8*** %59, align 8
  %61 = load i64, i64* @VINTR, align 8
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61
  store i8* %58, i8** %62, align 8
  %63 = call i8* @Ctl(i8 signext 72)
  %64 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 3
  %65 = load i8**, i8*** %64, align 8
  %66 = load i64, i64* @VERASE, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  store i8* %63, i8** %67, align 8
  %68 = call i8* @Ctl(i8 signext 85)
  %69 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 3
  %70 = load i8**, i8*** %69, align 8
  %71 = load i64, i64* @VKILL, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  store i8* %68, i8** %72, align 8
  %73 = call i8* @Ctl(i8 signext 68)
  %74 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 3
  %75 = load i8**, i8*** %74, align 8
  %76 = load i64, i64* @VEOF, align 8
  %77 = getelementptr inbounds i8*, i8** %75, i64 %76
  store i8* %73, i8** %77, align 8
  %78 = call i8* @Ctl(i8 signext 90)
  %79 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 3
  %80 = load i8**, i8*** %79, align 8
  %81 = load i64, i64* @VSUSP, align 8
  %82 = getelementptr inbounds i8*, i8** %80, i64 %81
  store i8* %78, i8** %82, align 8
  %83 = load i32, i32* @TCSANOW, align 4
  %84 = call i32 @tcsetattr(i32 0, i32 %83, %struct.termios* %1)
  ret void
}

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i8* @Ctl(i8 signext) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
