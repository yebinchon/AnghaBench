; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_store_register_using_P.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_store_register_using_P.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_state = type { i32 }
%struct.packet_reg = type { i32, i32 }

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"P%s=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @store_register_using_P to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_register_using_P(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.remote_state*, align 8
  %4 = alloca %struct.packet_reg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %10, %struct.remote_state** %3, align 8
  %11 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.packet_reg* @packet_reg_from_regnum(%struct.remote_state* %11, i32 %12)
  store %struct.packet_reg* %13, %struct.packet_reg** %4, align 8
  %14 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %15 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @alloca(i32 %16)
  store i8* %17, i8** %5, align 8
  %18 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.packet_reg*, %struct.packet_reg** %4, align 8
  %24 = getelementptr inbounds %struct.packet_reg, %struct.packet_reg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @phex_nz(i32 %25, i32 0)
  %27 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8* %32, i8** %8, align 8
  %33 = load %struct.packet_reg*, %struct.packet_reg** %4, align 8
  %34 = getelementptr inbounds %struct.packet_reg, %struct.packet_reg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regcache_collect(i32 %35, i8* %21)
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.packet_reg*, %struct.packet_reg** %4, align 8
  %39 = getelementptr inbounds %struct.packet_reg, %struct.packet_reg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %40)
  %42 = call i32 @bin2hex(i8* %21, i8* %37, i32 %41)
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %45 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @remote_send(i8* %43, i32 %46)
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %54)
  ret i32 %53
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local %struct.packet_reg* @packet_reg_from_regnum(%struct.remote_state*, i32) #1

declare dso_local i8* @alloca(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @phex_nz(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @regcache_collect(i32, i8*) #1

declare dso_local i32 @bin2hex(i8*, i8*, i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

declare dso_local i32 @remote_send(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
