; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo-test.c_doit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo-test.c_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i8*, i32, %struct.addrinfo*, i32 }

@verbose_counter = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"(%s,%s)... \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@flags = common dso_local global i32 0, align 4
@family = common dso_local global i32 0, align 4
@socktype = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"\09bad address?\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"\09family = %d, socktype = %d, protocol = %d, address = \22%s\22, port = %d\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c", canonname = \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doit(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.addrinfo, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i64, i64* @verbose_counter, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  br label %18

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i8* [ %16, %15 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %17 ]
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = call i32 @memset(%struct.addrinfo* %5, i32 0, i32 48)
  %24 = load i32, i32* @flags, align 4
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 6
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @family, align 4
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @socktype, align 4
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @getaddrinfo(i8* %30, i8* %31, %struct.addrinfo* %5, %struct.addrinfo** %6)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @gai_strerror(i32 %36)
  %38 = call i32 @errx(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %22
  %40 = load i64, i64* @verbose_counter, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  %45 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %45, %struct.addrinfo** %7, align 8
  br label %46

46:                                               ; preds = %98, %44
  %47 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %48 = icmp ne %struct.addrinfo* %47, null
  br i1 %48, label %49, label %102

49:                                               ; preds = %46
  %50 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @socket_get_address(i32 %55)
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %58 = call i32* @inet_ntop(i32 %52, i32 %56, i8* %57, i32 256)
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load i64, i64* @verbose_counter, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  br label %98

66:                                               ; preds = %49
  %67 = load i64, i64* @verbose_counter, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %66
  %70 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %77 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %80 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %81 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @socket_get_port(i32 %82)
  %84 = call i32 @ntohs(i32 %83)
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %75, i32 %78, i8* %79, i32 %84)
  %86 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %87 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %69
  %91 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %92 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %90, %69
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %66
  br label %98

98:                                               ; preds = %97, %65
  %99 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %100 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %99, i32 0, i32 5
  %101 = load %struct.addrinfo*, %struct.addrinfo** %100, align 8
  store %struct.addrinfo* %101, %struct.addrinfo** %7, align 8
  br label %46

102:                                              ; preds = %46
  %103 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %104 = call i32 @freeaddrinfo(%struct.addrinfo* %103)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32* @inet_ntop(i32, i32, i8*, i32) #1

declare dso_local i32 @socket_get_address(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @socket_get_port(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
