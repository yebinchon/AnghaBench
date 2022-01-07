; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_check_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_check_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.objfile = type { i32 }
%struct.remote_state = type { i32 }
%struct.minimal_symbol = type { i32 }

@remote_protocol_qSymbol = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PACKET_DISABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"qSymbol::\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"qSymbol:\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"qSymbol::%s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"qSymbol:%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*)* @remote_check_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_check_symbols(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca %struct.remote_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.minimal_symbol*, align 8
  %8 = alloca i32, align 4
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %9 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %9, %struct.remote_state** %3, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @remote_protocol_qSymbol, i32 0, i32 0), align 8
  %11 = load i64, i64* @PACKET_DISABLE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %73

14:                                               ; preds = %1
  %15 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %16 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @alloca(i32 %17)
  store i8* %18, i8** %4, align 8
  %19 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %20 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @alloca(i32 %21)
  store i8* %22, i8** %5, align 8
  %23 = call i32 @putpkt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %26 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @getpkt(i8* %24, i32 %27, i32 0)
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @packet_ok(i8* %29, %struct.TYPE_3__* @remote_protocol_qSymbol)
  br label %31

31:                                               ; preds = %65, %14
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strncmp(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 8
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = sdiv i32 %41, 2
  %43 = call i32 @hex2bin(i8* %38, i8* %39, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %4, align 8
  %49 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* %48, i32* null, i32* null)
  store %struct.minimal_symbol* %49, %struct.minimal_symbol** %7, align 8
  %50 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %51 = icmp eq %struct.minimal_symbol* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %35
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 8
  %56 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  br label %65

57:                                               ; preds = %35
  %58 = load i8*, i8** %4, align 8
  %59 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %60 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %59)
  %61 = call i8* @paddr_nz(i32 %60)
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 8
  %64 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %61, i8* %63)
  br label %65

65:                                               ; preds = %57, %52
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @putpkt(i8* %66)
  %68 = load i8*, i8** %5, align 8
  %69 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %70 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @getpkt(i8* %68, i32 %71, i32 0)
  br label %31

73:                                               ; preds = %13, %31
  ret void
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @putpkt(i8*) #1

declare dso_local i32 @getpkt(i8*, i32, i32) #1

declare dso_local i32 @packet_ok(i8*, %struct.TYPE_3__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @hex2bin(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i8*, i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i8* @paddr_nz(i32) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
