; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getaddrinfo_test.c_addrinfo_read_snapshot_ai.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getaddrinfo_test.c_addrinfo_read_snapshot_ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*, i8*)* @addrinfo_read_snapshot_ai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrinfo_read_snapshot_ai(%struct.addrinfo* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %7, align 8
  %13 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %14 = call i32 @memset(%struct.addrinfo* %13, i32 0, i32 24)
  br label %15

15:                                               ; preds = %96, %2
  %16 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %99

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %95 [
    i32 0, label %20
    i32 1, label %20
    i32 2, label %20
    i32 3, label %20
    i32 4, label %36
    i32 5, label %48
    i32 6, label %64
  ]

20:                                               ; preds = %18, %18, %18, %18
  %21 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %11, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strtol(i8* %26, i8** %8, i32 10)
  %28 = trunc i64 %27 to i32
  %29 = load i32*, i32** %11, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %100

35:                                               ; preds = %20
  br label %96

36:                                               ; preds = %18
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strtol(i8* %37, i8** %8, i32 10)
  %39 = trunc i64 %38 to i32
  %40 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %100

47:                                               ; preds = %36
  br label %96

48:                                               ; preds = %18
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = call i32* @strdup(i8* %53)
  %55 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %55, i32 0, i32 3
  store i32* %54, i32** %56, align 8
  %57 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @ATF_REQUIRE(i32 %61)
  br label %63

63:                                               ; preds = %52, %48
  br label %96

64:                                               ; preds = %18
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %64
  %69 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32* @calloc(i32 1, i32 %71)
  %73 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %73, i32 0, i32 2
  store i32* %72, i32** %74, align 8
  %75 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %76 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 @ATF_REQUIRE(i32 %79)
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %83 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = bitcast i32* %84 to i8*
  %86 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %87 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @addrinfo_read_snapshot_addr(i8* %81, i8* %85, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %68
  br label %100

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93, %64
  br label %96

95:                                               ; preds = %18
  store i32 -1, i32* %10, align 4
  br label %100

96:                                               ; preds = %94, %63, %47, %35
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %15

99:                                               ; preds = %15
  br label %100

100:                                              ; preds = %99, %95, %92, %46, %34
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 7
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103, %100
  %107 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %108 = call i32 @free_addrinfo(%struct.addrinfo* %107)
  store %struct.addrinfo* null, %struct.addrinfo** %4, align 8
  store i32 -1, i32* %3, align 4
  br label %110

109:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %106
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @addrinfo_read_snapshot_addr(i8*, i8*, i32) #1

declare dso_local i32 @free_addrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
