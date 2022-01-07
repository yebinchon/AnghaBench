; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_dns_gethostbyaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_dns_gethostbyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"ADDR2NAME\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ADDR\00", align 1
@NO_RECOVERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@h_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @dns_gethostbyaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_gethostbyaddr(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hostent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @dns_allowed_type(i32* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @dns_allowed_type(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @NO_RECOVERY, align 4
  store i32 %20, i32* %4, align 4
  br label %47

21:                                               ; preds = %15, %3
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @nvlist_get_number(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @dns_allowed_family(i32* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @NO_RECOVERY, align 4
  store i32 %30, i32* %4, align 4
  br label %47

31:                                               ; preds = %21
  %32 = load i32*, i32** %6, align 8
  %33 = call i8* @nvlist_get_binary(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64* %10)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %11, align 4
  %38 = call %struct.hostent* @gethostbyaddr(i8* %34, i32 %36, i32 %37)
  store %struct.hostent* %38, %struct.hostent** %8, align 8
  %39 = load %struct.hostent*, %struct.hostent** %8, align 8
  %40 = icmp eq %struct.hostent* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @h_errno, align 4
  store i32 %42, i32* %4, align 4
  br label %47

43:                                               ; preds = %31
  %44 = load %struct.hostent*, %struct.hostent** %8, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @hostent_pack(%struct.hostent* %44, i32* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %41, %29, %19
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @dns_allowed_type(i32*, i8*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @dns_allowed_family(i32*, i32) #1

declare dso_local i8* @nvlist_get_binary(i32*, i8*, i64*) #1

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #1

declare dso_local i32 @hostent_pack(%struct.hostent*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
