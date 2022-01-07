; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_main.c_defttymode.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_main.c_defttymode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.termios = type { i32, i32, i32, i32 }

@STDIN_FILENO = common dso_local global i32 0, align 4
@tmode = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"tcgetattr %s: %m\00", align 1
@ttyn = common dso_local global i32 0, align 4
@omode = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@NC = common dso_local global i64 0, align 8
@CLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @defttymode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @defttymode() #0 {
  %1 = alloca %struct.termios, align 4
  %2 = load i32, i32* @STDIN_FILENO, align 4
  %3 = call i64 @tcgetattr(i32 %2, %struct.TYPE_4__* @tmode)
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i32, i32* @LOG_ERR, align 4
  %7 = load i32, i32* @ttyn, align 4
  %8 = call i32 @syslog(i32 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 @exit(i32 1) #4
  unreachable

10:                                               ; preds = %0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_4__* @omode to i8*), i8* align 4 bitcast (%struct.TYPE_4__* @tmode to i8*), i64 16, i1 false)
  %11 = call i32 (...) @dogettytab()
  %12 = call i32 @cfmakesane(%struct.termios* %1)
  %13 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tmode, i32 0, i32 3), align 4
  %15 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tmode, i32 0, i32 2), align 4
  %17 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tmode, i32 0, i32 1), align 4
  %19 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tmode, i32 0, i32 0), align 4
  %21 = load i64, i64* @NC, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %10
  %24 = load i32, i32* @CLOCAL, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tmode, i32 0, i32 0), align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tmode, i32 0, i32 0), align 4
  br label %27

27:                                               ; preds = %23, %10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_4__* @omode to i8*), i8* align 4 bitcast (%struct.TYPE_4__* @tmode to i8*), i64 16, i1 false)
  ret void
}

declare dso_local i64 @tcgetattr(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @dogettytab(...) #1

declare dso_local i32 @cfmakesane(%struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
