; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/tests/extr_ld_library_pathfds.c_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/tests/extr_ld_library_pathfds.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descriptors = type { i64, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"srcdir\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"etc\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"usr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.descriptors*, i32*)* @setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup(%struct.descriptors* %0, i32* %1) #0 {
  %3 = alloca %struct.descriptors*, align 8
  %4 = alloca i32*, align 8
  store %struct.descriptors* %0, %struct.descriptors** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = call i8* @atf_tc_get_config_var(i32* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = call i8* @opendir(i8* %6)
  %8 = ptrtoint i8* %7 to i64
  %9 = load %struct.descriptors*, %struct.descriptors** %3, align 8
  %10 = getelementptr inbounds %struct.descriptors, %struct.descriptors* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.descriptors*, %struct.descriptors** %3, align 8
  %12 = getelementptr inbounds %struct.descriptors, %struct.descriptors* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ATF_REQUIRE(i32 %15)
  %17 = load %struct.descriptors*, %struct.descriptors** %3, align 8
  %18 = getelementptr inbounds %struct.descriptors, %struct.descriptors* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = call i32 @openat(i64 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.descriptors*, %struct.descriptors** %3, align 8
  %23 = getelementptr inbounds %struct.descriptors, %struct.descriptors* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = icmp sge i32 %21, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ATF_REQUIRE(i32 %25)
  %27 = call i8* @opendir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.descriptors*, %struct.descriptors** %3, align 8
  %29 = getelementptr inbounds %struct.descriptors, %struct.descriptors* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = icmp uge i8* %27, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @ATF_REQUIRE(i32 %31)
  %33 = load %struct.descriptors*, %struct.descriptors** %3, align 8
  %34 = getelementptr inbounds %struct.descriptors, %struct.descriptors* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @opendirat(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.descriptors*, %struct.descriptors** %3, align 8
  %38 = getelementptr inbounds %struct.descriptors, %struct.descriptors* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = icmp uge i8* %36, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @ATF_REQUIRE(i32 %40)
  %42 = load %struct.descriptors*, %struct.descriptors** %3, align 8
  %43 = getelementptr inbounds %struct.descriptors, %struct.descriptors* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @opendirat(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.descriptors*, %struct.descriptors** %3, align 8
  %47 = getelementptr inbounds %struct.descriptors, %struct.descriptors* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = icmp uge i8* %45, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @ATF_REQUIRE(i32 %49)
  ret void
}

declare dso_local i8* @opendir(i8*) #1

declare dso_local i8* @atf_tc_get_config_var(i32*, i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @openat(i64, i8*, i32) #1

declare dso_local i8* @opendirat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
