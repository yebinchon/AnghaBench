; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_dns_gethostbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_dns_gethostbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"NAME2ADDR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@NO_RECOVERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@h_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @dns_gethostbyname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_gethostbyname(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hostent*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @dns_allowed_type(i32* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @dns_allowed_type(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @NO_RECOVERY, align 4
  store i32 %18, i32* %4, align 4
  br label %42

19:                                               ; preds = %13, %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @nvlist_get_number(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @dns_allowed_family(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @NO_RECOVERY, align 4
  store i32 %28, i32* %4, align 4
  br label %42

29:                                               ; preds = %19
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @nvlist_get_string(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.hostent* @gethostbyname2(i32 %31, i32 %32)
  store %struct.hostent* %33, %struct.hostent** %8, align 8
  %34 = load %struct.hostent*, %struct.hostent** %8, align 8
  %35 = icmp eq %struct.hostent* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @h_errno, align 4
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %29
  %39 = load %struct.hostent*, %struct.hostent** %8, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @hostent_pack(%struct.hostent* %39, i32* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %36, %27, %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @dns_allowed_type(i32*, i8*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @dns_allowed_family(i32*, i32) #1

declare dso_local %struct.hostent* @gethostbyname2(i32, i32) #1

declare dso_local i32 @nvlist_get_string(i32*, i8*) #1

declare dso_local i32 @hostent_pack(%struct.hostent*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
