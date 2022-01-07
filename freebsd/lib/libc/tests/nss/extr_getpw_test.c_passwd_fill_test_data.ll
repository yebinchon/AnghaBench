; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getpw_test.c_passwd_fill_test_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getpw_test.c_passwd_fill_test_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd_test_data = type { i32 }
%struct.passwd = type { i32 }

@passwd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.passwd_test_data*)* @passwd_fill_test_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passwd_fill_test_data(%struct.passwd_test_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.passwd_test_data*, align 8
  %4 = alloca %struct.passwd*, align 8
  store %struct.passwd_test_data* %0, %struct.passwd_test_data** %3, align 8
  %5 = call i32 @setpassent(i32 1)
  br label %6

6:                                                ; preds = %19, %1
  %7 = call %struct.passwd* (...) @getpwent()
  store %struct.passwd* %7, %struct.passwd** %4, align 8
  %8 = icmp ne %struct.passwd* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load %struct.passwd*, %struct.passwd** %4, align 8
  %11 = call i64 @passwd_test_correctness(%struct.passwd* %10, i32* null)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* @passwd, align 4
  %15 = load %struct.passwd_test_data*, %struct.passwd_test_data** %3, align 8
  %16 = load %struct.passwd*, %struct.passwd** %4, align 8
  %17 = call i32 @TEST_DATA_APPEND(i32 %14, %struct.passwd_test_data* %15, %struct.passwd* %16)
  br label %19

18:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %22

19:                                               ; preds = %13
  br label %6

20:                                               ; preds = %6
  %21 = call i32 (...) @endpwent()
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @setpassent(i32) #1

declare dso_local %struct.passwd* @getpwent(...) #1

declare dso_local i64 @passwd_test_correctness(%struct.passwd*, i32*) #1

declare dso_local i32 @TEST_DATA_APPEND(i32, %struct.passwd_test_data*, %struct.passwd*) #1

declare dso_local i32 @endpwent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
