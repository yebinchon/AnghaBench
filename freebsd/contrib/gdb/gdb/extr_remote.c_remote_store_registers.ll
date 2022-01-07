; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_store_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_store_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.remote_state = type { i32, %struct.packet_reg*, i32 }
%struct.packet_reg = type { i32, i32, i64 }

@inferior_ptid = common dso_local global i32 0, align 4
@remote_protocol_P = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [48 x i8] c"Protocol error: P packet not recognized by stub\00", align 1
@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@register_bytes_found = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @remote_store_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_store_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.remote_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.packet_reg*, align 8
  store i32 %0, i32* %2, align 4
  %10 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %10, %struct.remote_state** %3, align 8
  %11 = load i32, i32* @inferior_ptid, align 4
  %12 = call i32 @PIDGET(i32 %11)
  %13 = call i32 @set_thread(i32 %12, i32 1)
  %14 = load i32, i32* %2, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remote_protocol_P, i32 0, i32 0), align 4
  switch i32 %17, label %33 [
    i32 130, label %18
    i32 129, label %19
    i32 128, label %27
  ]

18:                                               ; preds = %16
  br label %33

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @store_register_using_P(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %93

24:                                               ; preds = %19
  %25 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %16, %26
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @store_register_using_P(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 129, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remote_protocol_P, i32 0, i32 0), align 4
  br label %93

32:                                               ; preds = %27
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remote_protocol_P, i32 0, i32 0), align 4
  br label %33

33:                                               ; preds = %16, %32, %18
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %36 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @alloca(i32 %37)
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %41 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memset(i8* %39, i32 0, i32 %42)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %73, %34
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @NUM_REGS, align 4
  %47 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %44
  %51 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %52 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %51, i32 0, i32 1
  %53 = load %struct.packet_reg*, %struct.packet_reg** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.packet_reg, %struct.packet_reg* %53, i64 %55
  store %struct.packet_reg* %56, %struct.packet_reg** %9, align 8
  %57 = load %struct.packet_reg*, %struct.packet_reg** %9, align 8
  %58 = getelementptr inbounds %struct.packet_reg, %struct.packet_reg* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %50
  %62 = load %struct.packet_reg*, %struct.packet_reg** %9, align 8
  %63 = getelementptr inbounds %struct.packet_reg, %struct.packet_reg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.packet_reg*, %struct.packet_reg** %9, align 8
  %67 = getelementptr inbounds %struct.packet_reg, %struct.packet_reg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = call i32 @regcache_collect(i32 %64, i8* %70)
  br label %72

72:                                               ; preds = %61, %50
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %44

76:                                               ; preds = %44
  %77 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %78 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @alloca(i32 %79)
  store i8* %80, i8** %4, align 8
  %81 = load i8*, i8** %4, align 8
  store i8* %81, i8** %7, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %7, align 8
  store i8 71, i8* %82, align 1
  %84 = load i8*, i8** %5, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* @register_bytes_found, align 4
  %87 = call i32 @bin2hex(i8* %84, i8* %85, i32 %86)
  %88 = load i8*, i8** %4, align 8
  %89 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %90 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @remote_send(i8* %88, i32 %91)
  br label %93

93:                                               ; preds = %76, %31, %23
  ret void
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i32 @set_thread(i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @store_register_using_P(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @regcache_collect(i32, i8*) #1

declare dso_local i32 @bin2hex(i8*, i8*, i32) #1

declare dso_local i32 @remote_send(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
