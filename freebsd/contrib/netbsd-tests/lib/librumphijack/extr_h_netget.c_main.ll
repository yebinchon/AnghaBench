; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/librumphijack/extr_h_netget.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/librumphijack/extr_h_netget.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"usage: %s address port savefile\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ftruncate savefile\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@GETSTR = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"socket write\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"socket read\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"write file\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [8192 x i8], align 16
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @setprogname(i8* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 4
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = call i8* (...) @getprogname()
  %20 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %21, i32* %3, align 4
  br label %114

22:                                               ; preds = %2
  %23 = load i32, i32* @PF_INET, align 4
  %24 = load i32, i32* @SOCK_STREAM, align 4
  %25 = call i32 @socket(i32 %23, i32 %24, i32 0)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = call i32 @err(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %22
  %32 = call i32 @memset(%struct.sockaddr_in* %7, i32 0, i32 16)
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 16, i32* %33, align 4
  %34 = load i32, i32* @AF_INET, align 4
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @atoi(i8* %38)
  %40 = call i32 @htons(i32 %39)
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @inet_addr(i8* %44)
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 3
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @O_CREAT, align 4
  %52 = load i32, i32* @O_RDWR, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @open(i8* %50, i32 %53, i32 420)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %31
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  %59 = call i32 @err(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %31
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @ftruncate(i32 %61, i32 0)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @EXIT_FAILURE, align 4
  %66 = call i32 @err(i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %9, align 4
  %69 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %70 = call i32 @connect(i32 %68, %struct.sockaddr* %69, i32 16)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @EXIT_FAILURE, align 4
  %74 = call i32 @err(i32 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %9, align 4
  %77 = load i8*, i8** @GETSTR, align 8
  %78 = load i8*, i8** @GETSTR, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = call i32 @write(i32 %76, i8* %77, i32 %79)
  %81 = load i8*, i8** @GETSTR, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @EXIT_FAILURE, align 4
  %86 = call i32 @err(i32 %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %75
  br label %88

88:                                               ; preds = %111, %87
  %89 = load i32, i32* %9, align 4
  %90 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %91 = call i32 @read(i32 %89, i8* %90, i32 8192)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %112

95:                                               ; preds = %88
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* @EXIT_FAILURE, align 4
  %100 = call i32 @err(i32 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %10, align 4
  %103 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @write(i32 %102, i8* %103, i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* @EXIT_FAILURE, align 4
  %110 = call i32 @err(i32 %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %101
  br label %88

112:                                              ; preds = %94
  %113 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %17
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
