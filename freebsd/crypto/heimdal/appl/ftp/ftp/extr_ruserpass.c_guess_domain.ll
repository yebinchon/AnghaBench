; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ruserpass.c_guess_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ruserpass.c_guess_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i8*, %struct.addrinfo*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AI_CANONNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @guess_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @guess_domain(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @gethostname(i8* %11, i64 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @strlcpy(i8* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %17)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %71

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 46)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %3, align 8
  br label %71

27:                                               ; preds = %19
  %28 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 24)
  %29 = load i32, i32* @AI_CANONNAME, align 4
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @getaddrinfo(i8* %31, i32* null, %struct.addrinfo* %8, %struct.addrinfo** %6)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i8*, i8** %4, align 8
  store i8* %36, i8** %3, align 8
  br label %71

37:                                               ; preds = %27
  %38 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %38, %struct.addrinfo** %7, align 8
  br label %39

39:                                               ; preds = %55, %37
  %40 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %41 = icmp ne %struct.addrinfo* %40, null
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @strlcpy(i8* %48, i8* %51, i64 %52)
  br label %59

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 1
  %58 = load %struct.addrinfo*, %struct.addrinfo** %57, align 8
  store %struct.addrinfo* %58, %struct.addrinfo** %7, align 8
  br label %39

59:                                               ; preds = %47, %39
  %60 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %61 = call i32 @freeaddrinfo(%struct.addrinfo* %60)
  %62 = load i8*, i8** %4, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 46)
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8* %68, i8** %3, align 8
  br label %71

69:                                               ; preds = %59
  %70 = load i8*, i8** %4, align 8
  store i8* %70, i8** %3, align 8
  br label %71

71:                                               ; preds = %69, %66, %35, %24, %15
  %72 = load i8*, i8** %3, align 8
  ret i8* %72
}

declare dso_local i64 @gethostname(i8*, i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
