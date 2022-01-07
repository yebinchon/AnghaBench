; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getserv_test.c_servent_test_getservbyport.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getserv_test.c_servent_test_getservbyport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i32, i32 }
%struct.servent_test_data = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"testing getservbyport() with the following data...\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"not ok\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.servent*, i8*)* @servent_test_getservbyport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @servent_test_getservbyport(%struct.servent* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.servent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.servent*, align 8
  store %struct.servent* %0, %struct.servent** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.servent*, %struct.servent** %4, align 8
  %9 = call i32 @dump_servent(%struct.servent* %8)
  %10 = load %struct.servent*, %struct.servent** %4, align 8
  %11 = getelementptr inbounds %struct.servent, %struct.servent* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.servent*, %struct.servent** %4, align 8
  %14 = getelementptr inbounds %struct.servent, %struct.servent* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.servent* @getservbyport(i32 %12, i32 %15)
  store %struct.servent* %16, %struct.servent** %6, align 8
  %17 = load %struct.servent*, %struct.servent** %6, align 8
  %18 = call i64 @servent_test_correctness(%struct.servent* %17, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %2
  %21 = load %struct.servent*, %struct.servent** %6, align 8
  %22 = load %struct.servent*, %struct.servent** %4, align 8
  %23 = call i64 @compare_servent(%struct.servent* %21, %struct.servent* %22, i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to %struct.servent_test_data*
  %28 = load %struct.servent*, %struct.servent** %6, align 8
  %29 = call i64 @servent_check_ambiguity(%struct.servent_test_data* %27, %struct.servent* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %2
  %32 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %35

33:                                               ; preds = %25, %20
  %34 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @dump_servent(%struct.servent*) #1

declare dso_local %struct.servent* @getservbyport(i32, i32) #1

declare dso_local i64 @servent_test_correctness(%struct.servent*, i32*) #1

declare dso_local i64 @compare_servent(%struct.servent*, %struct.servent*, i32*) #1

declare dso_local i64 @servent_check_ambiguity(%struct.servent_test_data*, %struct.servent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
