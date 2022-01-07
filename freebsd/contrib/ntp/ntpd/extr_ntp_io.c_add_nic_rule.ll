; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_add_nic_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_add_nic_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }

@MATCH_IFNAME = common dso_local global i64 0, align 8
@MATCH_IFADDR = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i32 0, align 4
@nic_rule_list = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_nic_rule(i64 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call %struct.TYPE_4__* @emalloc_zero(i32 24)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %9, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  store i64 %12, i64* %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i64, i64* @MATCH_IFNAME, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* null, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @REQUIRE(i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @estrdup(i8* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %55

33:                                               ; preds = %4
  %34 = load i64, i64* @MATCH_IFADDR, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* null, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @REQUIRE(i32 %40)
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @AF_UNSPEC, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = call i32 @is_ip_address(i8* %42, i32 %43, i32* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @REQUIRE(i32 %47)
  br label %54

49:                                               ; preds = %33
  %50 = load i8*, i8** %6, align 8
  %51 = icmp eq i8* null, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @REQUIRE(i32 %52)
  br label %54

54:                                               ; preds = %49, %37
  br label %55

55:                                               ; preds = %54, %24
  %56 = load i32, i32* @nic_rule_list, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %58 = load i32, i32* @next, align 4
  %59 = call i32 @LINK_SLIST(i32 %56, %struct.TYPE_4__* %57, i32 %58)
  ret void
}

declare dso_local %struct.TYPE_4__* @emalloc_zero(i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @estrdup(i8*) #1

declare dso_local i32 @is_ip_address(i8*, i32, i32*) #1

declare dso_local i32 @LINK_SLIST(i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
