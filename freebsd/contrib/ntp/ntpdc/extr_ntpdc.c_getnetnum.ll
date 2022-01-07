; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_getnetnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_getnetnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.addrinfo = type { i32, i32*, i32, i32 }

@AI_CANONNAME = common dso_local global i32 0, align 4
@LENHOSTNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ntp\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"***Can't find host %s\0A\00", align 1
@AI_ADDRCONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_6__*, i8*, i32)* @getnetnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getnetnum(i8* %0, %struct.TYPE_6__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca %struct.addrinfo*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %11, align 8
  %12 = call i32 @ZERO(%struct.addrinfo* byval(%struct.addrinfo) align 8 %10)
  %13 = load i32, i32* @AI_CANONNAME, align 4
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = call i64 @decodenetnum(i8* %15, %struct.TYPE_6__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = call i32 @SOCKLEN(%struct.TYPE_6__* %25)
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @LENHOSTNAME, align 4
  %29 = call i32 @getnameinfo(i32* %24, i32 %26, i8* %27, i32 %28, i32* null, i32 0, i32 0)
  br label %30

30:                                               ; preds = %22, %19
  store i32 1, i32* %5, align 4
  br label %80

31:                                               ; preds = %4
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @getaddrinfo(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* %10, %struct.addrinfo** %11)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %75

35:                                               ; preds = %31
  %36 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp uge i64 4, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @INSIST(i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @memcpy(%struct.TYPE_6__* %43, i32 %46, i32 %49)
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %74

53:                                               ; preds = %35
  %54 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @LENHOSTNAME, align 4
  %64 = call i32 @strlcpy(i8* %59, i32* %62, i32 %63)
  br label %73

65:                                               ; preds = %53
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = call i32 @SOCKLEN(%struct.TYPE_6__* %68)
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* @LENHOSTNAME, align 4
  %72 = call i32 @getnameinfo(i32* %67, i32 %69, i8* %70, i32 %71, i32* null, i32 0, i32 0)
  br label %73

73:                                               ; preds = %65, %58
  br label %74

74:                                               ; preds = %73, %35
  store i32 1, i32* %5, align 4
  br label %80

75:                                               ; preds = %31
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* @stderr, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %74, %30
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @ZERO(%struct.addrinfo* byval(%struct.addrinfo) align 8) #1

declare dso_local i64 @decodenetnum(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @getnameinfo(i32*, i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @SOCKLEN(%struct.TYPE_6__*) #1

declare dso_local i64 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
