; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-host.c_secure_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-host.c_secure_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_result = type { i32, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"(error)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"(secure)\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"(BOGUS (security failure))\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"(insecure)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ub_result*)* @secure_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @secure_str(%struct.ub_result* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ub_result*, align 8
  store %struct.ub_result* %0, %struct.ub_result** %3, align 8
  %4 = load %struct.ub_result*, %struct.ub_result** %3, align 8
  %5 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.ub_result*, %struct.ub_result** %3, align 8
  %10 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %27

14:                                               ; preds = %8, %1
  %15 = load %struct.ub_result*, %struct.ub_result** %3, align 8
  %16 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %27

20:                                               ; preds = %14
  %21 = load %struct.ub_result*, %struct.ub_result** %3, align 8
  %22 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %27

26:                                               ; preds = %20
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %27

27:                                               ; preds = %26, %25, %19, %13
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
