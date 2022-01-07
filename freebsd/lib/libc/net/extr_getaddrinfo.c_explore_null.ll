; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_explore_null.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_explore_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32 }
%struct.afd = type { i32, i32 }

@PF_LOCAL = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i64 0, align 8
@AI_PASSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*, i8*, %struct.addrinfo**)* @explore_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @explore_null(%struct.addrinfo* %0, i8* %1, %struct.addrinfo** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.addrinfo**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.afd*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i32, align 4
  store %struct.addrinfo* %0, %struct.addrinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.addrinfo** %2, %struct.addrinfo*** %7, align 8
  %12 = load %struct.addrinfo**, %struct.addrinfo*** %7, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %10, align 8
  %13 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PF_LOCAL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %84

19:                                               ; preds = %3
  %20 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @SOCK_DGRAM, align 4
  %24 = load i32, i32* @SOCK_CLOEXEC, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @_socket(i64 %22, i32 %25, i32 0)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EMFILE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %84

34:                                               ; preds = %29
  br label %38

35:                                               ; preds = %19
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @_close(i32 %36)
  br label %38

38:                                               ; preds = %35, %34
  %39 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.afd* @find_afd(i64 %41)
  store %struct.afd* %42, %struct.afd** %9, align 8
  %43 = load %struct.afd*, %struct.afd** %9, align 8
  %44 = icmp eq %struct.afd* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %84

46:                                               ; preds = %38
  %47 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @AI_PASSIVE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %55 = load %struct.afd*, %struct.afd** %9, align 8
  %56 = load %struct.afd*, %struct.afd** %9, align 8
  %57 = getelementptr inbounds %struct.afd, %struct.afd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @GET_AI(%struct.addrinfo* %54, %struct.afd* %55, i32 %58)
  %60 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @GET_PORT(%struct.addrinfo* %60, i8* %61)
  br label %73

63:                                               ; preds = %46
  %64 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %65 = load %struct.afd*, %struct.afd** %9, align 8
  %66 = load %struct.afd*, %struct.afd** %9, align 8
  %67 = getelementptr inbounds %struct.afd, %struct.afd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @GET_AI(%struct.addrinfo* %64, %struct.afd* %65, i32 %68)
  %70 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @GET_PORT(%struct.addrinfo* %70, i8* %71)
  br label %73

73:                                               ; preds = %63, %53
  %74 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %75 = load %struct.addrinfo**, %struct.addrinfo*** %7, align 8
  store %struct.addrinfo* %74, %struct.addrinfo** %75, align 8
  store i32 0, i32* %4, align 4
  br label %84

76:                                               ; No predecessors!
  %77 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %78 = icmp ne %struct.addrinfo* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %81 = call i32 @freeaddrinfo(%struct.addrinfo* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %73, %45, %33, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @_socket(i64, i32, i32) #1

declare dso_local i32 @_close(i32) #1

declare dso_local %struct.afd* @find_afd(i64) #1

declare dso_local i32 @GET_AI(%struct.addrinfo*, %struct.afd*, i32) #1

declare dso_local i32 @GET_PORT(%struct.addrinfo*, i8*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
