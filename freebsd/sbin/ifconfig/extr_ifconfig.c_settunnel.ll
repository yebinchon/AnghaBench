; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_settunnel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_settunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32 (i32, %struct.addrinfo*, %struct.addrinfo*)*, i32 }
%struct.addrinfo = type opaque
%struct.addrinfo.0 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [48 x i8] c"address family %s does not support tunnel setup\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"error in parsing address string: %s\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"source and destination address families do not match\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, %struct.afswtch*)* @settunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @settunnel(i8* %0, i8* %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca %struct.addrinfo.0*, align 8
  %10 = alloca %struct.addrinfo.0*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %12 = load %struct.afswtch*, %struct.afswtch** %8, align 8
  %13 = getelementptr inbounds %struct.afswtch, %struct.afswtch* %12, i32 0, i32 0
  %14 = load i32 (i32, %struct.addrinfo*, %struct.addrinfo*)*, i32 (i32, %struct.addrinfo*, %struct.addrinfo*)** %13, align 8
  %15 = icmp eq i32 (i32, %struct.addrinfo*, %struct.addrinfo*)* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.afswtch*, %struct.afswtch** %8, align 8
  %18 = getelementptr inbounds %struct.afswtch, %struct.afswtch* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %65

21:                                               ; preds = %4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @getaddrinfo(i8* %22, i32* null, i32* null, %struct.addrinfo.0** %9)
  store i32 %23, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @gai_strerror(i32 %26)
  %28 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @getaddrinfo(i8* %30, i32* null, i32* null, %struct.addrinfo.0** %10)
  store i32 %31, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @gai_strerror(i32 %34)
  %36 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.addrinfo.0*, %struct.addrinfo.0** %9, align 8
  %39 = getelementptr inbounds %struct.addrinfo.0, %struct.addrinfo.0* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.addrinfo.0*, %struct.addrinfo.0** %10, align 8
  %44 = getelementptr inbounds %struct.addrinfo.0, %struct.addrinfo.0* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %42, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %37
  %52 = load %struct.afswtch*, %struct.afswtch** %8, align 8
  %53 = getelementptr inbounds %struct.afswtch, %struct.afswtch* %52, i32 0, i32 0
  %54 = load i32 (i32, %struct.addrinfo*, %struct.addrinfo*)*, i32 (i32, %struct.addrinfo*, %struct.addrinfo*)** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.addrinfo.0*, %struct.addrinfo.0** %9, align 8
  %57 = bitcast %struct.addrinfo.0* %56 to %struct.addrinfo*
  %58 = load %struct.addrinfo.0*, %struct.addrinfo.0** %10, align 8
  %59 = bitcast %struct.addrinfo.0* %58 to %struct.addrinfo*
  %60 = call i32 %54(i32 %55, %struct.addrinfo* %57, %struct.addrinfo* %59)
  %61 = load %struct.addrinfo.0*, %struct.addrinfo.0** %9, align 8
  %62 = call i32 @freeaddrinfo(%struct.addrinfo.0* %61)
  %63 = load %struct.addrinfo.0*, %struct.addrinfo.0** %10, align 8
  %64 = call i32 @freeaddrinfo(%struct.addrinfo.0* %63)
  br label %65

65:                                               ; preds = %51, %16
  ret void
}

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, i32*, %struct.addrinfo.0**) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
