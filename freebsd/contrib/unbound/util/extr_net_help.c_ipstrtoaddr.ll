; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_ipstrtoaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_ipstrtoaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in6 = type { i32, i64, i8*, i32, i64, i64, i8* }
%struct.sockaddr_in = type { i32, i64, i8*, i32, i64, i64, i8* }

@MAX_ADDR_STRLEN = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipstrtoaddr(i8* %0, i32 %1, %struct.sockaddr_storage* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sockaddr_in6*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %119

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @str_is_ip6(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %90

26:                                               ; preds = %20
  %27 = load i32, i32* @MAX_ADDR_STRLEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %11, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %31 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %32 = bitcast %struct.sockaddr_storage* %31 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %32, %struct.sockaddr_in6** %14, align 8
  %33 = load i32*, i32** %9, align 8
  store i32 56, i32* %33, align 4
  %34 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memset(%struct.sockaddr_in6* %34, i32 0, i32 %36)
  %38 = load i64, i64* @AF_INET6, align 8
  %39 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %39, i32 0, i32 4
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @htons(i64 %41)
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 37)
  store i8* %47, i8** %13, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %74

49:                                               ; preds = %26
  %50 = load i8*, i8** %13, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = load i32, i32* @MAX_ADDR_STRLEN, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp sge i64 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %86

59:                                               ; preds = %49
  %60 = load i8*, i8** %6, align 8
  %61 = trunc i64 %28 to i32
  %62 = call i32 @strlcpy(i8* %30, i8* %60, i32 %61)
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = getelementptr inbounds i8, i8* %30, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i8*, i8** %13, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = call i64 @atoi(i8* %70)
  %72 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %73 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %72, i32 0, i32 5
  store i64 %71, i64* %73, align 8
  store i8* %30, i8** %6, align 8
  br label %74

74:                                               ; preds = %59, %26
  %75 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %76 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %81 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %80, i32 0, i32 3
  %82 = call i64 @inet_pton(i32 %78, i8* %79, i32* %81)
  %83 = icmp sle i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %86

85:                                               ; preds = %74
  store i32 0, i32* %15, align 4
  br label %86

86:                                               ; preds = %85, %84, %58
  %87 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %15, align 4
  switch i32 %88, label %121 [
    i32 0, label %89
    i32 1, label %119
  ]

89:                                               ; preds = %86
  br label %118

90:                                               ; preds = %20
  %91 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %92 = bitcast %struct.sockaddr_storage* %91 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %92, %struct.sockaddr_in** %16, align 8
  %93 = load i32*, i32** %9, align 8
  store i32 56, i32* %93, align 4
  %94 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %95 = bitcast %struct.sockaddr_in* %94 to %struct.sockaddr_in6*
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @memset(%struct.sockaddr_in6* %95, i32 0, i32 %97)
  %99 = load i64, i64* @AF_INET, align 8
  %100 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i64 @htons(i64 %102)
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %106 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %108 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load i8*, i8** %6, align 8
  %112 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %113 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %112, i32 0, i32 0
  %114 = call i64 @inet_pton(i32 %110, i8* %111, i32* %113)
  %115 = icmp sle i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %90
  store i32 0, i32* %5, align 4
  br label %119

117:                                              ; preds = %90
  br label %118

118:                                              ; preds = %117, %89
  store i32 1, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %116, %86, %19
  %120 = load i32, i32* %5, align 4
  ret i32 %120

121:                                              ; preds = %86
  unreachable
}

declare dso_local i64 @str_is_ip6(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i64 @inet_pton(i32, i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
