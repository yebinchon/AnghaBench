; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_keyboard.c_isc_keyboard_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_keyboard.c_isc_keyboard_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.termios }
%struct.termios = type { i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@ISC_R_IOERROR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@TCSAFLUSH = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_keyboard_open(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.termios, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @REQUIRE(i32 %9)
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ISC_R_IOERROR, align 4
  store i32 %16, i32* %2, align 4
  br label %104

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = call i64 @tcgetattr(i32 %21, %struct.termios* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @ISC_R_IOERROR, align 4
  store i32 %27, i32* %5, align 4
  br label %100

28:                                               ; preds = %17
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = bitcast %struct.termios* %6 to i8*
  %32 = bitcast %struct.termios* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  %33 = load i32, i32* @IGNBRK, align 4
  %34 = load i32, i32* @BRKINT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @PARMRK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ISTRIP, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @INLCR, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @IGNCR, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ICRNL, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @IXON, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %48
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* @OPOST, align 4
  %53 = xor i32 %52, -1
  %54 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %53
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @ECHO, align 4
  %58 = load i32, i32* @ECHONL, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @ICANON, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @ISIG, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @IEXTEN, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %66
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @CSIZE, align 4
  %71 = load i32, i32* @PARENB, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %73
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* @CS8, align 4
  %78 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 8
  %81 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @VMIN, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 1, i32* %84, align 4
  %85 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @VTIME, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @TCSAFLUSH, align 4
  %91 = call i64 @tcsetattr(i32 %89, i32 %90, %struct.termios* %6)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %28
  %94 = load i32, i32* @ISC_R_IOERROR, align 4
  store i32 %94, i32* %5, align 4
  br label %100

95:                                               ; preds = %28
  %96 = load i32, i32* @ISC_R_SUCCESS, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %99, i32* %2, align 4
  br label %104

100:                                              ; preds = %93, %26
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @close(i32 %101)
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %100, %95, %15
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
