; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_parse_pasv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_parse_pasv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%d,%d,%d,%d,%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Passive mode address scan failure. Shouldn't happen!\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't parse passive mode string.\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in*, i8*)* @parse_pasv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pasv(%struct.sockaddr_in* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @sscanf(i8* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11)
  %14 = icmp ne i32 %13, 6
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %82

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %53, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 255
  br i1 %22, label %53, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 255
  br i1 %28, label %53, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 255
  br i1 %34, label %53, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = icmp sgt i32 %39, 255
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = icmp sgt i32 %45, 255
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = icmp sgt i32 %51, 255
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17
  %54 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %82

55:                                               ; preds = %50
  %56 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %57 = call i32 @memset(%struct.sockaddr_in* %56, i32 0, i32 12)
  %58 = load i32, i32* @AF_INET, align 4
  %59 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  %62 = shl i32 %61, 24
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 %63, 16
  %65 = or i32 %62, %64
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %65, %67
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @htonl(i32 %70)
  %72 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %10, align 4
  %76 = shl i32 %75, 8
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @htons(i32 %78)
  %80 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %55, %53, %15
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
