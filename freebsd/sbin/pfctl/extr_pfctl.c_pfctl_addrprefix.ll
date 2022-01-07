; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_addrprefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_addrprefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_addr = type { %struct.addrinfo, %struct.addrinfo }
%struct.addrinfo = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"prefix is %s: %s\00", align 1
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"getaddrinfo: %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"prefix too long for AF_INET\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"prefix too long for AF_INET6\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfctl_addrprefix(i8* %0, %struct.pf_addr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pf_addr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.addrinfo, align 4
  %12 = alloca %struct.addrinfo*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.pf_addr* %1, %struct.pf_addr** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 47)
  store i8* %14, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %112

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %5, align 8
  store i8 0, i8* %18, align 1
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strtonum(i8* %20, i32 0, i32 128, i8** %6)
  store i32 %21, i32* %7, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26)
  br label %28

28:                                               ; preds = %24, %17
  %29 = call i32 @bzero(%struct.addrinfo* %11, i32 12)
  %30 = load i32, i32* @AI_NUMERICHOST, align 4
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @getaddrinfo(i8* %34, i32* null, %struct.addrinfo* %11, %struct.addrinfo** %12)
  store i32 %35, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @gai_strerror(i32 %38)
  %40 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %28
  %42 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 129
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %62

51:                                               ; preds = %46, %41
  %52 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 128
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 128
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56, %51
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 3
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 7
  store i32 %66, i32* %10, align 4
  %67 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %109 [
    i32 129, label %70
    i32 128, label %83
  ]

70:                                               ; preds = %62
  %71 = load %struct.pf_addr*, %struct.pf_addr** %4, align 8
  %72 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %71, i32 0, i32 1
  %73 = call i32 @bzero(%struct.addrinfo* %72, i32 12)
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 32, %74
  %76 = zext i32 %75 to i64
  %77 = shl i64 1099511627775, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @htonl(i32 %78)
  %80 = load %struct.pf_addr*, %struct.pf_addr** %4, align 8
  %81 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  br label %109

83:                                               ; preds = %62
  %84 = load %struct.pf_addr*, %struct.pf_addr** %4, align 8
  %85 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %84, i32 0, i32 0
  %86 = call i32 @bzero(%struct.addrinfo* %85, i32 12)
  %87 = load i32, i32* %9, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.pf_addr*, %struct.pf_addr** %4, align 8
  %91 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %90, i32 0, i32 0
  %92 = bitcast %struct.addrinfo* %91 to i8*
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @memset(i8* %92, i32 255, i32 %93)
  br label %95

95:                                               ; preds = %89, %83
  %96 = load i32, i32* %10, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = ashr i32 65280, %99
  %101 = and i32 %100, 255
  %102 = load %struct.pf_addr*, %struct.pf_addr** %4, align 8
  %103 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %102, i32 0, i32 0
  %104 = bitcast %struct.addrinfo* %103 to i32*
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  br label %108

108:                                              ; preds = %98, %95
  br label %109

109:                                              ; preds = %62, %108, %70
  %110 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %111 = call i32 @freeaddrinfo(%struct.addrinfo* %110)
  br label %112

112:                                              ; preds = %109, %16
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @bzero(%struct.addrinfo*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
