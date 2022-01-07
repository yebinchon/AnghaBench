; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_get_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_get_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i64 }
%struct.servent = type { i32 }
%struct.sockaddr_in = type { i32 }

@EAI_SERVICE = common dso_local global i32 0, align 4
@EAI_SOCKTYPE = common dso_local global i32 0, align 4
@AI_NUMERICSERV = common dso_local global i32 0, align 4
@EAI_NONAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sctp\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"udplite\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*, i8*, i32)* @get_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_port(%struct.addrinfo* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.servent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.addrinfo* %0, %struct.addrinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %106

16:                                               ; preds = %3
  %17 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %22 [
    i32 137, label %20
    i32 139, label %21
    i32 138, label %21
  ]

20:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %106

21:                                               ; preds = %16, %16
  br label %23

22:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %106

23:                                               ; preds = %21
  %24 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %37 [
    i32 130, label %27
    i32 131, label %29
    i32 128, label %29
    i32 129, label %29
    i32 136, label %30
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @EAI_SERVICE, align 4
  store i32 %28, i32* %4, align 4
  br label %106

29:                                               ; preds = %23, %23, %23
  store i32 1, i32* %12, align 4
  br label %39

30:                                               ; preds = %23
  %31 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %35 [
    i32 139, label %34
    i32 138, label %34
  ]

34:                                               ; preds = %30, %30
  store i32 1, i32* %12, align 4
  br label %36

35:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %39

37:                                               ; preds = %23
  %38 = load i32, i32* @EAI_SOCKTYPE, align 4
  store i32 %38, i32* %4, align 4
  br label %106

39:                                               ; preds = %36, %29
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @str2number(i8* %40, i32* %10)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @EAI_SERVICE, align 4
  store i32 %48, i32* %4, align 4
  br label %106

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 65535
  br i1 %54, label %55, label %57

55:                                               ; preds = %52, %49
  %56 = load i32, i32* @EAI_SERVICE, align 4
  store i32 %56, i32* %4, align 4
  br label %106

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @htons(i32 %58)
  store i32 %59, i32* %10, align 4
  br label %89

60:                                               ; preds = %39
  %61 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %62 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @AI_NUMERICSERV, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @EAI_NONAME, align 4
  store i32 %68, i32* %4, align 4
  br label %106

69:                                               ; preds = %60
  %70 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %77 [
    i32 133, label %73
    i32 134, label %74
    i32 135, label %75
    i32 132, label %76
  ]

73:                                               ; preds = %69
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %78

74:                                               ; preds = %69
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %78

75:                                               ; preds = %69
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %78

76:                                               ; preds = %69
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %78

77:                                               ; preds = %69
  store i8* null, i8** %8, align 8
  br label %78

78:                                               ; preds = %77, %76, %75, %74, %73
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call %struct.servent* @getservbyname(i8* %79, i8* %80)
  store %struct.servent* %81, %struct.servent** %9, align 8
  %82 = icmp eq %struct.servent* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @EAI_SERVICE, align 4
  store i32 %84, i32* %4, align 4
  br label %106

85:                                               ; preds = %78
  %86 = load %struct.servent*, %struct.servent** %9, align 8
  %87 = getelementptr inbounds %struct.servent, %struct.servent* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %85, %57
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %89
  %93 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %94 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %104 [
    i32 139, label %96
  ]

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %99 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = bitcast i8* %101 to %struct.sockaddr_in*
  %103 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %102, i32 0, i32 0
  store i32 %97, i32* %103, align 4
  br label %104

104:                                              ; preds = %92, %96
  br label %105

105:                                              ; preds = %104, %89
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %83, %67, %55, %47, %37, %27, %22, %20, %15
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @str2number(i8*, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
