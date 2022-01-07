; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_gethostbyaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_gethostbyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"gethostbyaddr\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@NO_RECOVERY = common dso_local global i32 0, align 4
@h_errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@hent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostent* @cap_gethostbyaddr(i32* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.hostent*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostent*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call i32* @nvlist_create(i32 0)
  store i32* %12, i32** %11, align 8
  %13 = load i32*, i32** %11, align 8
  %14 = call i32 @nvlist_add_string(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32*, i32** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @nvlist_add_binary(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %16, i64 %17)
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @nvlist_add_number(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32* @cap_xfer_nvlist(i32* %22, i32* %23)
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @NO_RECOVERY, align 4
  store i32 %28, i32* @h_errno, align 4
  store %struct.hostent* null, %struct.hostent** %5, align 8
  br label %45

29:                                               ; preds = %4
  %30 = load i32*, i32** %11, align 8
  %31 = call i64 @nvlist_get_number(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32*, i32** %11, align 8
  %35 = call i64 @nvlist_get_number(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* @h_errno, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @nvlist_destroy(i32* %37)
  store %struct.hostent* null, %struct.hostent** %5, align 8
  br label %45

39:                                               ; preds = %29
  %40 = load i32*, i32** %11, align 8
  %41 = call %struct.hostent* @hostent_unpack(i32* %40, i32* @hent)
  store %struct.hostent* %41, %struct.hostent** %10, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @nvlist_destroy(i32* %42)
  %44 = load %struct.hostent*, %struct.hostent** %10, align 8
  store %struct.hostent* %44, %struct.hostent** %5, align 8
  br label %45

45:                                               ; preds = %39, %33, %27
  %46 = load %struct.hostent*, %struct.hostent** %5, align 8
  ret %struct.hostent* %46
}

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nvlist_add_binary(i32*, i8*, i8*, i64) #1

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
