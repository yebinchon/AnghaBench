; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c___gethostbyname2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c___gethostbyname2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@use_ipnode_functions = common dso_local global i64 0, align 8
@ipnode_flags = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hostent* (i8*, i32)* @__gethostbyname2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hostent* @__gethostbyname2(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostent*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @use_ipnode_functions, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ipnode_flags, align 4
  %13 = call %struct.hostent* @getipnodebyname(i8* %10, i32 %11, i32 %12, i32* %6)
  store %struct.hostent* %13, %struct.hostent** %5, align 8
  %14 = load %struct.hostent*, %struct.hostent** %5, align 8
  %15 = icmp eq %struct.hostent* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* @errno, align 4
  br label %18

18:                                               ; preds = %16, %9
  br label %23

19:                                               ; preds = %2
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.hostent* @gethostbyname2(i8* %20, i32 %21)
  store %struct.hostent* %22, %struct.hostent** %5, align 8
  br label %23

23:                                               ; preds = %19, %18
  %24 = load %struct.hostent*, %struct.hostent** %5, align 8
  ret %struct.hostent* %24
}

declare dso_local %struct.hostent* @getipnodebyname(i8*, i32, i32, i32*) #1

declare dso_local %struct.hostent* @gethostbyname2(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
