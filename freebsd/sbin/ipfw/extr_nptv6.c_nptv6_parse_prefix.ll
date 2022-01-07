; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nptv6.c_nptv6_parse_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nptv6.c_nptv6_parse_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@EX_OSERR = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Bad prefix: %s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Bad prefix length: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.in6_addr*, i32*)* @nptv6_parse_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nptv6_parse_prefix(i8* %0, %struct.in6_addr* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @strdup(i8* %9)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EX_OSERR, align 4
  %15 = call i32 @err(i32 %14, i32* null)
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 47)
  store i8* %18, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  store i8 0, i8* %21, align 1
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* @AF_INET6, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %27 = call i32 @inet_pton(i32 %24, i8* %25, %struct.in6_addr* %26)
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @EX_USAGE, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @errx(i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @strtol(i8* %37, i8** %8, i32 10)
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %36
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 64
  br i1 %52, label %53, label %57

53:                                               ; preds = %49, %45, %36
  %54 = load i32, i32* @EX_USAGE, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @errx(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %60

58:                                               ; preds = %33
  %59 = load i32*, i32** %6, align 8
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @free(i8* %61)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @inet_pton(i32, i8*, %struct.in6_addr*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
