; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_StrToAddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_StrToAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.hostent = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"unknown host %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.in_addr*)* @StrToAddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StrToAddr(i8* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.in_addr*, align 8
  %5 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.in_addr* %1, %struct.in_addr** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load %struct.in_addr*, %struct.in_addr** %4, align 8
  %8 = call i64 @inet_aton(i8* %6, %struct.in_addr* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %25

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = call %struct.hostent* @gethostbyname(i8* %12)
  store %struct.hostent* %13, %struct.hostent** %5, align 8
  %14 = load %struct.hostent*, %struct.hostent** %5, align 8
  %15 = icmp ne %struct.hostent* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.in_addr*, %struct.in_addr** %4, align 8
  %21 = load %struct.hostent*, %struct.hostent** %5, align 8
  %22 = getelementptr inbounds %struct.hostent, %struct.hostent* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcpy(%struct.in_addr* %20, i32 %23, i32 4)
  br label %25

25:                                               ; preds = %19, %10
  ret void
}

declare dso_local i64 @inet_aton(i8*, %struct.in_addr*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @memcpy(%struct.in_addr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
