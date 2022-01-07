; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/devd/tests/extr_client_test.c_create_two_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/devd/tests/extr_client_test.c_create_two_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"mdconfig -a -s 64 -t null\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"mdconfig -d -u %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_two_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_two_events() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca [95 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = call i32* @popen(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @ATF_REQUIRE(i32 %9)
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %12 = load i32*, i32** %1, align 8
  %13 = call i8* @fgets(i8* %11, i32 80, i32* %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @ATF_REQUIRE(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @pclose(i32* %18)
  %20 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %19)
  %21 = getelementptr inbounds [95 x i8], [95 x i8]* %4, i64 0, i64 0
  %22 = getelementptr inbounds [95 x i8], [95 x i8]* %4, i64 0, i64 0
  %23 = call i32 @nitems(i8* %22)
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %25 = call i32 @snprintf(i8* %21, i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = getelementptr inbounds [95 x i8], [95 x i8]* %4, i64 0, i64 0
  %27 = call i32* @popen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %2, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @ATF_REQUIRE(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @pclose(i32* %32)
  %34 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %33)
  ret void
}

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @nitems(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
