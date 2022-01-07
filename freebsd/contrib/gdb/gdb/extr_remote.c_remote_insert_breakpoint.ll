; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_insert_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_insert_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.remote_state = type { i32 }

@remote_protocol_Z = common dso_local global %struct.TYPE_3__* null, align 8
@Z_PACKET_SOFTWARE_BP = common dso_local global i64 0, align 8
@PACKET_DISABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@big_break_insn = common dso_local global i64 0, align 8
@little_break_insn = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @remote_insert_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_insert_breakpoint(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.remote_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %10, %struct.remote_state** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @remote_protocol_Z, align 8
  %12 = load i64, i64* @Z_PACKET_SOFTWARE_BP, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PACKET_DISABLE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %2
  %19 = load %struct.remote_state*, %struct.remote_state** %6, align 8
  %20 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @alloca(i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  store i8* %23, i8** %9, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @remote_address_masked(i64 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %9, align 8
  store i8 90, i8* %26, align 1
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %9, align 8
  store i8 48, i8* %28, align 1
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  store i8 44, i8* %30, align 1
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %4, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @hexnumstr(i8* %32, i32 %34)
  %36 = load i8*, i8** %9, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %9, align 8
  %39 = call i32 @BREAKPOINT_FROM_PC(i64* %4, i32* %7)
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @putpkt(i8* %43)
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.remote_state*, %struct.remote_state** %6, align 8
  %47 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @getpkt(i8* %45, i32 %48, i32 0)
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @remote_protocol_Z, align 8
  %52 = load i64, i64* @Z_PACKET_SOFTWARE_BP, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %52
  %54 = call i32 @packet_ok(i8* %50, %struct.TYPE_3__* %53)
  switch i32 %54, label %58 [
    i32 130, label %55
    i32 129, label %56
    i32 128, label %57
  ]

55:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %63

56:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %63

57:                                               ; preds = %18
  br label %58

58:                                               ; preds = %18, %57
  br label %59

59:                                               ; preds = %58, %2
  %60 = load i64, i64* %4, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @memory_insert_breakpoint(i64 %60, i8* %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %56, %55
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i64 @remote_address_masked(i64) #1

declare dso_local i32 @hexnumstr(i8*, i32) #1

declare dso_local i32 @BREAKPOINT_FROM_PC(i64*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @putpkt(i8*) #1

declare dso_local i32 @getpkt(i8*, i32, i32) #1

declare dso_local i32 @packet_ok(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @memory_insert_breakpoint(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
