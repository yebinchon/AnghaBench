; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_fmt_multistate_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_fmt_multistate_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multistate = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.multistate*)* @fmt_multistate_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fmt_multistate_int(i32 %0, %struct.multistate* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.multistate*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.multistate* %1, %struct.multistate** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %29, %2
  %8 = load %struct.multistate*, %struct.multistate** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = getelementptr inbounds %struct.multistate, %struct.multistate* %8, i64 %9
  %11 = getelementptr inbounds %struct.multistate, %struct.multistate* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %7
  %15 = load %struct.multistate*, %struct.multistate** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.multistate, %struct.multistate* %15, i64 %16
  %18 = getelementptr inbounds %struct.multistate, %struct.multistate* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %struct.multistate*, %struct.multistate** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.multistate, %struct.multistate* %23, i64 %24
  %26 = getelementptr inbounds %struct.multistate, %struct.multistate* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %3, align 8
  br label %33

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %6, align 8
  br label %7

32:                                               ; preds = %7
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
