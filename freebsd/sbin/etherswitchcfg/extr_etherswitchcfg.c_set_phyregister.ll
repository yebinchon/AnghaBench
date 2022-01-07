; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_set_phyregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_set_phyregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"\09reg %d.0x%02x=0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg*, i8*)* @set_phyregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_phyregister(%struct.cfg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.cfg* %0, %struct.cfg** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strtol(i8* %11, i8** %9, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %54

17:                                               ; preds = %2
  %18 = load i8*, i8** %9, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 46
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %54

23:                                               ; preds = %17
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @strtol(i8* %26, i8** %9, i32 0)
  store i32 %27, i32* %7, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %54

32:                                               ; preds = %23
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 61
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = call i32 @strtoul(i8* %39, i32* null, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.cfg*, %struct.cfg** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @write_phyregister(%struct.cfg* %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %32
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.cfg*, %struct.cfg** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @read_phyregister(%struct.cfg* %49, i32 %50, i32 %51)
  %53 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %31, %22, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @write_phyregister(%struct.cfg*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @read_phyregister(%struct.cfg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
