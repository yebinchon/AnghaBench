; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/net/extr_t_unix.c_acc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/net/extr_t_unix.c_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i64*, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"guard1 = '%c'\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"guard2 = '%c'\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"len %d != 2\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"sun->sun_family %d != AF_UNIX\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"sun.sun_path[%zu] %d != NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.sockaddr_un, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8 115, i8* %6, align 1
  store i8 115, i8* %4, align 1
  %9 = call i32 @memset(%struct.sockaddr_un* %5, i32 0, i32 24)
  store i32 24, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = bitcast %struct.sockaddr_un* %5 to %struct.sockaddr*
  %12 = call i32 @accept(i32 %10, %struct.sockaddr* %11, i32* %7)
  store i32 %12, i32* %3, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = load i8, i8* %4, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 115
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i8, i8* %4, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i8, i8* %6, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 115
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i8, i8* %6, align 1
  %30 = sext i8 %29 to i32
  %31 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 2
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AF_UNIX, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  store i64 0, i64* %8, align 8
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i64, i64* %8, align 8
  %50 = icmp ult i64 %49, 8
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %59, i64 %64)
  br label %66

66:                                               ; preds = %58, %51
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %48

70:                                               ; preds = %48
  %71 = load i32, i32* %3, align 4
  store i32 %71, i32* %2, align 4
  br label %79

72:                                               ; No predecessors!
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @close(i32 %76)
  br label %78

78:                                               ; preds = %75, %72
  store i32 -1, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %70
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @FAIL(i8*, ...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
