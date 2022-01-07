; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/shared/extr_ggate.c_g_gate_str2ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/shared/extr_ggate.c_g_gate_str2ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i64 }
%struct.in_addr = type { i64 }

@INADDR_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @g_gate_str2ip(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @inet_addr(i8* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @INADDR_NONE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %2, align 8
  br label %28

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call %struct.hostent* @gethostbyname(i8* %14)
  store %struct.hostent* %15, %struct.hostent** %4, align 8
  %16 = load %struct.hostent*, %struct.hostent** %4, align 8
  %17 = icmp eq %struct.hostent* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i64, i64* @INADDR_NONE, align 8
  store i64 %19, i64* %2, align 8
  br label %28

20:                                               ; preds = %13
  %21 = load %struct.hostent*, %struct.hostent** %4, align 8
  %22 = getelementptr inbounds %struct.hostent, %struct.hostent* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.in_addr*
  %26 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %20, %18, %11
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

declare dso_local i64 @inet_addr(i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
