; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/find_interface/extr_find_interface.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/find_interface/extr_find_interface.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_3__, i8*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.hostent = type { i32* }
%struct.sockaddr = type { i32 }

@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"must supply a hostname\00", align 1
@EX_NOHOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot resolve hostname: %s\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@errno = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Route to %s is out %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sockaddr_in, align 8
  %7 = alloca %struct.sockaddr_in, align 8
  %8 = alloca %struct.hostent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %15, i8*** %5, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EX_USAGE, align 4
  %21 = call i32 (i32, i8*, ...) @errx(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call %struct.hostent* @gethostbyname(i8* %24)
  store %struct.hostent* %25, %struct.hostent** %8, align 8
  %26 = load %struct.hostent*, %struct.hostent** %8, align 8
  %27 = icmp ne %struct.hostent* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EX_NOHOST, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i32, i8*, ...) @errx(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %28, %22
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %35 = load %struct.hostent*, %struct.hostent** %8, align 8
  %36 = getelementptr inbounds %struct.hostent, %struct.hostent* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(%struct.TYPE_3__* %34, i32 %39, i32 4)
  %41 = call i8* @htons(i32 60000)
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i8* %41, i8** %42, align 8
  %43 = load i8*, i8** @AF_INET, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 3
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 24, i32* %45, align 8
  %46 = load i32, i32* @INADDR_ANY, align 4
  %47 = call i32 @htonl(i32 %46)
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = call i8* @htons(i32 60000)
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** @AF_INET, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 3
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i32 24, i32* %54, align 8
  %55 = load i32, i32* @PF_INET, align 4
  %56 = load i32, i32* @SOCK_DGRAM, align 4
  %57 = call i32 @socket(i32 %55, i32 %56, i32 0)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %33
  %61 = load i32, i32* @EX_OSERR, align 4
  %62 = call i32 @err(i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %33
  br label %64

64:                                               ; preds = %81, %63
  %65 = load i32, i32* %9, align 4
  %66 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %67 = call i32 @bind(i32 %65, %struct.sockaddr* %66, i32 24)
  store i32 %67, i32* %10, align 4
  %68 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @ntohs(i8* %69)
  %71 = add nsw i32 %70, 1
  %72 = call i8* @htons(i32 %71)
  %73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i64, i64* @errno, align 8
  %79 = load i64, i64* @EADDRINUSE, align 8
  %80 = icmp eq i64 %78, %79
  br label %81

81:                                               ; preds = %77, %74
  %82 = phi i1 [ false, %74 ], [ %80, %77 ]
  br i1 %82, label %64, label %83

83:                                               ; preds = %81
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @EX_OSERR, align 4
  %88 = call i32 @err(i32 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %107, %89
  %91 = load i32, i32* %9, align 4
  %92 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %93 = call i32 @connect(i32 %91, %struct.sockaddr* %92, i32 24)
  store i32 %93, i32* %10, align 4
  %94 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @ntohs(i8* %95)
  %97 = add nsw i32 %96, 1
  %98 = call i8* @htons(i32 %97)
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i8* %98, i8** %99, align 8
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i64, i64* @errno, align 8
  %105 = load i64, i64* @EADDRINUSE, align 8
  %106 = icmp eq i64 %104, %105
  br label %107

107:                                              ; preds = %103, %100
  %108 = phi i1 [ false, %100 ], [ %106, %103 ]
  br i1 %108, label %90, label %109

109:                                              ; preds = %107
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* @EX_OSERR, align 4
  %114 = call i32 @err(i32 %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %109
  store i32 24, i32* %11, align 4
  %116 = load i32, i32* %9, align 4
  %117 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %118 = call i32 @getsockname(i32 %116, %struct.sockaddr* %117, i32* %11)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32, i32* @EX_OSERR, align 4
  %123 = call i32 @err(i32 %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %115
  %125 = load i8**, i8*** %5, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @inet_ntoa(i32 %129)
  %131 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %126, i8* %130)
  ret i32 0
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @ntohs(i8*) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @inet_ntoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
