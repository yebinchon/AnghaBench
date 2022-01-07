; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_is_hostent_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_is_hostent_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8**, i32, i32, i32 }
%struct.addrinfo = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"not equal - he->h_name couldn't be found\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"not equal - one of he->h_addr_list couldn't be found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostent*, %struct.addrinfo*)* @is_hostent_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_hostent_equal(%struct.hostent* %0, %struct.addrinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.hostent* %0, %struct.hostent** %4, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %5, align 8
  %8 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %9 = load %struct.hostent*, %struct.hostent** %4, align 8
  %10 = getelementptr inbounds %struct.hostent, %struct.hostent* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @check_addrinfo_for_name(%struct.addrinfo* %8, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.hostent*, %struct.hostent** %4, align 8
  %20 = getelementptr inbounds %struct.hostent, %struct.hostent* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  store i8** %21, i8*** %6, align 8
  br label %22

22:                                               ; preds = %43, %18
  %23 = load i8**, i8*** %6, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %28 = load i8**, i8*** %6, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.hostent*, %struct.hostent** %4, align 8
  %31 = getelementptr inbounds %struct.hostent, %struct.hostent* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hostent*, %struct.hostent** %4, align 8
  %34 = getelementptr inbounds %struct.hostent, %struct.hostent* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @check_addrinfo_for_addr(%struct.addrinfo* %27, i8* %29, i32 %32, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42
  %44 = load i8**, i8*** %6, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %6, align 8
  br label %22

46:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %39, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @check_addrinfo_for_name(%struct.addrinfo*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @check_addrinfo_for_addr(%struct.addrinfo*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
