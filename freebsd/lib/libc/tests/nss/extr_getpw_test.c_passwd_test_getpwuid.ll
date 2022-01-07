; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getpw_test.c_passwd_test_getpwuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getpw_test.c_passwd_test_getpwuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%struct.passwd_test_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.passwd*, i8*)* @passwd_test_getpwuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passwd_test_getpwuid(%struct.passwd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.passwd*, align 8
  store %struct.passwd* %0, %struct.passwd** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.passwd*, %struct.passwd** %4, align 8
  %8 = getelementptr inbounds %struct.passwd, %struct.passwd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.passwd* @getpwuid(i32 %9)
  store %struct.passwd* %10, %struct.passwd** %6, align 8
  %11 = load %struct.passwd*, %struct.passwd** %6, align 8
  %12 = call i64 @passwd_test_correctness(%struct.passwd* %11, i32* null)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = load %struct.passwd*, %struct.passwd** %6, align 8
  %16 = load %struct.passwd*, %struct.passwd** %4, align 8
  %17 = call i64 @compare_passwd(%struct.passwd* %15, %struct.passwd* %16, i32* null)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.passwd_test_data*
  %22 = load %struct.passwd*, %struct.passwd** %6, align 8
  %23 = call i64 @passwd_check_ambiguity(%struct.passwd_test_data* %21, %struct.passwd* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %2
  store i32 -1, i32* %3, align 4
  br label %27

26:                                               ; preds = %19, %14
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i64 @passwd_test_correctness(%struct.passwd*, i32*) #1

declare dso_local i64 @compare_passwd(%struct.passwd*, %struct.passwd*, i32*) #1

declare dso_local i64 @passwd_check_ambiguity(%struct.passwd_test_data*, %struct.passwd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
