; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_init_telnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_init_telnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@options = common dso_local global i32 0, align 4
@donebinarytoggle = common dso_local global i64 0, align 8
@localflow = common dso_local global i64 0, align 8
@ISend = common dso_local global i64 0, align 8
@connected = common dso_local global i64 0, align 8
@restartany = common dso_local global i32 0, align 4
@SYNCHing = common dso_local global i64 0, align 8
@escape = common dso_local global i8* null, align 8
@_POSIX_VDISABLE = common dso_local global i32 0, align 4
@rlogin = common dso_local global i32 0, align 4
@flushline = common dso_local global i32 0, align 4
@TS_DATA = common dso_local global i32 0, align 4
@telrcv_state = common dso_local global i32 0, align 4
@echoc = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_telnet() #0 {
  %1 = call i32 (...) @env_init()
  %2 = call i32 (...) @SB_CLEAR()
  %3 = load i32, i32* @options, align 4
  %4 = call i32 @memset(i32 %3, i32 0, i32 4)
  store i64 0, i64* @donebinarytoggle, align 8
  store i64 0, i64* @localflow, align 8
  store i64 0, i64* @ISend, align 8
  store i64 0, i64* @connected, align 8
  store i32 -1, i32* @restartany, align 4
  store i64 0, i64* @SYNCHing, align 8
  %5 = call i8* @CONTROL(i8 signext 93)
  store i8* %5, i8** @escape, align 8
  %6 = load i32, i32* @_POSIX_VDISABLE, align 4
  store i32 %6, i32* @rlogin, align 4
  store i32 1, i32* @flushline, align 4
  %7 = load i32, i32* @TS_DATA, align 4
  store i32 %7, i32* @telrcv_state, align 4
  ret void
}

declare dso_local i32 @env_init(...) #1

declare dso_local i32 @SB_CLEAR(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @CONTROL(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
