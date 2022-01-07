; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getgr_test.c_group_test_getgrnam.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getgr_test.c_group_test_getgrnam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }
%struct.group_test_data = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"testing getgrnam() with the following data:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.group*, i8*)* @group_test_getgrnam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @group_test_getgrnam(%struct.group* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.group*, align 8
  store %struct.group* %0, %struct.group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.group*, %struct.group** %4, align 8
  %9 = call i32 @dump_group(%struct.group* %8)
  %10 = load %struct.group*, %struct.group** %4, align 8
  %11 = getelementptr inbounds %struct.group, %struct.group* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.group* @getgrnam(i32 %12)
  store %struct.group* %13, %struct.group** %6, align 8
  %14 = load %struct.group*, %struct.group** %6, align 8
  %15 = call i64 @group_test_correctness(%struct.group* %14, i32* null)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.group*, %struct.group** %6, align 8
  %20 = load %struct.group*, %struct.group** %4, align 8
  %21 = call i64 @compare_group(%struct.group* %19, %struct.group* %20, i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to %struct.group_test_data*
  %26 = load %struct.group*, %struct.group** %6, align 8
  %27 = call i64 @group_check_ambiguity(%struct.group_test_data* %25, %struct.group* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %31

30:                                               ; preds = %23, %18
  store i32 0, i32* %3, align 4
  br label %32

31:                                               ; preds = %29, %17
  store i32 -1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @dump_group(%struct.group*) #1

declare dso_local %struct.group* @getgrnam(i32) #1

declare dso_local i64 @group_test_correctness(%struct.group*, i32*) #1

declare dso_local i64 @compare_group(%struct.group*, %struct.group*, i32*) #1

declare dso_local i64 @group_check_ambiguity(%struct.group_test_data*, %struct.group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
