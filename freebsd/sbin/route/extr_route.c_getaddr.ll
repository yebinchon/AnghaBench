; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_getaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_getaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i64, i32, i32 }
%struct.sockaddr = type { i32, i32, i32 }
%struct.ifaddrs = type { i8*, %struct.TYPE_4__*, %struct.ifaddrs* }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_dl = type { i32, i32, i32 }

@RTAX_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@af = common dso_local global i64 0, align 8
@aflen = common dso_local global i32 0, align 4
@rtm_addrs = common dso_local global i32 0, align 4
@so = common dso_local global i32* null, align 8
@F_INTERFACE = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"getifaddrs\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"interface '%s' does not exist\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@F_FORCENET = common dso_local global i32 0, align 4
@RTAX_NETMASK = common dso_local global i64 0, align 8
@EX_NOHOST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"bad address: %s\00", align 1
@F_FORCEHOST = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@INADDR_NONE = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.hostent**, i32)* @getaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getaddr(i32 %0, i8* %1, %struct.hostent** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hostent**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.ifaddrs*, align 8
  %12 = alloca %struct.ifaddrs*, align 8
  %13 = alloca %struct.sockaddr_dl*, align 8
  %14 = alloca %struct.sockaddr_dl*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.hostent** %2, %struct.hostent*** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @RTAX_MAX, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %4
  %22 = call i32 @usage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i64, i64* @af, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i64 132, i64* @af, align 8
  store i32 12, i32* @aflen, align 4
  br label %27

27:                                               ; preds = %26, %23
  store %struct.hostent** null, %struct.hostent*** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* @rtm_addrs, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* @rtm_addrs, align 4
  %32 = load i32*, i32** @so, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = bitcast i32* %35 to %struct.sockaddr*
  store %struct.sockaddr* %36, %struct.sockaddr** %10, align 8
  %37 = load i64, i64* @af, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %40 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @aflen, align 4
  %42 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %115 [
    i32 129, label %45
    i32 128, label %112
  ]

45:                                               ; preds = %27
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @F_INTERFACE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %111

50:                                               ; preds = %45
  %51 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %52 = bitcast %struct.sockaddr* %51 to i8*
  %53 = bitcast i8* %52 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %53, %struct.sockaddr_dl** %13, align 8
  store %struct.sockaddr_dl* null, %struct.sockaddr_dl** %14, align 8
  %54 = call i32 @getifaddrs(%struct.ifaddrs** %11)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EX_OSERR, align 4
  %58 = call i32 @err(i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  store %struct.ifaddrs* %60, %struct.ifaddrs** %12, align 8
  br label %61

61:                                               ; preds = %86, %59
  %62 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %63 = icmp ne %struct.ifaddrs* %62, null
  br i1 %63, label %64, label %90

64:                                               ; preds = %61
  %65 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %66 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 132
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %86

72:                                               ; preds = %64
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %75 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @strcmp(i8* %73, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %86

80:                                               ; preds = %72
  %81 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %82 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = bitcast %struct.TYPE_4__* %83 to i8*
  %85 = bitcast i8* %84 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %85, %struct.sockaddr_dl** %14, align 8
  br label %86

86:                                               ; preds = %80, %79, %71
  %87 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %88 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %87, i32 0, i32 2
  %89 = load %struct.ifaddrs*, %struct.ifaddrs** %88, align 8
  store %struct.ifaddrs* %89, %struct.ifaddrs** %12, align 8
  br label %61

90:                                               ; preds = %61
  %91 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %14, align 8
  %92 = icmp ne %struct.sockaddr_dl* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %13, align 8
  %95 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %14, align 8
  %96 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %14, align 8
  %97 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memcpy(%struct.sockaddr_dl* %94, %struct.sockaddr_dl* %95, i32 %98)
  br label %100

100:                                              ; preds = %93, %90
  %101 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  %102 = call i32 @freeifaddrs(%struct.ifaddrs* %101)
  %103 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %14, align 8
  %104 = icmp ne %struct.sockaddr_dl* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 1, i32* %5, align 4
  br label %151

106:                                              ; preds = %100
  %107 = load i32, i32* @EX_DATAERR, align 4
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 (i32, i8*, i8*, ...) @errx(i32 %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110, %45
  br label %115

112:                                              ; preds = %27
  %113 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %114 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %113, i32 0, i32 0
  store i32 132, i32* %114, align 4
  br label %115

115:                                              ; preds = %27, %112, %111
  %116 = load i8*, i8** %7, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load i32, i32* %6, align 4
  switch i32 %120, label %130 [
    i32 130, label %121
  ]

121:                                              ; preds = %119
  %122 = load i32, i32* @F_FORCENET, align 4
  %123 = load i32, i32* %9, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %9, align 4
  %125 = load i64, i64* @RTAX_NETMASK, align 8
  %126 = trunc i64 %125 to i32
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @getaddr(i32 %126, i8* %127, %struct.hostent** null, i32 %128)
  br label %130

130:                                              ; preds = %119, %121
  store i32 0, i32* %5, align 4
  br label %151

131:                                              ; preds = %115
  %132 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %133 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  switch i32 %134, label %146 [
    i32 132, label %135
    i32 131, label %141
  ]

135:                                              ; preds = %131
  %136 = load i8*, i8** %7, align 8
  %137 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %138 = bitcast %struct.sockaddr* %137 to i8*
  %139 = bitcast i8* %138 to %struct.sockaddr_dl*
  %140 = call i32 @link_addr(i8* %136, %struct.sockaddr_dl* %139)
  store i32 1, i32* %5, align 4
  br label %151

141:                                              ; preds = %131
  %142 = load i8*, i8** %7, align 8
  %143 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %144 = bitcast %struct.sockaddr* %143 to %struct.sockaddr_dl*
  %145 = call i32 @sockaddr(i8* %142, %struct.sockaddr_dl* %144, i32 4)
  store i32 1, i32* %5, align 4
  br label %151

146:                                              ; preds = %131
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* @EX_NOHOST, align 4
  %149 = load i8*, i8** %7, align 8
  %150 = call i32 (i32, i8*, i8*, ...) @errx(i32 %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %147, %141, %135, %130, %105
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(%struct.sockaddr_dl*, %struct.sockaddr_dl*, i32) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i32 @link_addr(i8*, %struct.sockaddr_dl*) #1

declare dso_local i32 @sockaddr(i8*, %struct.sockaddr_dl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
