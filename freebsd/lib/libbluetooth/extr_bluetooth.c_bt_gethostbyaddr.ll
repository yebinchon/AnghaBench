; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_bluetooth.c_bt_gethostbyaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_bluetooth.c_bt_gethostbyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32, i32 }

@AF_BLUETOOTH = common dso_local global i32 0, align 4
@NO_RECOVERY = common dso_local global i32 0, align 4
@h_errno = common dso_local global i32 0, align 4
@host_stayopen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostent* @bt_gethostbyaddr(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @AF_BLUETOOTH, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %3
  %17 = load i32, i32* @NO_RECOVERY, align 4
  store i32 %17, i32* @h_errno, align 4
  store %struct.hostent* null, %struct.hostent** %4, align 8
  br label %43

18:                                               ; preds = %12
  %19 = load i32, i32* @host_stayopen, align 4
  %20 = call i32 @bt_sethostent(i32 %19)
  br label %21

21:                                               ; preds = %39, %18
  %22 = call %struct.hostent* (...) @bt_gethostent()
  store %struct.hostent* %22, %struct.hostent** %8, align 8
  %23 = icmp ne %struct.hostent* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.hostent*, %struct.hostent** %8, align 8
  %26 = getelementptr inbounds %struct.hostent, %struct.hostent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.hostent*, %struct.hostent** %8, align 8
  %32 = getelementptr inbounds %struct.hostent, %struct.hostent* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @bcmp(i32 %33, i8* %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %40

39:                                               ; preds = %30, %24
  br label %21

40:                                               ; preds = %38, %21
  %41 = call i32 (...) @bt_endhostent()
  %42 = load %struct.hostent*, %struct.hostent** %8, align 8
  store %struct.hostent* %42, %struct.hostent** %4, align 8
  br label %43

43:                                               ; preds = %40, %16
  %44 = load %struct.hostent*, %struct.hostent** %4, align 8
  ret %struct.hostent* %44
}

declare dso_local i32 @bt_sethostent(i32) #1

declare dso_local %struct.hostent* @bt_gethostent(...) #1

declare dso_local i64 @bcmp(i32, i8*, i32) #1

declare dso_local i32 @bt_endhostent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
