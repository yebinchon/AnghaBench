; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_isapnp.c_isapnp_isolation_protocol.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_isapnp.c_isapnp_isolation_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnpinfo = type { i32 }

@_PNP_ID_LEN = common dso_local global i32 0, align 4
@CONFIG_CONTROL = common dso_local global i32 0, align 4
@WAKE = common dso_local global i32 0, align 4
@SET_RD_DATA = common dso_local global i32 0, align 4
@isapnp_readport = common dso_local global i32 0, align 4
@_PNP_ADDRESS = common dso_local global i32 0, align 4
@SERIAL_ISOLATION = common dso_local global i32 0, align 4
@SET_CSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @isapnp_isolation_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isapnp_isolation_protocol() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pnpinfo*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @_PNP_ID_LEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = call i32 (...) @isapnp_send_Initiation_LFSR()
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @CONFIG_CONTROL, align 4
  %12 = call i32 @isapnp_write(i32 %11, i32 4)
  store i32 1, i32* %1, align 4
  br label %13

13:                                               ; preds = %48, %0
  %14 = load i32, i32* @WAKE, align 4
  %15 = call i32 @isapnp_write(i32 %14, i32 0)
  %16 = load i32, i32* @SET_RD_DATA, align 4
  %17 = load i32, i32* @isapnp_readport, align 4
  %18 = ashr i32 %17, 2
  %19 = call i32 @isapnp_write(i32 %16, i32 %18)
  %20 = load i32, i32* @_PNP_ADDRESS, align 4
  %21 = load i32, i32* @SERIAL_ISOLATION, align 4
  %22 = call i32 @outb(i32 %20, i32 %21)
  %23 = call i32 @delay(i32 1000)
  %24 = call i64 @isapnp_get_serial(i32* %9)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %13
  %27 = load i32, i32* @SET_CSN, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @isapnp_write(i32 %27, i32 %28)
  %30 = call %struct.pnpinfo* (...) @pnp_allocinfo()
  store %struct.pnpinfo* %30, %struct.pnpinfo** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = load %struct.pnpinfo*, %struct.pnpinfo** %2, align 8
  %34 = call i32 @pnp_eisaformat(i32* %9)
  %35 = call i32 @pnp_addident(%struct.pnpinfo* %33, i32 %34)
  %36 = load %struct.pnpinfo*, %struct.pnpinfo** %2, align 8
  %37 = call i64 @isapnp_scan_resdata(%struct.pnpinfo* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load %struct.pnpinfo*, %struct.pnpinfo** %2, align 8
  %41 = call i32 @pnp_freeinfo(%struct.pnpinfo* %40)
  br label %45

42:                                               ; preds = %26
  %43 = load %struct.pnpinfo*, %struct.pnpinfo** %2, align 8
  %44 = call i32 @pnp_addinfo(%struct.pnpinfo* %43)
  br label %45

45:                                               ; preds = %42, %39
  br label %47

46:                                               ; preds = %13
  br label %51

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %13

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %56, %51
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %1, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = call i32 (...) @isapnp_send_Initiation_LFSR()
  %58 = load i32, i32* @WAKE, align 4
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @isapnp_write(i32 %58, i32 %59)
  %61 = load i32, i32* @CONFIG_CONTROL, align 4
  %62 = call i32 @isapnp_write(i32 %61, i32 2)
  %63 = call i32 @delay(i32 1000)
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %1, align 4
  br label %52

66:                                               ; preds = %52
  %67 = load i32, i32* %5, align 4
  %68 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %68)
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @isapnp_send_Initiation_LFSR(...) #2

declare dso_local i32 @isapnp_write(i32, i32) #2

declare dso_local i32 @outb(i32, i32) #2

declare dso_local i32 @delay(i32) #2

declare dso_local i64 @isapnp_get_serial(i32*) #2

declare dso_local %struct.pnpinfo* @pnp_allocinfo(...) #2

declare dso_local i32 @pnp_addident(%struct.pnpinfo*, i32) #2

declare dso_local i32 @pnp_eisaformat(i32*) #2

declare dso_local i64 @isapnp_scan_resdata(%struct.pnpinfo*) #2

declare dso_local i32 @pnp_freeinfo(%struct.pnpinfo*) #2

declare dso_local i32 @pnp_addinfo(%struct.pnpinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
