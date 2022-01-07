; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_gethostbyname2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_gethostbyname2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@NO_RECOVERY = common dso_local global i32 0, align 4
@h_errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@hent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostent* @cap_gethostbyname2(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostent*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32* @nvlist_create(i32 0)
  store i32* %10, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = call i32 @nvlist_add_string(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @nvlist_add_number(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @nvlist_add_string(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32* @cap_xfer_nvlist(i32* %19, i32* %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @NO_RECOVERY, align 4
  store i32 %25, i32* @h_errno, align 4
  store %struct.hostent* null, %struct.hostent** %4, align 8
  br label %42

26:                                               ; preds = %3
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @nvlist_get_number(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @nvlist_get_number(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* @h_errno, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @nvlist_destroy(i32* %34)
  store %struct.hostent* null, %struct.hostent** %4, align 8
  br label %42

36:                                               ; preds = %26
  %37 = load i32*, i32** %9, align 8
  %38 = call %struct.hostent* @hostent_unpack(i32* %37, i32* @hent)
  store %struct.hostent* %38, %struct.hostent** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @nvlist_destroy(i32* %39)
  %41 = load %struct.hostent*, %struct.hostent** %8, align 8
  store %struct.hostent* %41, %struct.hostent** %4, align 8
  br label %42

42:                                               ; preds = %36, %30, %24
  %43 = load %struct.hostent*, %struct.hostent** %4, align 8
  ret %struct.hostent* %43
}

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32* @cap_xfer_nvlist(i32*, i32*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local %struct.hostent* @hostent_unpack(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
