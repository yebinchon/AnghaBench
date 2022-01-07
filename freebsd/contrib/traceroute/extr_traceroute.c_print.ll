; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.ip = type { i32, i32 }

@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@as_path = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c" [AS%u]\00", align 1
@asn = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@nflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" %s (%s)\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c" %d bytes to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print(i32* %0, i32 %1, %struct.sockaddr_in* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.ip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %6, align 8
  %11 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32* %15 to %struct.ip*
  store %struct.ip* %16, %struct.ip** %7, align 8
  %17 = load %struct.ip*, %struct.ip** %7, align 8
  %18 = getelementptr inbounds %struct.ip, %struct.ip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 2
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @inet_ntoa(i32 %26)
  %28 = trunc i64 %12 to i32
  %29 = call i32 @strlcpy(i8* %14, i8* %27, i32 %28)
  %30 = load i64, i64* @as_path, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load i32, i32* @asn, align 4
  %34 = load i32, i32* @AF_INET, align 4
  %35 = call i32 @as_lookup(i32 %33, i8* %14, i32 %34)
  %36 = call i32 (i8*, ...) @Printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %3
  %38 = load i64, i64* @nflag, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 (i8*, ...) @Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  br label %48

42:                                               ; preds = %37
  %43 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @inetname(i32 %45)
  %47 = call i32 (i8*, ...) @Printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %46, i8* %14)
  br label %48

48:                                               ; preds = %42, %40
  %49 = load i64, i64* @verbose, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.ip*, %struct.ip** %7, align 8
  %54 = getelementptr inbounds %struct.ip, %struct.ip* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @inet_ntoa(i32 %55)
  %57 = call i32 (i8*, ...) @Printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %52, i8* %56)
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %59)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @inet_ntoa(i32) #2

declare dso_local i32 @Printf(i8*, ...) #2

declare dso_local i32 @as_lookup(i32, i8*, i32) #2

declare dso_local i32 @inetname(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
