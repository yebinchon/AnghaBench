; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_hostent_read_hostlist_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_hostent_read_hostlist_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32* }

@af_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostent*, i8*)* @hostent_read_hostlist_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostent_read_hostlist_func(%struct.hostent* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca i32, align 4
  store %struct.hostent* %0, %struct.hostent** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @af_type, align 4
  %10 = call %struct.hostent* @__gethostbyname2(i8* %8, i32 %9)
  store %struct.hostent* %10, %struct.hostent** %6, align 8
  %11 = load %struct.hostent*, %struct.hostent** %6, align 8
  %12 = icmp ne %struct.hostent* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.hostent*, %struct.hostent** %6, align 8
  %15 = call i32 @hostent_test_correctness(%struct.hostent* %14, i32* null)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.hostent*, %struct.hostent** %6, align 8
  %20 = call i32 @__freehostent(%struct.hostent* %19)
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %13
  %23 = load %struct.hostent*, %struct.hostent** %4, align 8
  %24 = load %struct.hostent*, %struct.hostent** %6, align 8
  %25 = call i32 @clone_hostent(%struct.hostent* %23, %struct.hostent* %24)
  %26 = load %struct.hostent*, %struct.hostent** %6, align 8
  %27 = call i32 @__freehostent(%struct.hostent* %26)
  br label %41

28:                                               ; preds = %2
  %29 = load %struct.hostent*, %struct.hostent** %4, align 8
  %30 = call i32 @memset(%struct.hostent* %29, i32 0, i32 8)
  %31 = load i8*, i8** %5, align 8
  %32 = call i32* @strdup(i8* %31)
  %33 = load %struct.hostent*, %struct.hostent** %4, align 8
  %34 = getelementptr inbounds %struct.hostent, %struct.hostent* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.hostent*, %struct.hostent** %4, align 8
  %36 = getelementptr inbounds %struct.hostent, %struct.hostent* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @ATF_REQUIRE(i32 %39)
  br label %41

41:                                               ; preds = %28, %22
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.hostent* @__gethostbyname2(i8*, i32) #1

declare dso_local i32 @hostent_test_correctness(%struct.hostent*, i32*) #1

declare dso_local i32 @__freehostent(%struct.hostent*) #1

declare dso_local i32 @clone_hostent(%struct.hostent*, %struct.hostent*) #1

declare dso_local i32 @memset(%struct.hostent*, i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
