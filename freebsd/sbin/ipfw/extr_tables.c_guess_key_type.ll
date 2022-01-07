; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_guess_key_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_guess_key_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.in_addr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IPFW_TABLE_CIDR = common dso_local global i32 0, align 4
@IPFW_TABLE_NUMBER = common dso_local global i32 0, align 4
@IPFW_TABLE_INTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @guess_key_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guess_key_type(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.in6_addr, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = call i64 @ishexnumber(i8 signext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 58
  br i1 %17, label %18, label %65

18:                                               ; preds = %13, %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 47)
  store i8* %20, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  store i8 0, i8* %23, align 1
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* @AF_INET, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @inet_pton(i32 %25, i8* %26, %struct.in6_addr* %7)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @AF_INET6, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @inet_pton(i32 %30, i8* %31, %struct.in6_addr* %7)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %29, %24
  %35 = load i32, i32* @IPFW_TABLE_CIDR, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  store i8 47, i8* %40, align 1
  br label %41

41:                                               ; preds = %39, %34
  store i32 0, i32* %3, align 4
  br label %81

42:                                               ; preds = %29
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strtol(i8* %43, i8** %6, i32 10)
  store i32 %44, i32* %8, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @IPFW_TABLE_NUMBER, align 4
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %81

52:                                               ; preds = %42
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = icmp ne i8* %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 46
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %81

62:                                               ; preds = %56, %52
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64, %13
  %66 = load i8*, i8** %4, align 8
  %67 = call i8* @strchr(i8* %66, i8 signext 46)
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @IPFW_TABLE_INTERFACE, align 4
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  store i32 0, i32* %3, align 4
  br label %81

72:                                               ; preds = %65
  %73 = load i8*, i8** %4, align 8
  %74 = bitcast %struct.in6_addr* %7 to %struct.in_addr*
  %75 = call i64 @lookup_host(i8* %73, %struct.in_addr* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @IPFW_TABLE_CIDR, align 4
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %77, %69, %61, %49, %41
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @ishexnumber(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @inet_pton(i32, i8*, %struct.in6_addr*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @lookup_host(i8*, %struct.in_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
