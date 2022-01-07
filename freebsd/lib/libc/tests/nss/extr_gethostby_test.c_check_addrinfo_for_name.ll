; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_check_addrinfo_for_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_check_addrinfo_for_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, %struct.addrinfo* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*, i8*)* @check_addrinfo_for_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_addrinfo_for_name(%struct.addrinfo* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  store %struct.addrinfo* %7, %struct.addrinfo** %6, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %10 = icmp ne %struct.addrinfo* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strcmp(i32 %14, i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %25

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 1
  %23 = load %struct.addrinfo*, %struct.addrinfo** %22, align 8
  store %struct.addrinfo* %23, %struct.addrinfo** %6, align 8
  br label %8

24:                                               ; preds = %8
  store i32 -1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
