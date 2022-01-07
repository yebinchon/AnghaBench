; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-unix.c_hardwire_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-unix.c_hardwire_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial = type { i64 }
%struct.hardwire_ttystate = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64*, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i64*, i64, i64, i64 }

@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"get_tty_state failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"set_tty_state failed: %s\0A\00", align 1
@ANYP = common dso_local global i32 0, align 4
@CBREAK = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@RAW = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serial*)* @hardwire_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hardwire_raw(%struct.serial* %0) #0 {
  %2 = alloca %struct.serial*, align 8
  %3 = alloca %struct.hardwire_ttystate, align 8
  store %struct.serial* %0, %struct.serial** %2, align 8
  %4 = load %struct.serial*, %struct.serial** %2, align 8
  %5 = call i64 @get_tty_state(%struct.serial* %4, %struct.hardwire_ttystate* %3)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* @gdb_stderr, align 4
  %9 = load i32, i32* @errno, align 4
  %10 = call i32 @safe_strerror(i32 %9)
  %11 = call i32 @fprintf_unfiltered(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.serial*, %struct.serial** %2, align 8
  %14 = getelementptr inbounds %struct.serial, %struct.serial* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.serial*, %struct.serial** %2, align 8
  %16 = call i64 @set_tty_state(%struct.serial* %15, %struct.hardwire_ttystate* %3)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i32, i32* @gdb_stderr, align 4
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @safe_strerror(i32 %20)
  %22 = call i32 @fprintf_unfiltered(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %12
  ret void
}

declare dso_local i64 @get_tty_state(%struct.serial*, %struct.hardwire_ttystate*) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local i64 @set_tty_state(%struct.serial*, %struct.hardwire_ttystate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
