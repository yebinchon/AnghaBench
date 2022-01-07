; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_termios.c_cfmakeraw.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_termios.c_cfmakeraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32, i32*, i32 }

@IMAXBEL = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@ECHOK = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@NOFLSH = common dso_local global i32 0, align 4
@TOSTOP = common dso_local global i32 0, align 4
@PENDIN = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfmakeraw(%struct.termios* %0) #0 {
  %2 = alloca %struct.termios*, align 8
  store %struct.termios* %0, %struct.termios** %2, align 8
  %3 = load i32, i32* @IMAXBEL, align 4
  %4 = load i32, i32* @IXOFF, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @INPCK, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @BRKINT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @PARMRK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ISTRIP, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @INLCR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IGNCR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ICRNL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IXON, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IGNPAR, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.termios*, %struct.termios** %2, align 8
  %26 = getelementptr inbounds %struct.termios, %struct.termios* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @IGNBRK, align 4
  %30 = load %struct.termios*, %struct.termios** %2, align 8
  %31 = getelementptr inbounds %struct.termios, %struct.termios* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @OPOST, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.termios*, %struct.termios** %2, align 8
  %37 = getelementptr inbounds %struct.termios, %struct.termios* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @ECHO, align 4
  %41 = load i32, i32* @ECHOE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ECHOK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ECHONL, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ICANON, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @ISIG, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @IEXTEN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @NOFLSH, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @TOSTOP, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @PENDIN, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load %struct.termios*, %struct.termios** %2, align 8
  %61 = getelementptr inbounds %struct.termios, %struct.termios* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @CSIZE, align 4
  %65 = load i32, i32* @PARENB, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load %struct.termios*, %struct.termios** %2, align 8
  %69 = getelementptr inbounds %struct.termios, %struct.termios* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* @CS8, align 4
  %73 = load i32, i32* @CREAD, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.termios*, %struct.termios** %2, align 8
  %76 = getelementptr inbounds %struct.termios, %struct.termios* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.termios*, %struct.termios** %2, align 8
  %80 = getelementptr inbounds %struct.termios, %struct.termios* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @VMIN, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 1, i32* %83, align 4
  %84 = load %struct.termios*, %struct.termios** %2, align 8
  %85 = getelementptr inbounds %struct.termios, %struct.termios* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @VTIME, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 0, i32* %88, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
