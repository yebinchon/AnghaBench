; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshtty.c_enter_raw_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshtty.c_enter_raw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32*, i32 }

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"tcgetattr\00", align 1
@_saved_tio = common dso_local global %struct.termios zeroinitializer, align 8
@IGNPAR = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@ECHOK = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@TCSADRAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"tcsetattr\00", align 1
@_in_raw_mode = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@IUCLC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enter_raw_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.termios, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @stdin, align 4
  %5 = call i32 @fileno(i32 %4)
  %6 = call i32 @tcgetattr(i32 %5, %struct.termios* %3)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  br label %77

14:                                               ; preds = %1
  %15 = bitcast %struct.termios* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.termios* @_saved_tio to i8*), i8* align 8 %15, i64 24, i1 false)
  %16 = load i32, i32* @IGNPAR, align 4
  %17 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* @ISTRIP, align 4
  %21 = load i32, i32* @INLCR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IGNCR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ICRNL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @IXON, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IXANY, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @IXOFF, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %33
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @ISIG, align 4
  %38 = load i32, i32* @ICANON, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ECHO, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ECHOE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ECHOK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @ECHONL, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @OPOST, align 4
  %53 = xor i32 %52, -1
  %54 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %53
  store i32 %56, i32* %54, align 8
  %57 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @VMIN, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 1, i32* %60, align 4
  %61 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @VTIME, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* @stdin, align 4
  %66 = call i32 @fileno(i32 %65)
  %67 = load i32, i32* @TCSADRAIN, align 4
  %68 = call i32 @tcsetattr(i32 %66, i32 %67, %struct.termios* %3)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %76

70:                                               ; preds = %14
  %71 = load i32, i32* %2, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %70
  br label %77

76:                                               ; preds = %14
  store i32 1, i32* @_in_raw_mode, align 4
  br label %77

77:                                               ; preds = %13, %76, %75
  ret void
}

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
